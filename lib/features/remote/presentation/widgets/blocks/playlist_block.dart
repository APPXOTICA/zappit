import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/sheets/playlist_sheet.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// YouTube playlist: Playlist · Next video · Shuffle · Repeat, icons only,
/// in one full-width box with the playlist's name on its top line.
class PlaylistBlock extends ConsumerWidget {
  const PlaylistBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(siteStateControllerProvider.select((s) => s.playlist));
    if (!playlist.available) return const SizedBox.shrink();
    final controller = ref.read(remoteControllerProvider);
    final t = context.tokens;
    final title = playlist.title?.isNotEmpty == true ? playlist.title! : 'Playlist';

    final box = ZpCluster(
      padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ZpIconButton(
            semanticLabel: 'Playlist',
            onPressed: () => showPlaylistSheet(context, ref),
            child: const ZpImageIcon('assets/images/playlists.png', size: 28),
          ),
          ZpIconButton(
            semanticLabel: 'Next video',
            onPressed: playlist.hasNext ? controller.nextVideo : null,
            onDisabledTap: () => AppNotice.snack('This is the last video in the playlist'),
            child: const Icon(Icons.skip_next_rounded, size: 30),
          ),
          ZpIconButton(
            semanticLabel: playlist.shuffle ? 'Shuffle on' : 'Shuffle off',
            onPressed: playlist.canShuffle ? () => controller.setShuffle(!playlist.shuffle) : null,
            onDisabledTap: () => AppNotice.snack(
              playlist.infinite
                  ? "This playlist keeps playing new videos endlessly, so it can't be shuffled"
                  : "This playlist can't be shuffled",
            ),
            // Icons.shuffle_on draws as a plain white square on iOS; the sharp variant doesn't.
            child: Icon(playlist.shuffle ? Icons.shuffle_on_sharp : Icons.shuffle, size: 28),
          ),
          ZpIconButton(
            semanticLabel: playlist.loop ? 'Repeat on' : 'Repeat off',
            onPressed: playlist.canLoop ? () => controller.setPlaylistLoop(!playlist.loop) : null,
            onDisabledTap: () => AppNotice.snack(
              playlist.infinite
                  ? "This playlist keeps playing new videos endlessly, so it can't be repeated"
                  : "This playlist can't be repeated",
            ),
            child: Icon(playlist.loop ? Icons.repeat_on : Icons.repeat, size: 28),
          ),
        ],
      ),
    );

    // The name sits on the box's top line, like a legend.
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(padding: const EdgeInsets.only(top: _pillHeight / 2), child: box),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              height: _pillHeight,
              constraints: const BoxConstraints(maxWidth: 260),
              padding: const EdgeInsets.symmetric(horizontal: AppTokens.space3),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: t.surface100,
                borderRadius: BorderRadius.circular(_pillHeight / 2),
                border: Border.all(color: t.hairline),
              ),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppText.caption.copyWith(color: t.inkMuted),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

const double _pillHeight = 24;
