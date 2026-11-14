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
import 'package:zappit/core/barrel_files/localization.dart';

part 'purchase_service.g.dart';

/// RevenueCat entitlement that unlocks Pro features.
const proEntitlementId = 'zappit_pro';

/// Store products of the subscriptions (App Store Connect / Play Console).
const yearlyProductId = 'yearly';
const monthlyProductId = 'monthly';

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
      final configuration = PurchasesConfiguration(defaultTargetPlatform == TargetPlatform.iOS ? revenueCatAppleApiKey : revenueCatGoogleApiKey)
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

  /// Resends this store account's receipt to RevenueCat for the current App
  /// User ID, without the store sign-in prompt `restorePurchases` may show
  /// (iOS). After joining the computer's account (pairing), a subscription
  /// restored into the old account moves back (dashboard: transfer to new App
  /// User ID). Never throws.
  Future<void> syncPurchases() async {
    try {
      if (!await Purchases.isConfigured) return;
      await Purchases.syncPurchases();
    } on PlatformException catch (e) {
      debugPrint('RevenueCat sync failed: ${PurchasesErrorHelper.getErrorCode(e)}');
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

  /// The plans of the current offering. [yearly] is null when the store has
  /// nothing to sell (the reason goes to PostHog: it is the only trace left
  /// when this happens on a reviewer's device); [monthly] is optional.
  Future<({Package? monthly, Package? yearly})> proPackages() async {
    try {
      final offering = (await Purchases.getOfferings()).current;
      final packages = offering?.availablePackages ?? const <Package>[];
      Package? find(PackageType type, String productId) => packages.where((p) => p.packageType == type || p.storeProduct.identifier.split(':').first == productId).firstOrNull;
      final yearly = find(PackageType.annual, yearlyProductId);
      if (yearly == null) _reportUnavailable('no_yearly_package', 'offering: ${offering?.identifier}, packages: ${packages.length}');
      return (monthly: find(PackageType.monthly, monthlyProductId), yearly: yearly);
    } on PlatformException catch (e) {
      _reportUnavailable(PurchasesErrorHelper.getErrorCode(e).name, e.message);
      return (monthly: null, yearly: null);
    }
  }

  /// Whether this user can still get [package]'s free trial. On iOS the
  /// product always carries its introductory offer, and App Store decides only
  /// at purchase, so a user who already had the trial would be promised one and
  /// charged in full; ask RevenueCat instead. "Unknown" counts as no: better to
  /// not promise a trial than to charge for a promised one. Play already leaves
  /// the offer out for ineligible accounts.
  Future<bool> trialEligible(Package package) async {
    if (defaultTargetPlatform != TargetPlatform.iOS) return true;
    final id = package.storeProduct.identifier;
    try {
      final result = await Purchases.checkTrialOrIntroductoryPriceEligibility([id]);
      return result[id]?.status == IntroEligibilityStatus.introEligibilityStatusEligible;
    } on PlatformException catch (e) {
      debugPrint('RevenueCat trial eligibility failed: ${PurchasesErrorHelper.getErrorCode(e)}');
      return false;
    }
  }

  /// Every failure ends in a dialog the user dismisses, including a
  /// cancellation: StoreKit sandbox reports its first-attempt failure as
  /// `purchaseCancelledError`, and a vanishing snackbar made App Review think
  /// the purchase was missing (sssurf).
  /// [onStoreDone] runs once the store answers, before any alert, so a
  /// blocking spinner can be removed first (it would sit above the dialog).
  Future<PurchaseOutcome> purchase(BuildContext context, Package package, {VoidCallback? onStoreDone}) async {
    try {
      final result = await Purchases.purchase(PurchaseParams.package(package));
      onStoreDone?.call();
      if (!hasPro(result.customerInfo)) {
        // Paid, but the entitlement is not attached to the product yet.
        if (context.mounted) {
          await _alert(context, S.of(context).purchaseNotActivated, S.of(context).purchaseNotActivatedMessage);
        }
        return PurchaseOutcome.failed;
      }
      unawaited(Analytics.event('pro_purchased', {'product': package.storeProduct.identifier}));
      return PurchaseOutcome.purchased;
    } on PlatformException catch (e) {
      onStoreDone?.call();
      final code = PurchasesErrorHelper.getErrorCode(e);
      final outcome = switch (code) {
        PurchasesErrorCode.purchaseCancelledError => PurchaseOutcome.cancelled,
        PurchasesErrorCode.paymentPendingError => PurchaseOutcome.pending,
        _ => PurchaseOutcome.failed,
      };
      unawaited(Analytics.event('pro_purchase_failed', {'code': code.name}));
      if (context.mounted) {
        await switch (outcome) {
          PurchaseOutcome.cancelled => _alert(context, S.of(context).purchaseCancelled, S.of(context).purchaseCancelledMessage),
          PurchaseOutcome.pending => _alert(context, S.of(context).paymentPending, S.of(context).paymentPendingMessage),
          _ => _alert(context, S.of(context).purchaseFailed, _messageFor(code, e)),
        };
      }
      return outcome;
    }
  }

  /// Returns true when Pro is active after restoring.
  Future<bool> restore(BuildContext context, {VoidCallback? onStoreDone}) async {
    try {
      final info = await Purchases.restorePurchases();
      onStoreDone?.call();
      final pro = hasPro(info);
      if (!pro && context.mounted) {
        await _alert(context, S.of(context).nothingToRestore, S.of(context).nothingToRestoreMessage);
      }
      return pro;
    } on PlatformException catch (e) {
      onStoreDone?.call();
      if (context.mounted) {
        await _alert(context, S.of(context).restoreFailed, _messageFor(PurchasesErrorHelper.getErrorCode(e), e));
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
          getIt<S>().checkConnection,
        PurchasesErrorCode.purchaseNotAllowedError => getIt<S>().purchasesNotAllowed,
        PurchasesErrorCode.productAlreadyPurchasedError => getIt<S>().alreadySubscribed,
        PurchasesErrorCode.storeProblemError => getIt<S>().storeProblem,
        _ => e.message ?? code.name,
      };

  Future<void> _alert(BuildContext context, String title, String message) =>
      showOkAlertDialog(context: context, title: title, message: message, barrierDismissible: false);

  void _reportUnavailable(String code, String? message) {
    debugPrint('Paywall unavailable: $code $message');
    unawaited(Analytics.event('paywall_unavailable', {'code': code, 'message': ?message}));
  }
}
