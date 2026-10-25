import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// YouTube's side menu, flattened: Home · Shorts · Subscriptions · You ·
/// Explore, then Back (the browser's Back on the tab). Shown on YouTube and Shorts pages (capability `browse_menu`),
/// above the video controls and above the d-pad, so the user can start over
/// at any time.
class YouTubeMenuBar extends ConsumerWidget {
  const YouTubeMenuBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasMenu = ref.watch(targetProvider.select((t) => t?.has(Capability.browseMenu) ?? false));
    if (!hasMenu) return const SizedBox.shrink();
    final canGoBack = ref.watch(siteStateControllerProvider.select((s) => s.canGoBack));
    final controller = ref.read(remoteControllerProvider);

    return Row(
      children: [
        _MenuItem(
          label: 'Home',
          icon: const Icon(Icons.home_rounded, size: 28),
          onTap: controller.goHome,
        ),
        _MenuItem(
          label: 'Shorts',
          icon: Image.asset('assets/images/shorts_white.png', width: 26, height: 26),
          onTap: () => controller.goPage(YtPage.shorts),
        ),
        _MenuItem(
          label: 'Subscriptions',
          icon: const Icon(Icons.notifications, size: 28),
          onTap: () => controller.goPage(YtPage.subscriptions),
        ),
        _MenuItem(
          label: 'You',
          icon: const Icon(Icons.person, size: 28),
          onTap: () => _showPagesSheet(context, ref, title: 'You', entries: _youPages),
        ),
        _MenuItem(
          label: 'Explore',
          icon: const Icon(Icons.search, size: 28),
          onTap: () => _showPagesSheet(context, ref, title: 'Explore', entries: _explorePages),
        ),
        _MenuItem(
          label: 'Back',
          icon: const Icon(Icons.arrow_back_rounded, size: 28),
          onTap: canGoBack ? controller.goBack : null,
          onDisabledTap: () => AppNotice.snack('There is no previous page to go back to'),
        ),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({required this.label, required this.icon, required this.onTap, this.onDisabledTap});

  final String label;
  final Widget icon;

  /// Null: greyed out; a tap then calls [onDisabledTap].
  final VoidCallback? onTap;
  final VoidCallback? onDisabledTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final enabled = onTap != null;
    return Expanded(
      child: ZpPressable(
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
      ),
    );
  }
}

typedef _PageEntry = ({String label, String asset, YtPage page});

const List<_PageEntry> _youPages = [
  (label: 'History', asset: 'assets/images/history.png', page: YtPage.history),
  (label: 'Playlists', asset: 'assets/images/playlists.png', page: YtPage.playlists),
  (label: 'Watch Later', asset: 'assets/images/watch_later.png', page: YtPage.watchLater),
  (label: 'Liked Videos', asset: 'assets/images/liked_videos.png', page: YtPage.liked),
  (label: 'Downloads', asset: 'assets/images/downloads.png', page: YtPage.downloads),
];

const List<_PageEntry> _explorePages = [
  (label: 'Music', asset: 'assets/images/music.png', page: YtPage.music),
  (label: 'Hype', asset: 'assets/images/hype.png', page: YtPage.hype),
  (label: 'Live', asset: 'assets/images/live.png', page: YtPage.live),
  (label: 'Gaming', asset: 'assets/images/gaming.png', page: YtPage.gaming),
  (label: 'Courses', asset: 'assets/images/courses.png', page: YtPage.courses),
  (label: 'Podcasts', asset: 'assets/images/podcasts.png', page: YtPage.podcasts),
  (label: 'Memberships', asset: 'assets/images/memberships.png', page: YtPage.memberships),
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
  return ZpSheet.show<void>(
    context,
    title: title,
    builder: (sheetContext) => ZpGroup(
      children: [
        for (final entry in entries)
          ZpListRow(
            title: entry.label,
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
