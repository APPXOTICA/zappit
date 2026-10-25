import 'dart:async';

import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Volume block: rocker and, on YouTube, Voice Boost at the right. Other
/// sites keep the same empty slot so the slider length matches.
///
/// Free users get a 10 s Voice Boost trial with a countdown on the button;
/// when it runs out the extension turns it off and the Pro screen opens.
class VolumeBlock extends ConsumerStatefulWidget {
  const VolumeBlock({super.key});

  @override
  ConsumerState<VolumeBlock> createState() => _VolumeBlockState();
}

class _VolumeBlockState extends ConsumerState<VolumeBlock> {
  /// Trial start on the phone clock (the browser's clock may differ).
  DateTime? _trialStarted;
  Timer? _ticker;

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _onTrialChange(int? previous, int? next) {
    if (previous == null && next != null) {
      _trialStarted = DateTime.now();
      _ticker ??= Timer.periodic(const Duration(milliseconds: 250), (_) {
        if (mounted) setState(() {});
      });
    } else if (previous != null && next == null) {
      final started = _trialStarted;
      _trialStarted = null;
      _ticker?.cancel();
      _ticker = null;
      // Ran out (not ended early by a tap): offer Pro.
      const full = Duration(seconds: RemoteController.voiceBoostTrialSeconds - 1);
      if (started != null && DateTime.now().difference(started) >= full && !ref.read(proControllerProvider)) {
        unawaited(HapticUtils.hapticFeedback(HapticType.medium));
        ref.read(remoteControllerProvider).openPro();
      }
    }
  }

  int? get _trialLeft {
    final started = _trialStarted;
    if (started == null) return null;
    final left = RemoteController.voiceBoostTrialSeconds - DateTime.now().difference(started).inMilliseconds / 1000;
    return left > 0 ? left.ceil() : null;
  }

  @override
  Widget build(BuildContext context) {
    final view = ref.watch(playbackControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final target = ref.watch(targetProvider);
    final voiceBoostAvailable = ref.watch(siteStateControllerProvider.select((s) => s.voiceBoostAvailable));
    final voiceBoostOn = ref.watch(siteStateControllerProvider.select((s) => s.voiceBoostOn));
    final hasVoiceBoost = target?.has(Capability.voiceBoost) ?? false;
    ref.listen<int?>(siteStateControllerProvider.select((s) => s.voiceBoostTrialEndsAt), _onTrialChange);
    final trialLeft = _trialLeft;

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
            child: hasVoiceBoost
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ZpIconButton(
                        size: ZpIconButtonSize.sm,
                        pressed: trialLeft != null ? true : null,
                        semanticLabel: trialLeft != null
                            ? 'Voice Boost trial, $trialLeft seconds left'
                            : (voiceBoostOn ? 'Voice Boost on' : 'Voice Boost off'),
                        onPressed: voiceBoostAvailable ? controller.toggleVoiceBoost : null,
                        onDisabledTap: () => AppNotice.snack(
                          view.isAd ? "Voice Boost isn't available during an ad" : "This video doesn't support Voice Boost",
                        ),
                        child: Icon(
                          voiceBoostOn || trialLeft != null
                              ? Icons.record_voice_over_rounded
                              : Icons.record_voice_over_outlined,
                        ),
                      ),
                      // Trial countdown under the icon; the block grows to fit it.
                      AnimatedSize(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        child: trialLeft != null
                            ? Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  '${trialLeft}s',
                                  style: AppText.label.copyWith(color: context.tokens.accentText),
                                ),
                              )
                            : const SizedBox(width: AppTokens.targetMin),
                      ),
                    ],
                  )
                : const SizedBox(height: AppTokens.targetMin),
          ),
        ],
      ),
    );
  }
}
