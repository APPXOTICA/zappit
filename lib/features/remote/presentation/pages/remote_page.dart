import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_mode.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/widgets/blocks/chapter_block.dart';
import 'package:zappit/features/remote/presentation/widgets/blocks/playback_block.dart';
import 'package:zappit/features/remote/presentation/widgets/blocks/playlist_block.dart';
import 'package:zappit/features/remote/presentation/widgets/blocks/site_blocks.dart';
import 'package:zappit/features/remote/presentation/widgets/blocks/speed_block.dart';
import 'package:zappit/features/remote/presentation/widgets/blocks/volume_block.dart';
import 'package:zappit/features/remote/presentation/widgets/glass_overlays.dart';
import 'package:zappit/features/remote/presentation/widgets/mode_views.dart';
import 'package:zappit/features/remote/presentation/widgets/remote_header.dart';
import 'package:zappit/features/remote/presentation/widgets/title_marquee.dart';
import 'package:zappit/features/remote/presentation/widgets/youtube_menu.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/match_height_row.dart';

/// Remote tab. Universal blocks are fixed; the site zone changes with the
/// target's capabilities. Fixed header, bottom-anchored scroll stack.
class RemotePage extends ConsumerWidget {
  const RemotePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final tablet = context.isTablet;
    final side = tablet ? AppTokens.space8 : AppTokens.space4;
    final nothing = ref.watch(remoteModeProvider.select((m) => m == RemoteMode.nothing));

    return Scaffold(
      backgroundColor: t.bgBase,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: tablet ? AppTokens.contentMaxWidth + side * 2 : double.infinity),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(side, AppTokens.space2, side, 0), child: const RemoteHeader()),
                    // The YouTube menu stays fixed under the header (d-pad and
                    // playing screens) so browsing can start over at any time;
                    // the blocks below move without moving it.
                    const _YouTubeMenu(),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) => nothing
                            // Fills the height (sites along the bottom); scrolls
                            // only when the phone is too short for it.
                            ? SingleChildScrollView(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                                  child: const IntrinsicHeight(child: NothingPlayingView()),
                                ),
                              )
                            : SingleChildScrollView(
                                reverse: true,
                                padding: EdgeInsets.fromLTRB(side, AppTokens.space2, side, AppTokens.space2),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(minHeight: constraints.maxHeight - AppTokens.space4),
                                  child: const _RemoteStack(),
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned.fill(child: GlassOverlay()),
        ],
      ),
    );
  }
}

class _YouTubeMenu extends ConsumerWidget {
  const _YouTubeMenu();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(remoteModeProvider);
    final hasMenu = ref.watch(targetProvider.select((t) => t?.has(Capability.browseMenu) ?? false));
    if (!hasMenu || (mode != RemoteMode.home && mode != RemoteMode.playing)) return const SizedBox.shrink();
    final side = context.isTablet ? AppTokens.space8 : AppTokens.space4;
    return Padding(padding: EdgeInsets.fromLTRB(side, AppTokens.space2, side, 0), child: const YouTubeMenuBar());
  }
}

class _RemoteStack extends ConsumerWidget {
  const _RemoteStack();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(remoteModeProvider);
    final title = ref.watch(targetProvider.select((t) => t?.title));
    final playbackTitle = ref.watch(playbackControllerProvider.select((v) => v.snapshot?.title));

    final content = switch (mode) {
      RemoteMode.playing => const _PlayingBlocks(),
      RemoteMode.home => const HomePadView(),
      // Laid out by RemotePage: it fills the height.
      RemoteMode.nothing => const SizedBox.shrink(),
      RemoteMode.waiting => const _Waiting(),
      // Behind the glass: keep the shape of the remote.
      RemoteMode.disconnected || RemoteMode.chooseBrowser => const _PlaceholderBlocks(),
    };

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (mode != RemoteMode.home) TitleMarquee(title: mode == RemoteMode.playing ? (playbackTitle ?? title) : null),
        Padding(
          padding: const EdgeInsets.only(top: AppTokens.space2),
          child: content,
        ),
      ],
    );
  }
}

class _PlayingBlocks extends ConsumerWidget {
  const _PlayingBlocks();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final target = ref.watch(targetProvider);
    final chapterCount = ref.watch(chaptersProvider.select((c) => c.value?.length ?? 0));
    final isSeries = ref.watch(siteStateControllerProvider.select((s) => s.isSeries));
    final hasPlaylist = ref.watch(siteStateControllerProvider.select((s) => s.playlist.available));
    final gap = context.isTablet ? 16.0 : 10.0;

    final shortForm = target?.isShortForm ?? false;
    final blocks = <Widget>[
      // YouTube and Shorts have the menu bar under the header instead.
      if ((target?.has(Capability.home) ?? false) && !(target?.has(Capability.browseMenu) ?? false)) const SiteButtons(),
      if ((target?.has(Capability.playlist) ?? false) && hasPlaylist) const PlaylistBlock(),
      if ((target?.has(Capability.chapters) ?? false) && chapterCount >= 2) const ChapterBlock(),
      if ((target?.has(Capability.episodes) ?? false) && isSeries) const EpisodeButtons(),
      if (target?.has(Capability.captions) ?? false) const CaptionsBlock(),
      const SpeedBlock(),
      const VolumeBlock(),
      if (shortForm) const MatchHeightRow(main: PlaybackBlock(), side: ShortFormRail()) else const PlaybackBlock(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < blocks.length; i++) ...[if (i > 0) SizedBox(height: gap), blocks[i]],
        const ActionButton(),
      ],
    );
  }
}

class _Waiting extends StatelessWidget {
  const _Waiting();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: Center(child: CircularProgressIndicator(strokeWidth: 2, color: context.tokens.inkMuted)),
    );
  }
}

/// Empty block shapes shown under the glass.
class _PlaceholderBlocks extends StatelessWidget {
  const _PlaceholderBlocks();

  @override
  Widget build(BuildContext context) {
    Widget block(double height) => ZpCluster(child: SizedBox(height: height - 32));
    return Column(children: [block(80), const SizedBox(height: 14), block(72), const SizedBox(height: 14), block(260)]);
  }
}
