import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// Zappit Pro paywall. Screen only: purchases are wired to RevenueCat after
/// feature testing, so Subscribe / Restore show a notice for now.
class ProPage extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final isPro = ref.watch(proControllerProvider);

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
                          for (final f in features)
                            ZpListRow(title: f, minHeight: 50, leading: Icon(Icons.check_rounded, color: t.inkMuted)),
                        ],
                      ),
                      const SizedBox(height: AppTokens.space4),
                      ZpCluster(
                        child: Column(
                          children: [
                            Text('Subscription', style: AppText.label.copyWith(color: t.inkMuted)),
                            const SizedBox(height: 4),
                            Text('[PRICE] / [PERIOD]', style: AppText.heading.copyWith(fontSize: 22, color: t.ink)),
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
                        label: isPro ? "You're Pro" : 'Subscribe',
                        style: ZpButtonStyle.accent,
                        onPressed: isPro ? null : () => AppNotice.snack('Purchases are coming soon'),
                      ),
                      const SizedBox(height: AppTokens.space4),
                      ZpLinkText('Restore purchases', onTap: () => AppNotice.snack('Purchases are coming soon')),
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
