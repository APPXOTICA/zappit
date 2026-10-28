import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/sheets/episodes_sheet.dart';
import 'package:zappit/features/remote/presentation/sheets/subtitle_sheet.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Site buttons without a frame, centred: Home and Back (Netflix; YouTube has
/// them in its menu). Back stays on the site, like YouTube's (`canGoBack`).
class SiteButtons extends ConsumerWidget {
  const SiteButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasHome = ref.watch(targetProvider.select((t) => t?.has(Capability.home) ?? false));
    if (!hasHome) return const SizedBox.shrink();
    final canGoBack = ref.watch(siteStateControllerProvider.select((s) => s.canGoBack));
    final controller = ref.read(remoteControllerProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ZpIconButton(
          variant: ZpIconButtonVariant.tonal,
          semanticLabel: 'Home',
          onPressed: controller.goHome,
          child: const Icon(Icons.home_rounded, size: 28),
        ),
        const SizedBox(width: AppTokens.space4),
        ZpIconButton(
          variant: ZpIconButtonVariant.tonal,
          semanticLabel: 'Back',
          onPressed: canGoBack ? controller.goBack : null,
          onDisabledTap: () => AppNotice.snack('There is no previous page to go back to'),
          child: const Icon(Icons.arrow_back_rounded, size: 28),
        ),
      ],
    );
  }
}

/// CC · language · A− size A+ (YouTube, Netflix).
class CaptionsBlock extends ConsumerWidget {
  const CaptionsBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasCaptions = ref.watch(targetProvider.select((t) => t?.has(Capability.captions) ?? false));
    if (!hasCaptions) return const SizedBox.shrink();

    final t = context.tokens;
    final subtitle = ref.watch(siteStateControllerProvider.select((s) => s.subtitle));
    final controller = ref.read(remoteControllerProvider);
    final available = subtitle.available;
    final sizeEnabled = available && subtitle.enabled;
    final size = subtitle.sizePercent;

    return ZpCluster(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          ZpIconButton(
            semanticLabel: subtitle.enabled ? 'Captions on' : 'Captions off',
            onPressed: available ? controller.toggleCc : null,
            onDisabledTap: _noSubtitles,
            child: Icon(
              subtitle.enabled && available ? Icons.closed_caption : Icons.closed_caption_off_outlined,
              size: 30,
            ),
          ),
          ZpIconButton(
            semanticLabel: 'Caption language',
            onPressed: available && subtitle.tracks.isNotEmpty ? () => showSubtitleSheet(context, ref) : null,
            onDisabledTap: _noSubtitles,
            child: const Icon(Icons.translate_rounded, size: 28),
          ),
          const Spacer(),
          ZpIconButton(
            variant: ZpIconButtonVariant.outlined,
            semanticLabel: 'Smaller captions',
            onPressed: sizeEnabled && size > 50 ? () => controller.stepSubtitleSize(size, -1) : null,
            child: Text('A−', style: TextStyle(fontSize: 20, color: sizeEnabled ? t.ink : t.inkDisabled)),
          ),
          SizedBox(
            width: 64,
            child: Text(
              '$size%',
              textAlign: TextAlign.center,
              style: AppText.bodyStrong.merge(AppText.tabular).copyWith(
                    color: sizeEnabled ? t.ink : t.inkDisabled,
                  ),
            ),
          ),
          ZpIconButton(
            variant: ZpIconButtonVariant.outlined,
            semanticLabel: 'Larger captions',
            onPressed: sizeEnabled && size < 400 ? () => controller.stepSubtitleSize(size, 1) : null,
            child: Text('A+', style: TextStyle(fontSize: 20, color: sizeEnabled ? t.ink : t.inkDisabled)),
          ),
        ],
      ),
    );
  }
}

/// Netflix series: Episodes · Next episode (phone). Tablet shows the list inline.
class EpisodeButtons extends ConsumerWidget {
  const EpisodeButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasEpisodes = ref.watch(targetProvider.select((t) => t?.has(Capability.episodes) ?? false));
    final isSeries = ref.watch(siteStateControllerProvider.select((s) => s.isSeries));
    final nextAvailable = ref.watch(siteStateControllerProvider.select((s) => s.nextEpisodeAvailable));
    if (!hasEpisodes || !isSeries) return const SizedBox.shrink();

    if (context.isTablet) return const EpisodeListView(inline: true);

    final controller = ref.read(remoteControllerProvider);
    return Row(
      children: [
        Expanded(
          child: ZpButton(
            label: 'Episodes',
            icon: const Icon(Icons.video_library_rounded),
            textStyle: AppText.bodyStrong.copyWith(fontSize: 16),
            onPressed: () => showEpisodesSheet(context, ref),
          ),
        ),
        const SizedBox(width: AppTokens.space4),
        Expanded(
          child: ZpButton(
            label: 'Next episode',
            icon: const Icon(Icons.skip_next_rounded),
            textStyle: AppText.bodyStrong.copyWith(fontSize: 16),
            onPressed: nextAvailable ? controller.nextEpisode : null,
            onDisabledTap: () => AppNotice.snack('No next episode'),
          ),
        ),
      ],
    );
  }
}

/// Skip Ad / Skip Intro: hidden until the site shows its button, then rises
/// from below playback and pushes the screen up.
class ActionButton extends ConsumerWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skipAd = ref.watch(siteStateControllerProvider.select((s) => s.skipAd));
    final skipIntro = ref.watch(siteStateControllerProvider.select((s) => s.skipIntro));
    final controller = ref.read(remoteControllerProvider);
    final visible = skipAd || skipIntro;

    return AnimatedSize(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      alignment: Alignment.topCenter,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        switchInCurve: Curves.easeOutCubic,
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween(begin: const Offset(0, 0.4), end: Offset.zero).animate(animation),
            child: child,
          ),
        ),
        child: visible
            ? Padding(
                key: ValueKey(skipAd ? 'ad' : 'intro'),
                padding: const EdgeInsets.only(top: AppTokens.space2, bottom: AppTokens.space3),
                child: ZpButton(
                  label: skipAd ? 'Skip Ad' : 'Skip Intro',
                  style: ZpButtonStyle.signal,
                  trailingIcon: const Icon(Icons.skip_next_rounded, size: 26),
                  textStyle: AppText.button.copyWith(fontSize: 18),
                  onPressed: skipAd ? controller.skipAd : controller.skipIntro,
                ),
              )
            : const SizedBox(width: double.infinity, key: ValueKey('none')),
      ),
    );
  }
}

/// Short-form up / down rail beside the playback block. Always enabled; the
/// site decides what happens on the first video.
class ShortFormRail extends ConsumerWidget {
  const ShortFormRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(remoteControllerProvider);
    return SizedBox(
      width: context.isTablet ? 96 : 72,
      child: Column(
        children: [
          Expanded(
            child: ZpDirButton(
              icon: Icons.keyboard_arrow_up_rounded,
              radius: AppTokens.radiusLg,
              semanticLabel: 'Previous video',
              onPressed: controller.prevVideo,
            ),
          ),
          const SizedBox(height: AppTokens.space2),
          Expanded(
            child: ZpDirButton(
              icon: Icons.keyboard_arrow_down_rounded,
              radius: AppTokens.radiusLg,
              semanticLabel: 'Next video',
              onPressed: controller.nextVideo,
            ),
          ),
        ],
      ),
    );
  }
}

void _noSubtitles() => AppNotice.snack('This video has no subtitles');
