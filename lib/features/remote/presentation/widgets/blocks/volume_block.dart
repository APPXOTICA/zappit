import 'dart:async';
import 'dart:math' as math;

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
    // Photo post (TikTok): only previous / next work.
    final isPhoto = view.isPhoto;

    final cluster = ZpCluster(
      padding: const EdgeInsets.fromLTRB(AppTokens.space4, 4, AppTokens.space4, 6),
      child: Row(
        children: [
          Expanded(
            child: ZpVolumeRocker(
              volume: view.volume,
              muted: view.muted,
              enabled: view.hasData && !isPhoto,
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
                ? Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ZpIconButton(
                            size: ZpIconButtonSize.sm,
                            semanticLabel: trialLeft != null
                                ? 'Voice Boost trial, $trialLeft seconds left'
                                : (voiceBoostOn ? 'Voice Boost on' : 'Voice Boost off'),
                            onPressed: voiceBoostAvailable ? controller.toggleVoiceBoost : null,
                            onDisabledTap: () => AppNotice.snack(
                              view.isAd
                                  ? "Voice Boost isn't available during an ad"
                                  : "This video doesn't support Voice Boost",
                            ),
                            child: _VoiceBoostIcon(on: voiceBoostAvailable && (voiceBoostOn || trialLeft != null)),
                          ),
                          // Room for the countdown; the block grows a little.
                          AnimatedSize(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeOut,
                            child: SizedBox(width: AppTokens.targetMin, height: trialLeft != null ? 8 : 0),
                          ),
                        ],
                      ),
                      // Trial countdown right under the icon, inside the
                      // button's empty lower edge.
                      if (trialLeft != null)
                        Positioned(
                          top: AppTokens.targetMin - 11,
                          child: Text('${trialLeft}s', style: AppText.label.copyWith(color: context.tokens.accentText)),
                        ),
                    ],
                  )
                : const SizedBox(height: AppTokens.targetMin),
          ),
        ],
      ),
    );
    if (!isPhoto) return cluster;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => AppNotice.snack('Not available for photo posts'),
      child: AbsorbPointer(child: cluster),
    );
  }
}

/// Voice Boost icon. Off: `record_voice_over_outlined` as is. On: the filled
/// head with its sound waves spreading out from the mouth, on a loop, so the
/// state reads from the icon like the other toggles (no accent fill).
class _VoiceBoostIcon extends StatefulWidget {
  const _VoiceBoostIcon({required this.on});

  final bool on;

  @override
  State<_VoiceBoostIcon> createState() => _VoiceBoostIconState();
}

class _VoiceBoostIconState extends State<_VoiceBoostIcon> with SingleTickerProviderStateMixin {
  late final AnimationController _waves = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  );

  @override
  void initState() {
    super.initState();
    if (widget.on) _waves.repeat();
  }

  @override
  void didUpdateWidget(_VoiceBoostIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.on == oldWidget.on) return;
    if (widget.on) {
      _waves.repeat();
    } else {
      _waves
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    _waves.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.on) return const Icon(Icons.record_voice_over_outlined);
    final theme = IconTheme.of(context);
    final size = theme.size ?? AppTokens.iconMd;
    return SizedBox.square(
      dimension: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // The glyph's own waves are cut away; the painter draws moving ones.
          ClipPath(
            clipper: const _HeadOnly(),
            child: Icon(Icons.record_voice_over_rounded, size: size),
          ),
          Positioned.fill(
            child: CustomPaint(
              painter: _WavesPainter(progress: _waves, color: theme.color ?? context.tokens.ink),
            ),
          ),
        ],
      ),
    );
  }
}

/// The head and shoulders of `record_voice_over` (24-unit grid): its waves
/// sit at x ≥ 15 and end at y = 16, right of the shoulders (x ≤ 17).
class _HeadOnly extends CustomClipper<Path> {
  const _HeadOnly();

  @override
  Path getClip(Size size) {
    final k = size.width / 24;
    return Path()
      ..addRect(Rect.fromLTRB(0, 0, 14.8 * k, 14.5 * k))
      ..addRect(Rect.fromLTRB(0, 14.5 * k, 17.2 * k, size.height));
  }

  @override
  bool shouldReclip(_HeadOnly oldClipper) => false;
}

/// Two arcs leaving the mouth one after another, growing and fading out.
class _WavesPainter extends CustomPainter {
  _WavesPainter({required this.progress, required this.color}) : super(repaint: progress);

  final Animation<double> progress;
  final Color color;

  static const _count = 2;

  @override
  void paint(Canvas canvas, Size size) {
    final k = size.width / 24;
    final center = Offset(12.5 * k, 9 * k);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0 * k;
    for (var i = 0; i < _count; i++) {
      final p = (progress.value + i / _count) % 1;
      final radius = (4.5 + 9 * p) * k;
      // Fades in quickly, then out as it spreads.
      final opacity = p < 0.15 ? p / 0.15 : 1 - (p - 0.15) / 0.85;
      paint.color = color.withValues(alpha: color.a * opacity.clamp(0, 1));
      const sweep = math.pi * 0.5;
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -sweep / 2, sweep, false, paint);
    }
  }

  @override
  bool shouldRepaint(_WavesPainter oldDelegate) => oldDelegate.color != color;
}
