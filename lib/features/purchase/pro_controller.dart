import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/features/purchase/purchase_service.dart';

part 'pro_controller.g.dart';

/// Whether the user has Zappit Pro: the RevenueCat `zappit_pro` entitlement.
///
/// RevenueCat pushes every change (purchase, restore, renewal, expiry,
/// logIn/logOut on account switch) through the customer info listener, so
/// callers just watch this. Debug builds can force Pro from the Pro screen.
@Riverpod(keepAlive: true)
class ProController extends _$ProController {
  bool _entitled = false;

  @override
  bool build() {
    void listener(CustomerInfo info) => _setEntitled(hasPro(info));
    Purchases.addCustomerInfoUpdateListener(listener);
    ref.onDispose(() => Purchases.removeCustomerInfoUpdateListener(listener));
    unawaited(refresh());
    return _entitled || _debugPro;
  }

  Future<void> refresh() async {
    final info = await ref.read(purchaseServiceProvider).customerInfo();
    if (info != null) _setEntitled(hasPro(info));
  }

  /// Debug builds only.
  void setDebugPro(bool on) {
    if (!kDebugMode) return;
    ref.read(preferencesProvider).setDebugPro(on);
    state = _entitled || on;
  }

  bool get _debugPro => kDebugMode && ref.read(preferencesProvider).debugPro;

  void _setEntitled(bool entitled) {
    _entitled = entitled;
    state = entitled || _debugPro;
  }
}
