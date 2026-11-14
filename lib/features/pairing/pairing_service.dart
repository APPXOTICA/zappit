import 'dart:async';

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
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/features/pairing/phone_identity.dart';
import 'package:zappit/features/purchase/purchase_service.dart';
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

  /// Claims with the busy overlay and says what went wrong.
  Future<PairResult> claimWithFeedback(String code) async {
    final indicator = _ref.read(activityIndicatorProvider.notifier);
    indicator.show(null);
    final PairResult result;
    try {
      result = await claim(code);
    } finally {
      indicator.hide();
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
    String? pairedUid;
    ref.listen(phonePairedProvider, (previous, next) {
      final uid = ref.read(currentUidProvider);
      final paired = next.value;
      if (paired == true) {
        pairedUid = uid;
      } else if (paired == false && uid != null && pairedUid == uid) {
        pairedUid = null;
        unawaited(ref.read(pairingServiceProvider).onRemoved(uid));
      }
    });

    ref.listen(currentUidProvider, (previous, uid) => _watchNotices(uid), fireImmediately: true);

    final links = AppLinks().uriLinkStream.listen((uri) {
      final code = pairingCodeFrom(uri.toString());
      if (code != null) unawaited(ref.read(pairingServiceProvider).claimWithFeedback(code));
    }, onError: (Object e) => debugPrint('app link failed: $e'));
    ref.onDispose(links.cancel);
    ref.onDispose(() => _notices?.cancel());
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
      final names = raw.whereType<String>().toSet().join(', ');
      AppNotice.top(title: getIt<S>().browsersDisconnected(names), icon: Icons.link_off_rounded);
      unawaited(doc.update({'disconnectedBrowsers': FieldValue.delete()}).catchError((Object e) => debugPrint('notice clear failed: $e')));
    }, onError: (Object e) => debugPrint('notice listen failed: $e'));
  }
}
