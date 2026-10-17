import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:zappit/core/analytics/analytics.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart';

part 'purchase_service.g.dart';

/// RevenueCat entitlement that unlocks Pro features.
const proEntitlementId = 'zappit_pro';

/// Store product of the yearly subscription (App Store Connect / Play Console).
const yearlyProductId = 'yearly';

bool hasPro(CustomerInfo info) => info.entitlements.active.containsKey(proEntitlementId);

enum PurchaseOutcome { purchased, cancelled, pending, failed }

@Riverpod(keepAlive: true)
PurchaseService purchaseService(Ref ref) => PurchaseService();

/// RevenueCat calls. The Firebase UID is the RevenueCat App User ID, so a
/// subscription follows the account across phones and platforms.
class PurchaseService {
  /// Called once from the app initializer, before any other RevenueCat call.
  /// Never throws: the app must start without the store.
  Future<void> configure() async {
    try {
      if (await Purchases.isConfigured) return;
      await Purchases.setLogLevel(kDebugMode ? LogLevel.debug : LogLevel.warn);
      final configuration = PurchasesConfiguration(revenueCatApiKey)
        ..appUserID = FirebaseAuth.instance.currentUser?.uid;
      await Purchases.configure(configuration);
    } catch (e) {
      debugPrint('RevenueCat configure failed: $e');
    }
  }

  /// Links purchases to the signed-in Firebase user (or unlinks on sign-out)
  /// so the next account does not inherit this one's entitlement.
  /// Never throws: a failure must not block sign-in or sign-out.
  Future<void> syncUser(String? uid) async {
    try {
      if (!await Purchases.isConfigured) return;
      if (uid != null) {
        if (await Purchases.appUserID != uid) await Purchases.logIn(uid);
      } else if (!await Purchases.isAnonymous) {
        await Purchases.logOut();
      }
    } on PlatformException catch (e) {
      debugPrint('RevenueCat user sync failed: ${PurchasesErrorHelper.getErrorCode(e)}');
    }
  }

  Future<CustomerInfo?> customerInfo() async {
    try {
      if (!await Purchases.isConfigured) return null;
      return await Purchases.getCustomerInfo();
    } on PlatformException catch (e) {
      debugPrint('RevenueCat customer info failed: ${PurchasesErrorHelper.getErrorCode(e)}');
      return null;
    }
  }

  /// The yearly package of the current offering, or null when the store has
  /// nothing to sell. The reason goes to PostHog: it is the only trace left
  /// when this happens on a reviewer's device.
  Future<Package?> yearlyPackage() async {
    try {
      final offering = (await Purchases.getOfferings()).current;
      final packages = offering?.availablePackages ?? const <Package>[];
      final yearly = packages.where(
        (p) => p.packageType == PackageType.annual || p.storeProduct.identifier.split(':').first == yearlyProductId,
      );
      if (yearly.isEmpty) {
        _reportUnavailable('no_yearly_package', 'offering: ${offering?.identifier}, packages: ${packages.length}');
        return null;
      }
      return yearly.first;
    } on PlatformException catch (e) {
      _reportUnavailable(PurchasesErrorHelper.getErrorCode(e).name, e.message);
      return null;
    }
  }

  /// Every failure ends in a dialog the user dismisses, including a
  /// cancellation: StoreKit sandbox reports its first-attempt failure as
  /// `purchaseCancelledError`, and a vanishing snackbar made App Review think
  /// the purchase was missing (sssurf).
  Future<PurchaseOutcome> purchase(BuildContext context, Package package) async {
    try {
      final result = await Purchases.purchase(PurchaseParams.package(package));
      if (!hasPro(result.customerInfo)) {
        // Paid, but the entitlement is not attached to the product yet.
        if (context.mounted) {
          await _alert(context, 'Purchase not activated', 'Your purchase went through but Pro is not active yet. Try Restore purchases.');
        }
        return PurchaseOutcome.failed;
      }
      unawaited(Analytics.event('pro_purchased', {'product': package.storeProduct.identifier}));
      return PurchaseOutcome.purchased;
    } on PlatformException catch (e) {
      final code = PurchasesErrorHelper.getErrorCode(e);
      final outcome = switch (code) {
        PurchasesErrorCode.purchaseCancelledError => PurchaseOutcome.cancelled,
        PurchasesErrorCode.paymentPendingError => PurchaseOutcome.pending,
        _ => PurchaseOutcome.failed,
      };
      unawaited(Analytics.event('pro_purchase_failed', {'code': code.name}));
      if (context.mounted) {
        await switch (outcome) {
          PurchaseOutcome.cancelled => _alert(context, 'Purchase cancelled', 'Nothing was charged. You can try again anytime.'),
          PurchaseOutcome.pending => _alert(context, 'Payment pending', 'Pro turns on as soon as the store confirms your payment.'),
          _ => _alert(context, 'Purchase failed', _messageFor(code, e)),
        };
      }
      return outcome;
    }
  }

  /// Returns true when Pro is active after restoring.
  Future<bool> restore(BuildContext context) async {
    try {
      final info = await Purchases.restorePurchases();
      final pro = hasPro(info);
      if (!pro && context.mounted) {
        await _alert(context, 'Nothing to restore', 'No active Zappit Pro subscription was found for this store account.');
      }
      return pro;
    } on PlatformException catch (e) {
      if (context.mounted) {
        await _alert(context, 'Restore failed', _messageFor(PurchasesErrorHelper.getErrorCode(e), e));
      }
      return false;
    }
  }

  /// RevenueCat Customer Center: manage or cancel, refund requests (iOS),
  /// restore. Configured in the RevenueCat dashboard.
  Future<void> openCustomerCenter() async {
    try {
      await RevenueCatUI.presentCustomerCenter();
    } on PlatformException catch (e) {
      debugPrint('Customer Center failed: ${e.message}');
    }
  }

  String _messageFor(PurchasesErrorCode code, PlatformException e) => switch (code) {
        PurchasesErrorCode.networkError || PurchasesErrorCode.offlineConnectionError =>
          'Check your internet connection and try again.',
        PurchasesErrorCode.purchaseNotAllowedError => 'Purchases are not allowed on this device or account.',
        PurchasesErrorCode.productAlreadyPurchasedError => 'You already own this subscription. Try Restore purchases.',
        PurchasesErrorCode.storeProblemError => 'The store had a problem. Please try again in a moment.',
        _ => e.message ?? code.name,
      };

  Future<void> _alert(BuildContext context, String title, String message) =>
      showOkAlertDialog(context: context, title: title, message: message, barrierDismissible: false);

  void _reportUnavailable(String code, String? message) {
    debugPrint('Paywall unavailable: $code $message');
    unawaited(Analytics.event('paywall_unavailable', {'code': code, 'message': ?message}));
  }
}
