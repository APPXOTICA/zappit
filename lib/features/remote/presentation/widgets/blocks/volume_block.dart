import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Volume block: rocker and, on YouTube, Voice Boost at the right. Other
/// sites keep the same empty slot so the slider length matches.
class VolumeBlock extends ConsumerWidget {
  const VolumeBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = ref.watch(playbackControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final target = ref.watch(targetProvider);
    final voiceBoostAvailable = ref.watch(siteStateControllerProvider.select((s) => s.voiceBoostAvailable));
    final voiceBoostOn = ref.watch(siteStateControllerProvider.select((s) => s.voiceBoostOn));
    final hasVoiceBoost = target?.has(Capability.voiceBoost) ?? false;

    return ZpCluster(
      padding: const EdgeInsets.fromLTRB(AppTokens.space4, 4, AppTokens.space4, 6),
      child: Row(
        children: [
          Expanded(
            child: ZpVolumeRocker(
              volume: view.volume,
              muted: view.muted,
              enabled: view.hasData,
              onMuteToggle: controller.toggleMute,
              onStepDown: () => controller.volumeStep(-5),
              onStepUp: () => controller.volumeStep(5),
              onSlideStart: controller.beginVolumeSlide,
              onSlide: controller.slideVolume,
              onSlideEnd: controller.endVolumeSlide,
            ),
          ),
          const SizedBox(width: AppTokens.space3),
          SizedBox(
            width: AppTokens.targetMin,
            height: AppTokens.targetMin,
            child: hasVoiceBoost
                ? ZpIconButton(
                    size: ZpIconButtonSize.sm,
                    semanticLabel: voiceBoostOn ? 'Voice Boost on' : 'Voice Boost off',
                    onPressed: voiceBoostAvailable ? controller.toggleVoiceBoost : null,
                    child: Icon(
                      voiceBoostOn ? Icons.record_voice_over_rounded : Icons.record_voice_over_outlined,
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
