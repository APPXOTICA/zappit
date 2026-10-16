import 'dart:async';

import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Playback speed presets, with a temporary button for an off-preset rate and
/// a countdown under a Pro preset during the free 5 s trial.
class SpeedBlock extends ConsumerStatefulWidget {
  const SpeedBlock({super.key});

  @override
  ConsumerState<SpeedBlock> createState() => _SpeedBlockState();
}

class _SpeedBlockState extends ConsumerState<SpeedBlock> {
  Timer? _ticker;

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _ensureTicker(int? trialEndsAt) {
    final running = trialEndsAt != null && trialEndsAt > DateTime.now().millisecondsSinceEpoch;
    if (running && _ticker == null) {
      _ticker = Timer.periodic(const Duration(milliseconds: 250), (_) {
        if (mounted) setState(() {});
      });
    } else if (!running) {
      _ticker?.cancel();
      _ticker = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final rate = ref.watch(playbackControllerProvider.select((v) => v.rate));
    final trialEndsAt = ref.watch(playbackControllerProvider.select((v) => v.snapshot?.speedTrialEndsAt));
    final isPro = ref.watch(proControllerProvider);
    final hasData = ref.watch(playbackControllerProvider.select((v) => v.hasData));
    _ensureTicker(trialEndsAt);

    final selected = PlaybackMath.matchingPreset(rate) ?? (rate * 100).round() / 100;
    final now = DateTime.now().millisecondsSinceEpoch;
    final trialLeft = trialEndsAt == null ? 0 : ((trialEndsAt - now) / 1000).ceil();

    final segments = [
      for (final value in PlaybackMath.speedButtons(rate))
        ZpSegment<double>(
          value: value,
          label: PlaybackMath.speedLabel(value),
          dimmed: !isPro && !PlaybackMath.isFreeSpeed(value) && PlaybackMath.matchingPreset(value) != null,
          caption: trialLeft > 0 && value == selected ? '${trialLeft}s' : null,
        ),
    ];

    return ZpSegmentedControl<double>(
      segments: segments,
      selected: selected,
      onChanged: hasData
          ? (value) {
              if (value == selected && PlaybackMath.matchingPreset(value) == null) return;
              ref.read(remoteControllerProvider).setSpeed(value);
            }
          : null,
    );
  }
}
