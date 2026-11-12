import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/analytics/analytics.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart' as config;
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/core/barrel_files/localization.dart';

part 'pro_preview.g.dart';

/// Pro preview (reverse trial): every Pro feature, free and without a
/// subscription, for [proPreviewLength] from the first time the app and the
/// extension are connected. Afterwards the user is back on the free tier and
/// can still take the store's free trial of the yearly plan.
const proPreviewLength = Duration(days: 7);

/// The "ends tomorrow" notice shows in the last day of the preview.
const proPreviewEndingSoon = Duration(days: 1);

/// Firestore `users/{uid}` field: when the preview started (server time).
/// Written only by the Cloud Function `pro_preview_start`, which also keeps
/// hashed sign-in IDs in `proPreviewClaims` so a deleted and re-created
/// account inherits the old start instead of a new preview.
const proPreviewStartedAtField = 'proPreviewStartedAt';

/// Server time minus phone time (RTDB `.info/serverTimeOffset`), so moving the
/// phone's clock back doesn't stretch the preview.
@Riverpod(keepAlive: true)
Stream<int> serverTimeOffset(Ref ref) => FirebaseDatabase.instance.ref('.info/serverTimeOffset').onValue.map((e) {
  final v = e.snapshot.value;
  return v is num ? v.toInt() : 0;
});

DateTime serverNow(Ref ref) => DateTime.now().add(Duration(milliseconds: ref.read(serverTimeOffsetProvider).value ?? 0));

@immutable
class ProPreviewState {
  const ProPreviewState({this.loaded = false, this.startedAt, this.active = false});

  /// The user document has been read: [startedAt] null then means "never started".
  final bool loaded;
  final DateTime? startedAt;
  final bool active;

  DateTime? get endsAt => startedAt?.add(proPreviewLength);
}

@Riverpod(keepAlive: true)
class ProPreview extends _$ProPreview {
  Timer? _expiry;
  Timer? _endingSoon;
  bool _starting = false;

  @override
  ProPreviewState build() {
    final uid = ref.watch(currentUidProvider);
    ref.onDispose(() {
      _expiry?.cancel();
      _endingSoon?.cancel();
    });
    if (uid == null) return const ProPreviewState();

    final sub = _doc(uid).snapshots().listen((snapshot) {
      final raw = snapshot.data()?[proPreviewStartedAtField];
      _apply(raw is Timestamp ? raw.toDate() : null, loaded: true);
    }, onError: (Object e) => debugPrint('pro preview listen failed: $e'));
    ref.onDispose(sub.cancel);

    // The clock offset arrives after the first read: recheck the end then.
    ref.listen(serverTimeOffsetProvider, (previous, next) => _apply(state.startedAt, loaded: state.loaded));
    ref.listen(_connectedProvider, (previous, connected) {
      if (connected) _onConnected();
    });
    return const ProPreviewState();
  }

  DocumentReference<Map<String, dynamic>> _doc(String uid) => FirebaseFirestore.instance.collection(FirebasePaths.users).doc(uid);

  bool get _connected => ref.read(_connectedProvider);

  void _apply(DateTime? startedAt, {required bool loaded}) {
    _expiry?.cancel();
    _endingSoon?.cancel();
    final endsAt = startedAt?.add(proPreviewLength);
    final left = endsAt?.difference(serverNow(ref));
    final active = left != null && left > Duration.zero;
    if (active) {
      _expiry = Timer(left, () => _apply(startedAt, loaded: true));
      final untilSoon = left - proPreviewEndingSoon;
      if (untilSoon > Duration.zero) _endingSoon = Timer(untilSoon, _nudge);
    }
    state = ProPreviewState(loaded: loaded, startedAt: startedAt, active: active);
    if (_connected) _onConnected();
    if (loaded && startedAt != null && !active) unawaited(_endedPopup());
  }

  void _onConnected() {
    if (!state.loaded) return;
    if (state.startedAt == null) {
      unawaited(_startIfNew());
    } else {
      _nudge();
    }
  }

  /// First connection: start the preview (server side, once per person) and
  /// say so. Subscribers don't need it.
  Future<void> _startIfNew() async {
    if (_starting || ref.read(proControllerProvider)) return;
    _starting = true;
    try {
      final result = await FirebaseFunctions.instanceFor(region: config.region).httpsCallable('pro_preview_start').call<Map<Object?, Object?>>();
      final startedAt = result.data['startedAt'];
      if (startedAt is num) _apply(DateTime.fromMillisecondsSinceEpoch(startedAt.toInt()), loaded: true);
      // false: this person already had a preview (another device, or a deleted account).
      if (result.data['started'] == true) {
        unawaited(Analytics.event('pro_preview_start', {}));
        await _announce();
      }
    } catch (e) {
      debugPrint('pro preview start failed: $e');
    } finally {
      _starting = false;
    }
  }

  Future<void> _announce() async {
    final context = rootNavigatorKey.currentContext;
    if (context == null || !context.mounted) return;
    await showOkAlertDialog(
      context: context,
      title: S.of(context).youreConnected,
      message: S.of(context).proPreviewStarted(proPreviewLength.inDays),
      okLabel: S.of(context).gotIt,
    );
  }

  /// The last day, once per account on this phone, while connected and not
  /// subscribed: a top notice.
  void _nudge() {
    final uid = ref.read(currentUidProvider);
    final endsAt = state.endsAt;
    if (uid == null || endsAt == null || !state.active || !_connected || ref.read(proControllerProvider)) return;
    if (endsAt.difference(serverNow(ref)) > proPreviewEndingSoon) return;
    if (!ref.read(preferencesProvider).markOnce('proPreviewEndingSoon:$uid')) return;
    unawaited(Analytics.event('pro_preview_nudge', {'kind': 'ending_soon'}));
    AppNotice.top(
      title: getIt<S>().proPreviewEndsTomorrow,
      message: getIt<S>().tapToKeepPro,
      icon: Icons.auto_awesome_rounded,
      error: false,
      onTap: () => rootNavigatorKey.currentContext?.push(AppRoutes.pro),
    );
  }

  bool _endedShowing = false;
  VoidCallback? _waitForApp;

  /// After the end, once per account on this phone and not subscribed, a
  /// popup (only its buttons close it): when it ends with the app open, or
  /// the next time the app opens. Learn More opens the Pro screen.
  Future<void> _endedPopup() async {
    final uid = ref.read(currentUidProvider);
    if (uid == null || _endedShowing || ref.read(preferencesProvider).isMarked('proPreviewEnded:$uid')) return;
    final router = ref.read(routerProvider);
    // Not over the loading or sign-in screen: wait until the app is in.
    final path = router.routerDelegate.currentConfiguration.uri.path;
    if (path == AppRoutes.loading || path == AppRoutes.login || path.isEmpty) {
      if (_waitForApp != null) return;
      void listener() {
        final now = router.routerDelegate.currentConfiguration.uri.path;
        if (now == AppRoutes.loading || now == AppRoutes.login || now.isEmpty) return;
        router.routerDelegate.removeListener(listener);
        _waitForApp = null;
        unawaited(_endedPopup());
      }
      _waitForApp = listener;
      router.routerDelegate.addListener(listener);
      ref.onDispose(() {
        router.routerDelegate.removeListener(listener);
        _waitForApp = null;
      });
      return;
    }
    _endedShowing = true;
    try {
      // RevenueCat may not have answered yet at launch: subscribers don't get it.
      await ref.read(proControllerProvider.notifier).refresh();
      if (ref.read(proControllerProvider) || ref.read(currentUidProvider) != uid || state.active) return;
      final context = rootNavigatorKey.currentContext;
      if (context == null || !context.mounted) return;
      if (!ref.read(preferencesProvider).markOnce('proPreviewEnded:$uid')) return;
      unawaited(Analytics.event('pro_preview_nudge', {'kind': 'ended'}));
      final s = S.of(context);
      final result = await showOkCancelAlertDialog(
        context: context,
        title: s.proPreviewEndedTitle,
        message: s.proPreviewEndedMessage,
        okLabel: s.learnMore,
        cancelLabel: s.close,
        barrierDismissible: false,
      );
      if (result == OkCancelResult.ok) router.push(AppRoutes.pro);
    } finally {
      _endedShowing = false;
    }
  }
}

/// The app and the selected browser are connected.
@Riverpod(keepAlive: true)
bool _connected(Ref ref) => ref.watch(connectionStatusProvider.select((s) => s.phase == ConnectionPhase.connected));

/// Pro features unlocked: a subscription (or debug Pro) or the Pro preview.
/// Feature gates watch this; the Pro screen and the More banner watch
/// [proControllerProvider] (subscription only) and [proPreviewProvider].
@Riverpod(keepAlive: true)
bool proAccess(Ref ref) => ref.watch(proControllerProvider) || ref.watch(proPreviewProvider.select((p) => p.active));
