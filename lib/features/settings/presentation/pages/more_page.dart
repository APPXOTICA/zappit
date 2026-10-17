import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/providers/remote_config_instance_provider.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/device_utils.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/purchase/purchase_service.dart';
import 'package:zappit/shared/providers/activity_indicator_provider.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// More tab: Pro banner, supported sites, support, account, version.
class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  /// Sites with a dedicated remote (YouTube, Shorts, Netflix, TikTok, Reels, Web).
  static const supportedSiteCount = 6;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final isPro = ref.watch(proControllerProvider);

    return Scaffold(
      backgroundColor: t.bgBase,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space2, AppTokens.space4, AppTokens.space8),
              children: [
                if (!isPro) ...[
                  ZpUpgradeBanner(
                    title: Strings.appTitlePro,
                    subtitle: 'Unlock every dedicated remote',
                    cta: 'Upgrade',
                    onTap: () => context.push(AppRoutes.pro),
                  ),
                  const SizedBox(height: AppTokens.space6),
                ],
                const ZpSectionTitle('Zappit'),
                ZpGroup(children: [
                  ZpListRow(
                    title: 'Supported sites',
                    detail: '$supportedSiteCount',
                    showChevron: true,
                    onTap: () => _openWeb(context, 'Supported sites', supportedSitesUrl),
                  ),
                ]),
                const SizedBox(height: AppTokens.space6),
                const ZpSectionTitle('Support'),
                ZpGroup(children: [
                  ZpListRow(
                    title: 'Tutorial',
                    showChevron: true,
                    onTap: () => _openWeb(context, 'Tutorial', tutorialUrl),
                  ),
                  ZpListRow(title: 'Contact us', onTap: () => _contactUs(ref)),
                  ZpListRow(title: 'Tell a friend', onTap: () => _tellAFriend(context)),
                  ZpListRow(title: 'Rate Zappit', onTap: _rate),
                ]),
                const SizedBox(height: AppTokens.space6),
                const ZpSectionTitle('Account'),
                ZpGroup(children: [
                  if (isPro)
                    ZpListRow(
                      title: 'Manage subscription',
                      detail: Strings.appTitlePro,
                      showChevron: true,
                      onTap: ref.read(purchaseServiceProvider).openCustomerCenter,
                    ),
                  ZpListRow(title: 'Log out', onTap: () => _logout(context, ref)),
                  ZpListRow(title: 'Delete account', danger: true, onTap: () => _deleteAccount(context, ref)),
                ]),
                const SizedBox(height: AppTokens.space4),
                const _VersionFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openWeb(BuildContext context, String title, String url) {
    context.push(AppRoutes.webView, extra: WebViewArgs(title: title, url: url));
  }

  /// Same as sssurf: mail client with app version and device in the body.
  Future<void> _contactUs(WidgetRef ref) async {
    final info = await PackageInfo.fromPlatform();
    final config = await ref.read(remoteConfigInstanceProvider.future);
    final email = config.getString(Strings.supportEmailKey);
    final device = await DeviceUtils.deviceInfo();
    final body = "\n\n\n\n\n\n\n\n\n\nPlease don't delete the info below.\n"
        '(${Strings.appTitle} v${info.version}  |  $device)';
    final uri = Uri.parse('mailto:$email?body=${Uri.encodeComponent(body)}');
    try {
      await launchUrl(uri);
    } catch (e) {
      debugPrint('EMAIL LAUNCH FAILED : $e');
    }
  }

  Future<void> _tellAFriend(BuildContext context) async {
    final text = '${Strings.appTitle}\n${getIt<S>().shareContent}\n\n$shareAppUrl';
    final box = context.findRenderObject() as RenderBox?;
    await SharePlus.instance.share(ShareParams(
      text: text,
      sharePositionOrigin: box == null ? null : box.localToGlobal(Offset.zero) & box.size,
    ));
  }

  void _rate() => InAppReview.instance.openStoreListing(appStoreId: appStoreId);

  Future<void> _logout(BuildContext context, WidgetRef ref) async {
    final s = getIt<S>();
    final result = await showOkCancelAlertDialog(
      context: context,
      title: s.logout,
      message: s.logoutMessage,
      okLabel: s.logout,
      cancelLabel: s.cancel,
      isDestructiveAction: true,
    );
    if (result != OkCancelResult.ok) return;
    await ref.read(authStateProvider.notifier).signOut();
  }

  Future<void> _deleteAccount(BuildContext context, WidgetRef ref) async {
    final s = getIt<S>();
    final result = await showOkCancelAlertDialog(
      context: context,
      title: s.deleteAccount,
      message: s.deleteAccountMessage,
      okLabel: s.delete,
      cancelLabel: s.cancel,
      isDestructiveAction: true,
    );
    if (result != OkCancelResult.ok) return;

    final indicator = ref.read(activityIndicatorProvider.notifier);
    indicator.show(s.deletingAccount);
    try {
      await ref.read(authStateProvider.notifier).deleteAccount();
    } finally {
      indicator.hide();
    }
  }
}

class _VersionFooter extends StatelessWidget {
  const _VersionFooter();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        final version = snapshot.data?.version;
        return Text(
          version == null ? ' ' : '${Strings.appTitle} $version',
          textAlign: TextAlign.center,
          style: AppText.body.copyWith(color: context.tokens.inkMuted),
        );
      },
    );
  }
}
