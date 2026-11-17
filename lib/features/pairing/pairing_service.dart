import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:app_links/app_links.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zappit/core/analytics/analytics.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart' as config;
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/core/realtime/zappit_channel.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/features/pairing/phone_identity.dart';
import 'package:zappit/features/purchase/purchase_service.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/shared/providers/activity_indicator_provider.dart';

part 'pairing_service.g.dart';

/// The QR link the extension shows: `https://zappit.tv/p/<code>`.
String? pairingCodeFrom(String? text) {
  final uri = Uri.tryParse(text?.trim() ?? '');
  if (uri == null || uri.host != 'zappit.tv' || uri.pathSegments.length != 2 || uri.pathSegments.first != 'p') return null;
  final code = uri.pathSegments[1].toUpperCase();
  return RegExp(r'^[A-Z0-9]{6,16}$').hasMatch(code) ? code : null;
}

enum PairResult { connected, codeUsed, codeExpired, codeInvalid, phoneLimit, failed }

/// Firestore `users/{uid}/phones/{phoneId}` of this phone exists: it is paired.
/// Null while loading. The pairing screen shows until this is true.
@Riverpod(keepAlive: true)
Stream<bool> phonePaired(Ref ref) async* {
  final uid = ref.watch(currentUidProvider);
  if (uid == null) return;
  final phone = await PhoneIdentity.load();
  if (phone == null) {
    yield false;
    return;
  }
  yield* FirebaseFirestore.instance
      .collection(FirebasePaths.users)
      .doc(uid)
      .collection(FirebasePaths.phones)
      .doc(phone.phoneId)
      .snapshots()
      .map((s) => s.exists);
}

@Riverpod(keepAlive: true)
PairingService pairingService(Ref ref) => PairingService(ref);

/// QR pairing (design doc 2-1, 3-1). The server decides who joins whom; this
/// phone may have to sign in to the computer's account with the token it
/// returns. A phone that joins another account resends its store receipt
/// there (`syncPurchases`, no store sign-in prompt), so a "Restore Purchases"
/// done before the scan follows it (design doc 4-1).
class PairingService {
  PairingService(this._ref);

  final Ref _ref;
  bool _busy = false;
  bool _leaving = false;

  /// The browser the last QR scan connected, until [_pendingUntil]: the
  /// remote switches to it once it is online on this account (it may still
  /// be moving here). Other browsers' auto-select would otherwise keep the
  /// one the remote had.
  String? _pendingBrowser;
  DateTime? _pendingUntil;

  Future<PairResult> claim(String code) async {
    if (_busy) return PairResult.failed;
    _busy = true;
    try {
      await AuthState.ensureSignedIn();
      final phone = await PhoneIdentity.load();
      if (phone == null || FirebaseAuth.instance.currentUser == null) return PairResult.failed;
      final result = await FirebaseFunctions.instanceFor(region: config.region).httpsCallable('pair_claim').call<Map<Object?, Object?>>({
        'code': code,
        'marker': phone.marker,
        'name': phone.name,
        'platform': phone.platform,
      });
      final token = result.data['token'];
      final uid = result.data['uid'];
      if (token is String && uid is String && uid != FirebaseAuth.instance.currentUser?.uid) {
        await _ref.read(authStateProvider.notifier).signInWithToken(token);
        final purchases = _ref.read(purchaseServiceProvider);
        await purchases.syncUser(uid);
        await purchases.syncPurchases();
      }
      final label = result.data['label'];
      final instanceId = result.data['instanceId'];
      if (instanceId is String && instanceId.isNotEmpty) {
        _pendingBrowser = instanceId;
        _pendingUntil = DateTime.now().add(const Duration(minutes: 2));
        selectPendingBrowser(_ref.read(browserPresenceProvider));
      }
      unawaited(Analytics.event('pair_connected', {'joined': token is String}));
      AppNotice.top(title: getIt<S>().connectedTo(label is String ? label : ''), icon: Icons.check_circle_rounded, error: false);
      return PairResult.connected;
    } on FirebaseFunctionsException catch (e) {
      final details = e.details;
      final reason = details is Map ? details['reason'] : null;
      final outcome = switch (reason) {
        'code_used' => PairResult.codeUsed,
        'code_expired' => PairResult.codeExpired,
        'code_invalid' => PairResult.codeInvalid,
        'phone_limit' => PairResult.phoneLimit,
        _ => PairResult.failed,
      };
      debugPrint('pair_claim failed: ${e.code} $reason ${e.message}');
      unawaited(Analytics.event('pair_failed', {'reason': outcome.name}));
      return outcome;
    } catch (e) {
      debugPrint('pair_claim failed: $e');
      unawaited(Analytics.event('pair_failed', {'reason': 'error'}));
      return PairResult.failed;
    } finally {
      _busy = false;
    }
  }

  /// Claims with the busy overlay and says what went wrong. [overlay] false:
  /// the caller shows its own busy state (the scanner's camera view).
  Future<PairResult> claimWithFeedback(String code, {bool overlay = true}) async {
    final indicator = _ref.read(activityIndicatorProvider.notifier);
    if (overlay) indicator.show(null);
    final PairResult result;
    try {
      result = await claim(code);
    } finally {
      if (overlay) indicator.hide();
    }
    final s = getIt<S>();
    final message = switch (result) {
      PairResult.connected => null,
      PairResult.codeUsed => s.pairCodeUsed,
      PairResult.codeExpired => s.pairCodeExpired,
      PairResult.codeInvalid => s.pairCodeInvalid,
      PairResult.phoneLimit => s.pairPhoneLimit,
      PairResult.failed => s.pairFailed,
    };
    if (message != null) AppNotice.top(title: message);
    return result;
  }

  /// Selects the browser the last scan connected once [browsers] (online on
  /// this account) has it. `PairingWatcher` calls it on every presence change.
  void selectPendingBrowser(List<BrowserInstance> browsers) {
    final id = _pendingBrowser;
    if (id == null) return;
    if (_pendingUntil == null || DateTime.now().isAfter(_pendingUntil!)) {
      _pendingBrowser = null;
      return;
    }
    if (!browsers.any((b) => b.instanceId == id)) return;
    _pendingBrowser = null;
    unawaited(_ref.read(sessionRepositoryProvider).select(id).catchError((Object e) => debugPrint('select after pairing failed: $e')));
  }

  /// More > Phone name: saved on the phone (used by the next pairing too) and,
  /// while paired, in this phone's entry, which the extension lists.
  Future<String?> rename(String name) async {
    final phone = await PhoneIdentity.rename(name);
    if (phone == null) return null;
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null && _ref.read(phonePairedProvider).value == true) {
      try {
        await FirebaseFirestore.instance
            .collection(FirebasePaths.users)
            .doc(uid)
            .collection(FirebasePaths.phones)
            .doc(phone.phoneId)
            .update({'name': phone.name});
      } catch (e) {
        debugPrint('phone rename failed: $e');
      }
    }
    return phone.name;
  }

  /// More > Disconnect this phone: off the account's phone list, then a new,
  /// empty account (the pairing screen shows again).
  Future<void> disconnect() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    final phone = await PhoneIdentity.load();
    _leaving = true;
    try {
      if (uid != null && phone != null) {
        try {
          await FirebaseFirestore.instance.collection(FirebasePaths.users).doc(uid).collection(FirebasePaths.phones).doc(phone.phoneId).delete();
        } catch (e) {
          debugPrint('phone delete failed: $e');
        }
      }
      await _leave(uid);
    } finally {
      _leaving = false;
    }
  }

  /// The extension (or another phone) took this phone off the list.
  Future<void> onRemoved(String uid) async {
    if (_leaving || FirebaseAuth.instance.currentUser?.uid != uid) return;
    _leaving = true;
    try {
      await _leave(uid);
    } finally {
      _leaving = false;
    }
  }

  Future<void> _leave(String? uid) async {
    if (uid != null) await BrowserPresence.clearAppOnline(uid);
    await _ref.read(authStateProvider.notifier).switchToNewAccount();
  }
}

/// App-wide: watches this phone's entry (leaves when it is removed), shows the
/// "disconnected from …" notice once, and claims codes from QR links opened
/// by the phone's camera (Universal Links / App Links).
@Riverpod(keepAlive: true)
class PairingWatcher extends _$PairingWatcher {
  @override
  void build() {
    // The account this phone was last paired in, kept across launches: the
    // phone may have been removed while the app was closed.
    final prefs = ref.read(preferencesProvider).instance;
    ref.listen(phonePairedProvider, (previous, next) {
      final uid = ref.read(currentUidProvider);
      final paired = next.value;
      if (uid == null || paired == null) return;
      final pairedUid = prefs.getString(_pairedUidKey);
      if (paired) {
        if (pairedUid != uid) unawaited(prefs.setString(_pairedUidKey, uid));
      } else if (pairedUid == uid) {
        unawaited(_leaveIfRemoved(uid));
      }
    }, fireImmediately: true);

    ref.listen(currentUidProvider, (previous, uid) => _watchNotices(uid), fireImmediately: true);

    // The browser a scan just connected: the remote moves to it.
    ref.listen(browserPresenceProvider, (previous, browsers) => ref.read(pairingServiceProvider).selectPendingBrowser(browsers));

    final links = AppLinks().uriLinkStream.listen((uri) {
      final code = pairingCodeFrom(uri.toString());
      if (code != null) unawaited(ref.read(pairingServiceProvider).claimWithFeedback(code));
    }, onError: (Object e) => debugPrint('app link failed: $e'));
    ref.onDispose(links.cancel);
    ref.onDispose(() => _notices?.cancel());
  }

  static const _pairedUidKey = 'pairedUid';

  /// Leaves [uid] once the server (not the local cache) says this phone is
  /// off its list. Offline: tried again on the next launch.
  Future<void> _leaveIfRemoved(String uid) async {
    final phone = await PhoneIdentity.load();
    if (phone == null) return;
    try {
      final doc = await FirebaseFirestore.instance
          .collection(FirebasePaths.users)
          .doc(uid)
          .collection(FirebasePaths.phones)
          .doc(phone.phoneId)
          .get(const GetOptions(source: Source.server));
      if (doc.exists) return;
    } catch (e) {
      debugPrint('phone check failed: $e');
      return;
    }
    final prefs = ref.read(preferencesProvider).instance;
    if (prefs.getString(_pairedUidKey) == uid) await prefs.remove(_pairedUidKey);
    await ref.read(pairingServiceProvider).onRemoved(uid);
  }

  StreamSubscription<DocumentSnapshot<Map<String, dynamic>>>? _notices;

  /// `users/{uid}.disconnectedBrowsers`: browsers that moved to another phone
  /// (written by `pair_claim`). One notice, then the field goes.
  void _watchNotices(String? uid) {
    unawaited(_notices?.cancel());
    _notices = null;
    if (uid == null) return;
    final doc = FirebaseFirestore.instance.collection(FirebasePaths.users).doc(uid);
    _notices = doc.snapshots().listen((snapshot) {
      final raw = snapshot.data()?['disconnectedBrowsers'];
      if (raw is! List || raw.isEmpty) return;
      final context = rootNavigatorKey.currentContext;
      if (context == null || !context.mounted) return; // kept for the next start
      final names = raw.whereType<String>().toSet().join(', ');
      // A dialog closed only with OK: a short banner is easy to miss.
      unawaited(showOkAlertDialog(
        context: context,
        title: S.of(context).browsersDisconnected(names),
        message: S.of(context).browsersDisconnectedBody,
        barrierDismissible: false,
      ));
      unawaited(doc.update({'disconnectedBrowsers': FieldValue.delete()}).catchError((Object e) => debugPrint('notice clear failed: $e')));
    }, onError: (Object e) => debugPrint('notice listen failed: $e'));
  }
}
