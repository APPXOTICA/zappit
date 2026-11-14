import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/core/providers/remote_config_instance_provider.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/device_utils.dart';
import 'package:zappit/features/pairing/pairing_service.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/purchase/pro_preview.dart';
import 'package:zappit/shared/providers/activity_indicator_provider.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// More tab: Pro banner, supported sites, support, account, version.
class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final isPro = ref.watch(proControllerProvider);
    final preview = ref.watch(proPreviewProvider);
    final previewEnds = !isPro && preview.active ? preview.endsAt : null;

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
                const SizedBox(height: AppTokens.space8),
                // Pro users keep the entry: the Pro page lists the benefits and manages the subscription.
                ZpUpgradeBanner(
                  title: Strings.appTitlePro,
                  subtitle: isPro
                      ? S.of(context).fullPowerUnlocked
                      : (previewEnds != null ? S.of(context).proPreviewUntil(DateFormat.MMMd().format(previewEnds)) : S.of(context).proBannerSubtitle),
                  cta: isPro ? S.of(context).view : S.of(context).upgrade,
                  onTap: () => context.push(AppRoutes.pro),
                ),
                const SizedBox(height: AppTokens.space6),
                const ZpSectionTitle('Zappit'),
                ZpGroup(children: [
                  ZpListRow(
                    title: S.of(context).supportedSites,
                    detail: '${Site.supported.length}',
                    showChevron: true,
                    onTap: () => context.push(AppRoutes.supportedSites),
                  ),
                ]),
                const SizedBox(height: AppTokens.space6),
                ZpSectionTitle(S.of(context).support),
                ZpGroup(children: [
                  ZpListRow(
                    title: S.of(context).tutorial,
                    showChevron: true,
                    onTap: () => _openWeb(context, S.of(context).tutorial, tutorialUrl),
                  ),
                  ZpListRow(title: S.of(context).contactUs, onTap: () => _contactUs(ref)),
                  ZpListRow(title: S.of(context).tellAFriend, onTap: () => _tellAFriend(context)),
                  ZpListRow(title: S.of(context).rateZappit, onTap: _rate),
                ]),
                const SizedBox(height: AppTokens.space6),
                ZpSectionTitle(S.of(context).account),
                ZpGroup(children: [
                  ZpListRow(title: S.of(context).disconnectPhone, danger: true, onTap: () => _disconnect(context, ref)),
                ]),
                const SizedBox(height: AppTokens.space6),
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
    final body = '\n\n\n\n\n\n\n\n\n\n${getIt<S>().contactUsKeepInfo}\n'
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

  /// This phone leaves the account (design doc, task 5): it gets a new, empty
  /// one and shows the QR screen. The computer and other phones keep going.
  Future<void> _disconnect(BuildContext context, WidgetRef ref) async {
    final s = getIt<S>();
    final result = await showOkCancelAlertDialog(
      context: context,
      title: s.disconnectPhone,
      message: s.disconnectPhoneMessage,
      okLabel: s.disconnect,
      cancelLabel: s.cancel,
      isDestructiveAction: true,
    );
    if (result != OkCancelResult.ok) return;
    final indicator = ref.read(activityIndicatorProvider.notifier);
    indicator.show(null);
    try {
      await ref.read(pairingServiceProvider).disconnect();
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
          style: AppText.caption.copyWith(color: context.tokens.inkMuted),
        );
      },
    );
  }
}
