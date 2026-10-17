import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/purchase/purchase_service.dart';
import 'package:zappit/shared/providers/activity_indicator_provider.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// Zappit Pro paywall (design screen), selling the yearly package of the
/// current RevenueCat offering. Pro users get Customer Center instead.
class ProPage extends ConsumerStatefulWidget {
  const ProPage({super.key});

  static const features = [
    'Unlimited Loop',
    'A-B loop: 5, 10, 20, 50 or ∞ repeats',
    'Sleep Timer',
    'All playback speeds',
    'Voice Control',
    'Voice Boost',
  ];

  @override
  ConsumerState<ProPage> createState() => _ProPageState();
}

class _ProPageState extends ConsumerState<ProPage> {
  Package? _package;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    unawaited(_loadPackage());
  }

  Future<Package?> _loadPackage() async {
    final package = await ref.read(purchaseServiceProvider).yearlyPackage();
    if (mounted) {
      setState(() {
        _package = package;
        _loading = false;
      });
    }
    return package;
  }

  /// Not gated on the package having loaded: a tap retries, and if the store
  /// still has nothing to sell the user is told so instead of facing a
  /// dead button (sssurf App Review rejection).
  Future<void> _subscribe() async {
    final indicator = ref.read(activityIndicatorProvider.notifier);
    indicator.show(null);
    try {
      final package = _package ?? await _loadPackage();
      if (!mounted) return;
      if (package == null) {
        AppNotice.snack('The store is not available right now. Please try again later.', error: true);
        return;
      }
      final outcome = await ref.read(purchaseServiceProvider).purchase(context, package);
      if (outcome == PurchaseOutcome.purchased && mounted) {
        AppNotice.snack('Welcome to ${Strings.appTitlePro}');
        Navigator.of(context).maybePop();
      }
    } finally {
      indicator.hide();
    }
  }

  Future<void> _restore() async {
    final indicator = ref.read(activityIndicatorProvider.notifier);
    indicator.show(null);
    try {
      final pro = await ref.read(purchaseServiceProvider).restore(context);
      if (pro && mounted) {
        AppNotice.snack('${Strings.appTitlePro} restored');
        Navigator.of(context).maybePop();
      }
    } finally {
      indicator.hide();
    }
  }

  String get _priceText {
    final product = _package?.storeProduct;
    if (product == null) return _loading ? '' : 'Unavailable';
    return '${product.priceString} / year';
  }

  /// "7-day free trial" when the product has a free introductory offer.
  String? get _trialText {
    final intro = _package?.storeProduct.introductoryPrice;
    if (intro == null || intro.price > 0) return null;
    final unit = switch (intro.periodUnit) {
      PeriodUnit.day => 'day',
      PeriodUnit.week => 'week',
      PeriodUnit.month => 'month',
      PeriodUnit.year => 'year',
      PeriodUnit.unknown => null,
    };
    return unit == null ? 'Free trial' : '${intro.periodNumberOfUnits}-$unit free trial';
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final isPro = ref.watch(proControllerProvider);
    final trial = _trialText;

    return Scaffold(
      backgroundColor: t.bgBase,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(AppTokens.space2),
                    child: IconButton(
                      tooltip: 'Back',
                      onPressed: () => Navigator.of(context).maybePop(),
                      icon: Icon(Icons.chevron_left_rounded, color: t.ink, size: 32),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                    children: [
                      Center(
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: t.surface100,
                            shape: BoxShape.circle,
                            border: Border.all(color: t.hairlineStrong),
                          ),
                          padding: const EdgeInsets.all(18),
                          child: const ZpImageIcon('assets/images/ic_remote.svg', size: 32),
                        ),
                      ),
                      const SizedBox(height: AppTokens.space4),
                      Text(Strings.appTitlePro, textAlign: TextAlign.center, style: AppText.bigTitle.copyWith(fontSize: 28, color: t.ink)),
                      const SizedBox(height: AppTokens.space2),
                      Text(
                        'Unleash the full power of your remote.',
                        textAlign: TextAlign.center,
                        style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted),
                      ),
                      const SizedBox(height: AppTokens.space4),
                      ZpGroup(
                        children: [
                          for (final f in ProPage.features)
                            ZpListRow(title: f, minHeight: 50, leading: Icon(Icons.check_rounded, color: t.inkMuted)),
                        ],
                      ),
                      const SizedBox(height: AppTokens.space4),
                      ZpCluster(
                        child: Column(
                          children: [
                            Text('Subscription', style: AppText.label.copyWith(color: t.inkMuted)),
                            const SizedBox(height: 4),
                            SizedBox(
                              height: 30,
                              child: _loading
                                  ? const Center(child: SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2)))
                                  : Text(_priceText, style: AppText.heading.copyWith(fontSize: 22, color: t.ink)),
                            ),
                            if (trial != null) Text(trial, style: AppText.body.copyWith(color: t.ink)),
                            const SizedBox(height: 4),
                            Text(
                              'Cancel anytime in your store account',
                              style: AppText.body.copyWith(color: t.inkMuted),
                            ),
                          ],
                        ),
                      ),
                      if (kDebugMode) ...[
                        const SizedBox(height: AppTokens.space4),
                        ZpCluster(
                          padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: 4),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text('Debug: act as Pro', style: AppText.body.copyWith(color: t.inkMuted)),
                              ),
                              Switch(
                                value: isPro,
                                onChanged: (on) => ref.read(proControllerProvider.notifier).setDebugPro(on),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space4, AppTokens.space4, 0),
                  child: Column(
                    children: [
                      ZpButton(
                        label: isPro ? 'Manage subscription' : (trial != null ? 'Start free trial' : 'Subscribe'),
                        style: ZpButtonStyle.accent,
                        onPressed: isPro ? ref.read(purchaseServiceProvider).openCustomerCenter : (_loading ? null : _subscribe),
                      ),
                      const SizedBox(height: AppTokens.space4),
                      ZpLinkText('Restore purchases', onTap: _restore),
                      const SizedBox(height: AppTokens.space4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ZpLinkText(
                            'Privacy Policy',
                            underline: true,
                            style: AppText.body,
                            onTap: () => context.push(
                              AppRoutes.webView,
                              extra: const WebViewArgs(title: 'Privacy Policy', url: privacyPolicyUrl),
                            ),
                          ),
                          Text('  ·  ', style: AppText.body.copyWith(color: t.inkMuted)),
                          ZpLinkText(
                            'Terms of Service',
                            underline: true,
                            style: AppText.body,
                            onTap: () => context.push(
                              AppRoutes.webView,
                              extra: const WebViewArgs(title: 'Terms of Service', url: termsOfServiceUrl),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppTokens.space2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
