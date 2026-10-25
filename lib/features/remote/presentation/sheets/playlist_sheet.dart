import 'package:extended_image/extended_image.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

Future<void> showPlaylistSheet(BuildContext context, WidgetRef ref) {
  ref.invalidate(playlistItemsProvider);
  final title = ref.read(siteStateControllerProvider).playlist.title;
  return ZpSheet.show<void>(
    context,
    title: title?.isNotEmpty == true ? title! : 'Playlist',
    builder: (sheetContext) => _PlaylistList(onPicked: () => Navigator.of(sheetContext).maybePop()),
  );
}

/// The playlist's entries, the playing one marked and scrolled into view.
/// Tapping an entry plays it.
class _PlaylistList extends ConsumerStatefulWidget {
  const _PlaylistList({required this.onPicked});

  final VoidCallback onPicked;

  @override
  ConsumerState<_PlaylistList> createState() => _PlaylistListState();
}

class _PlaylistListState extends ConsumerState<_PlaylistList> {
  final _currentKey = GlobalKey();
  bool _scrolled = false;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final async = ref.watch(playlistItemsProvider);
    final list = async.value;
    final controller = ref.read(remoteControllerProvider);

    if (list == null || list.items.isEmpty) {
      if (async.isLoading) return ZpGroup(children: [for (var i = 0; i < 6; i++) const _SkeletonRow()]);
      return Padding(
        padding: const EdgeInsets.all(AppTokens.space6),
        child: Center(child: Text("Couldn't load the playlist", style: AppText.body.copyWith(color: t.inkMuted))),
      );
    }

    if (!_scrolled) {
      _scrolled = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final current = _currentKey.currentContext;
        if (current != null && current.mounted) Scrollable.ensureVisible(current, alignment: 0.3);
      });
    }

    return ZpGroup(
      children: [
        for (final item in list.items)
          KeyedSubtree(
            key: item.index == list.index ? _currentKey : null,
            child: ZpListRow(
              title: item.title,
              subtitle: [if (item.index == list.index) 'Playing', item.subtitle].where((s) => s.isNotEmpty).join(' · '),
              leading: _Thumb(url: item.thumbnail),
              minHeight: 64,
              selected: item.index == list.index,
              onTap: () {
                controller.playPlaylistItem(item);
                widget.onPicked();
              },
            ),
          ),
      ],
    );
  }
}

class _Thumb extends StatelessWidget {
  const _Thumb({required this.url});

  final String? url;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final url = this.url;
    return Container(
      width: 72,
      height: 40,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: t.surface300, borderRadius: BorderRadius.circular(AppTokens.radiusSm)),
      child: url != null && url.startsWith('http')
          ? ExtendedImage.network(
              url,
              fit: BoxFit.cover,
              loadStateChanged: (state) => switch (state.extendedImageLoadState) {
                LoadState.loading => const ZpShimmer(radius: 0),
                LoadState.failed => const SizedBox.shrink(),
                LoadState.completed => null,
              },
            )
          : null,
    );
  }
}

/// A playlist row while the entries load: thumbnail and two lines, shimmering.
class _SkeletonRow extends StatelessWidget {
  const _SkeletonRow();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 64),
      padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: AppTokens.space2),
      child: const Row(
        children: [
          ZpShimmer(width: 72, height: 40),
          SizedBox(width: AppTokens.space3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedBox(widthFactor: 0.8, child: ZpShimmer(height: 12)),
                SizedBox(height: AppTokens.space2),
                FractionallySizedBox(widthFactor: 0.45, child: ZpShimmer(height: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
