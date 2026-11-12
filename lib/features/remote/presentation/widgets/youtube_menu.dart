import 'package:zappit/features/purchase/pro_sheet.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// YouTube's side menu, flattened: Home · Shorts · Subscriptions · You ·
/// Explore, then Back (the browser's Back on the tab). Shown on YouTube and Shorts pages (capability `browse_menu`),
/// above the video controls and above the d-pad, so the user can start over
/// at any time.
/// The bar under the header: YouTube's menu (capability `browse_menu`), or
/// Home and Back on TikTok and Reels (capability `home`). Pro (both are Pro
/// capabilities).
bool hasTopMenu(TargetInfo? target) =>
    target != null && (target.has(Capability.browseMenu) || (target.site.isSocialShortForm && target.has(Capability.home)));

class YouTubeMenuBar extends ConsumerWidget {
  const YouTubeMenuBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final target = ref.watch(targetProvider);
    if (!hasTopMenu(target)) return const SizedBox.shrink();
    final canGoBack = ref.watch(siteStateControllerProvider.select((s) => s.canGoBack));
    final controller = ref.read(remoteControllerProvider);

    // TikTok / Reels: Home (the site as it opens) and Back, centred, each as
    // wide as a YouTube menu item.
    if (!target!.has(Capability.browseMenu)) {
      return LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth / 6;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _MenuItem(label: S.of(context).home, icon: const Icon(Icons.home_rounded, size: 28), onTap: controller.goHome, width: width),
              _MenuItem(
                label: S.of(context).back,
                icon: const Icon(Icons.arrow_back_rounded, size: 28),
                onTap: canGoBack ? controller.goBack : null,
                onDisabledTap: () => AppNotice.snack(S.of(context).noPreviousPage),
                width: width,
              ),
            ],
          );
        },
      );
    }

    return Row(
      children: [
        _MenuItem(
          label: S.of(context).home,
          icon: const Icon(Icons.home_rounded, size: 28),
          onTap: controller.goHome,
        ),
        _MenuItem(
          label: S.of(context).ytShorts,
          icon: Image.asset('assets/images/shorts_white.png', width: 26, height: 26),
          onTap: () => controller.goPage(YtPage.shorts),
        ),
        _MenuItem(
          label: S.of(context).ytSubscriptions,
          icon: const Icon(Icons.notifications, size: 28),
          onTap: () => controller.goPage(YtPage.subscriptions),
        ),
        _MenuItem(
          label: S.of(context).ytYou,
          icon: const Icon(Icons.person, size: 28),
          onTap: () => _showPagesSheet(context, ref, title: S.of(context).ytYou, entries: _youPages),
        ),
        _MenuItem(
          label: S.of(context).ytExplore,
          icon: const Icon(Icons.search, size: 28),
          onTap: () => _showPagesSheet(context, ref, title: S.of(context).ytExplore, entries: _explorePages),
        ),
        _MenuItem(
          label: S.of(context).back,
          icon: const Icon(Icons.arrow_back_rounded, size: 28),
          onTap: canGoBack ? controller.goBack : null,
          onDisabledTap: () => AppNotice.snack(S.of(context).noPreviousPage),
        ),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({required this.label, required this.icon, required this.onTap, this.onDisabledTap, this.width});

  final String label;
  final Widget icon;

  /// Fixed width (TikTok / Reels bar); null: an equal share of the row.
  final double? width;

  /// Null: greyed out; a tap then calls [onDisabledTap].
  final VoidCallback? onTap;
  final VoidCallback? onDisabledTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final enabled = onTap != null;
    final item = ZpPressable(
        onTap: onTap ?? onDisabledTap,
        semanticLabel: label,
        builder: (context, pressed) => Container(
          height: 60,
          decoration: BoxDecoration(
            color: pressed && enabled ? t.surface200 : Colors.transparent,
            borderRadius: BorderRadius.circular(AppTokens.radiusMd),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 28, child: Center(child: IconTheme(data: IconThemeData(color: enabled ? t.ink : t.inkDisabled), child: icon))),
              const SizedBox(height: 4),
              // "Subscriptions" shrinks to fit a narrow phone instead of cutting off.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(label, maxLines: 1, style: AppText.caption.copyWith(fontSize: 11, color: enabled ? t.inkMuted : t.inkDisabled)),
                ),
              ),
            ],
          ),
        ),
      );
    final width = this.width;
    return width == null ? Expanded(child: item) : SizedBox(width: width, child: item);
  }
}

typedef _PageEntry = ({String Function(S s) label, String asset, YtPage page});

final List<_PageEntry> _youPages = [
  (label: (s) => s.ytHistory, asset: 'assets/images/history.png', page: YtPage.history),
  (label: (s) => s.ytPlaylists, asset: 'assets/images/playlists.png', page: YtPage.playlists),
  (label: (s) => s.ytWatchLater, asset: 'assets/images/watch_later.png', page: YtPage.watchLater),
  (label: (s) => s.ytLikedVideos, asset: 'assets/images/liked_videos.png', page: YtPage.liked),
  (label: (s) => s.ytDownloads, asset: 'assets/images/downloads.png', page: YtPage.downloads),
];

final List<_PageEntry> _explorePages = [
  (label: (s) => s.ytMusic, asset: 'assets/images/music.png', page: YtPage.music),
  (label: (s) => s.ytHype, asset: 'assets/images/hype.png', page: YtPage.hype),
  (label: (s) => s.ytLive, asset: 'assets/images/live.png', page: YtPage.live),
  (label: (s) => s.ytGaming, asset: 'assets/images/gaming.png', page: YtPage.gaming),
  (label: (s) => s.ytCourses, asset: 'assets/images/courses.png', page: YtPage.courses),
  (label: (s) => s.ytPodcasts, asset: 'assets/images/podcasts.png', page: YtPage.podcasts),
  (label: (s) => s.ytMemberships, asset: 'assets/images/memberships.png', page: YtPage.memberships),
];

/// You / Explore: icon left, name right. Picking one opens that page in the
/// browser; the remote then shows the d-pad for its cards.
Future<void> _showPagesSheet(
  BuildContext context,
  WidgetRef ref, {
  required String title,
  required List<_PageEntry> entries,
}) {
  final controller = ref.read(remoteControllerProvider);
  return showProSheet<void>(
    context,
    title: title,
    builder: (sheetContext) => ZpGroup(
      children: [
        for (final entry in entries)
          ZpListRow(
            title: entry.label(S.of(sheetContext)),
            leading: ZpImageIcon(entry.asset, size: 24),
            onTap: () {
              Navigator.of(sheetContext).maybePop();
              controller.goPage(entry.page);
            },
          ),
      ],
    ),
  );
}
