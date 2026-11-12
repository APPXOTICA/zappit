import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/purchase/pro_preview.dart';
import 'package:zappit/features/purchase/pro_pricing.dart';
import 'package:zappit/features/purchase/trial_reminder.dart';
import 'package:zappit/features/purchase/purchase_service.dart';
import 'package:zappit/shared/providers/activity_indicator_provider.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Zappit Pro paywall (design screen), selling the monthly and yearly packages
/// of the current RevenueCat offering; only the yearly one has a free trial.
/// Pro users get Customer Center instead.
class ProPage extends ConsumerStatefulWidget {
  const ProPage({super.key});

  /// "Dedicated controllers" will open a page that shows them (later).
  /// Sleep Timer is free.
  static List<String> features(S s) => [
        s.proFeatureDedicatedControllers,
        s.proFeatureAllSpeeds,
        s.proFeatureVoiceBoost,
        s.proFeatureFullLoop,
        s.proFeatureAbLoop,
      ];

  @override
  ConsumerState<ProPage> createState() => _ProPageState();
}

class _ProPageState extends ConsumerState<ProPage> {
  Package? _monthly;
  Package? _yearly;
  bool _yearlySelected = true;
  bool _trialEligible = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    unawaited(_loadPackages());
  }

  Future<void> _loadPackages() async {
    final service = ref.read(purchaseServiceProvider);
    final packages = await service.proPackages();
    final yearly = packages.yearly;
    final eligible = yearly != null && await service.trialEligible(yearly);
    if (mounted) {
      setState(() {
        _monthly = packages.monthly;
        _yearly = yearly;
        _trialEligible = eligible;
        _loading = false;
      });
    }
  }

  /// The plan the user picked; yearly when there is no monthly one to pick.
  Package? get _selected => _yearlySelected || _monthly == null ? _yearly : _monthly;

  /// Not gated on the package having loaded: a tap retries, and if the store
  /// still has nothing to sell the user is told so instead of facing a
  /// dead button (sssurf App Review rejection).
  Future<void> _subscribe() async {
    final indicator = ref.read(activityIndicatorProvider.notifier);
    indicator.show(null);
    try {
      if (_selected == null) await _loadPackages();
      final package = _selected;
      if (!mounted) return;
      if (package == null) {
        AppNotice.snack(S.of(context).storeUnavailable, error: true);
        return;
      }
      final trial = package == _yearly ? _trialIntro : null;
      final outcome = await ref.read(purchaseServiceProvider).purchase(context, package, onStoreDone: indicator.hide);
      if (outcome == PurchaseOutcome.purchased && mounted) {
        AppNotice.snack(S.of(context).welcomeToPro(Strings.appTitlePro));
        // Ask while the page is still up; the dialog is the user's answer to
        // "remind me before I'm charged", not an OS prompt out of the blue.
        if (trial != null) await offerTrialReminder(context, package.storeProduct, trialEndDate(trial, DateTime.now()));
        if (mounted) Navigator.of(context).maybePop();
      }
    } finally {
      indicator.hide();
    }
  }

  Future<void> _restore() async {
    final indicator = ref.read(activityIndicatorProvider.notifier);
    indicator.show(null);
    try {
      final pro = await ref.read(purchaseServiceProvider).restore(context, onStoreDone: indicator.hide);
      if (pro && mounted) {
        AppNotice.snack(S.of(context).proRestored(Strings.appTitlePro));
        Navigator.of(context).maybePop();
      }
    } finally {
      indicator.hide();
    }
  }

  /// The free introductory offer of the yearly plan (the monthly one has
  /// none), only when this user can still get it (see `trialEligible`).
  IntroductoryPrice? get _trialIntro {
    if (!_trialEligible) return null;
    final intro = _yearly?.storeProduct.introductoryPrice;
    return intro == null || intro.price > 0 ? null : intro;
  }

  /// "1-week free trial" when the yearly product has a free introductory offer.
  String? _trialText(S s) {
    final intro = _trialIntro;
    if (intro == null) return null;
    final n = intro.periodNumberOfUnits;
    return switch (intro.periodUnit) {
      PeriodUnit.day => s.freeTrialDays(n),
      PeriodUnit.week => s.freeTrialWeeks(n),
      PeriodUnit.month => s.freeTrialMonths(n),
      PeriodUnit.year => s.freeTrialYears(n),
      PeriodUnit.unknown => s.freeTrial,
    };
  }

  /// "Starts with a 7-day free trial, then $29.99/year." (weeks in days).
  static String _trialTerms(S s, IntroductoryPrice intro, String price) {
    final n = intro.periodNumberOfUnits;
    return switch (intro.periodUnit) {
      PeriodUnit.day => s.trialTermsDays(n, price),
      PeriodUnit.week => s.trialTermsDays(7 * n, price),
      PeriodUnit.month => s.trialTermsMonths(n, price),
      PeriodUnit.year => s.trialTermsYears(n, price),
      PeriodUnit.unknown => s.trialTerms(price),
    };
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final isPro = ref.watch(proControllerProvider);
    final preview = ref.watch(proPreviewProvider);
    final s = S.of(context);
    final trial = _trialText(s);
    final yearly = _yearly?.storeProduct;
    final monthly = _monthly?.storeProduct;
    final saving = yearly != null && monthly != null ? savingsPercentOf(monthly, yearly) : null;
    final trialApplies = trial != null && _selected == _yearly;
    final intro = _trialIntro;

    return Scaffold(
      backgroundColor: ZpAppIcon.background,
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
                      tooltip: s.back,
                      onPressed: () => Navigator.of(context).maybePop(),
                      icon: Icon(Icons.chevron_left_rounded, color: t.ink, size: 32),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                    children: [
                      const Center(child: ZpAppIcon(size: 108)),
                      const SizedBox(height: AppTokens.space1),
                      Text(Strings.appTitlePro,
                          textAlign: TextAlign.center,
                          style: TextTheme.of(context).titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: AppTokens.space2),
                      Text(
                        // Opened by the end-of-preview nudge, or any time after it.
                        !isPro && preview.startedAt != null && !preview.active
                            ? s.proPreviewEndedSubtitle(Strings.appTitlePro)
                            : s.proSubtitle,
                        textAlign: TextAlign.center,
                        style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted),
                      ),
                      const SizedBox(height: AppTokens.space8),
                      ZpGroup(
                        children: [
                          for (final f in ProPage.features(s))
                            ZpListRow(title: f, minHeight: 50, leading: Icon(Icons.check_rounded, color: t.inkMuted)),
                        ],
                      ),
                      if (!isPro) ...[
                        // Buying stays open during the preview: the store trial starts right away.
                        if (preview.active && preview.endsAt != null) ...[
                          const SizedBox(height: AppTokens.space8),
                          ZpCluster(
                            padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: AppTokens.space3),
                            child: Row(
                              children: [
                                Icon(Icons.auto_awesome_rounded, color: t.accentText),
                                const SizedBox(width: AppTokens.space3),
                                Expanded(
                                  child: Text(
                                    s.proPreviewActiveBanner(DateFormat.MMMd().format(preview.endsAt!)),
                                    style: AppText.body.copyWith(color: t.ink),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        const SizedBox(height: AppTokens.space6),
                        if (_loading)
                          const SizedBox(height: 120, child: Center(child: SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2))))
                        else if (yearly == null)
                          Center(child: Text(s.unavailable, style: AppText.heading.copyWith(fontSize: 22, color: t.ink)))
                        else ...[
                          _PlanTile(
                            selected: _selected == _yearly,
                            title: s.yearly,
                            subtitle: s.justPerMonth(monthlyEquivalent(yearly)),
                            note: trial,
                            // The store trial's terms on the card, apart from the preview's end date above.
                            detail: intro == null ? null : _trialTerms(s, intro, yearly.priceString),
                            price: s.pricePerYear(yearly.priceString),
                            badge: saving == null ? null : s.savePercent(saving),
                            onTap: () => setState(() => _yearlySelected = true),
                          ),
                          if (monthly != null) ...[
                            const SizedBox(height: AppTokens.space4),
                            _PlanTile(
                              selected: _selected == _monthly,
                              title: s.monthly,
                              price: s.pricePerMonth(monthly.priceString),
                              onTap: () => setState(() => _yearlySelected = false),
                            ),
                          ],
                          const SizedBox(height: AppTokens.space4),
                          Text(
                            s.cancelAnytime,
                            textAlign: TextAlign.center,
                            style: AppText.body.copyWith(color: t.inkMuted),
                          ),
                        ],
                      ],
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
                        label: isPro ? s.manageSubscription : (trialApplies ? s.startFreeTrial : s.subscribe),
                        style: ZpButtonStyle.accent,
                        onPressed: isPro ? ref.read(purchaseServiceProvider).openCustomerCenter : (_loading ? null : _subscribe),
                      ),
                      if (!isPro) ...[
                        const SizedBox(height: AppTokens.space4),
                        ZpLinkText(s.restorePurchases, onTap: _restore),
                      ],
                      const SizedBox(height: AppTokens.space4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ZpLinkText(
                            s.privacyPolicy,
                            underline: true,
                            style: AppText.body,
                            onTap: () => context.push(
                              AppRoutes.webView,
                              extra: WebViewArgs(title: s.privacyPolicy, url: privacyPolicyUrl),
                            ),
                          ),
                          Text('  ·  ', style: AppText.body.copyWith(color: t.inkMuted)),
                          ZpLinkText(
                            s.termsOfService,
                            underline: true,
                            style: AppText.body,
                            onTap: () => context.push(
                              AppRoutes.webView,
                              extra: WebViewArgs(title: s.termsOfService, url: termsOfServiceUrl),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppTokens.space2),
                    ],
                  ),
                ),
                const SizedBox(height: AppTokens.space4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// A plan to pick on the paywall: yearly (with the per-month price, the free
/// trial and the saving) or monthly.
class _PlanTile extends StatelessWidget {
  const _PlanTile({required this.selected, required this.title, required this.price, required this.onTap, this.subtitle, this.note, this.detail, this.badge});

  final bool selected;
  final String title;
  final String price;
  final String? subtitle;

  /// Free-trial line, only on the plan the trial applies to.
  final String? note;

  /// Small print at the bottom of the card (what the plan charges, and when).
  final String? detail;
  final String? badge;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final card = Container(
      padding: EdgeInsets.fromLTRB(AppTokens.space4, note != null ? AppTokens.space6 : AppTokens.space4, AppTokens.space4, AppTokens.space4),
      decoration: BoxDecoration(
        color: t.surface100,
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
        border: Border.all(color: selected ? t.accent : t.hairline, width: selected ? 2 : 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
        children: [
          Icon(selected ? Icons.radio_button_checked_rounded : Icons.radio_button_unchecked_rounded, color: selected ? t.accent : t.inkMuted),
          const SizedBox(width: AppTokens.space3),
          Expanded(child: Text(title, style: AppText.heading.copyWith(fontSize: 20, color: t.ink))),
          const SizedBox(width: AppTokens.space2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (badge != null) Text(badge!, style: AppText.label.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: t.accentText)),
              Text(price, style: AppText.heading.copyWith(fontSize: 20, color: t.ink)),
              if (subtitle != null) Text(subtitle!, style: AppText.body.copyWith(color: t.inkMuted)),
            ],
          ),
        ],
      ),
          if (detail != null) ...[
            const SizedBox(height: AppTokens.space3),
            Text(detail!, textAlign: TextAlign.center, style: AppText.caption.copyWith(color: t.inkMuted)),
          ],
        ],
      ),
    );
    return Semantics(
      button: true,
      selected: selected,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: note == null
            ? card
            // The free-trial pill sits across the top edge of the card.
            : Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    card,
                    Positioned(
                      top: -14,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: FractionallySizedBox(
                          widthFactor: 0.7,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: t.signalLive, borderRadius: BorderRadius.circular(AppTokens.radiusFull)),
                            child: Text(note!, style: AppText.heading.copyWith(fontSize: 16, color: t.onAccent)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
