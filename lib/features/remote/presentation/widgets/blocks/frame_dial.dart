import 'dart:async';

import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/purchase/pro_preview.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Distance between two ticks: one frame.
const _tick = 8.0;

/// Frame-by-frame jog dial (Pro, paused): drag the ticks like a timeline,
/// right for earlier frames, left for later ones; a haptic tick per frame.
/// A flick keeps it turning and slowing down; it always comes to rest with a
/// tick on the centre line. Dimmed and inert while playing, for free users,
/// and during ads.
class FrameDial extends ConsumerStatefulWidget {
  const FrameDial({super.key, required this.width});

  final double width;

  @override
  ConsumerState<FrameDial> createState() => _FrameDialState();
}

/// How quickly a flick slows down (fraction of the speed left after a second).
const _friction = 0.05;

/// Fastest flick, px/s: keeps one flick to roughly a hundred frames.
const _maxFlick = 4000.0;

class _FrameDialState extends ConsumerState<FrameDial> with SingleTickerProviderStateMixin {
  /// How far the ticks have moved. At rest it is a whole number of ticks.
  late final AnimationController _spin = AnimationController.unbounded(vsync: this)..addListener(() => _moveTo(_spin.value));

  /// The frame [_offset] stands on: the nearest tick. Moving right (positive)
  /// shows earlier frames, like scrolling a timeline.
  int _frame = 0;

  /// A finger is on the dial: no spinning or settling meanwhile.
  bool _dragging = false;

  double get _offset => _spin.value;

  @override
  void dispose() {
    _spin.dispose();
    super.dispose();
  }

  void _step(int frames) {
    unawaited(HapticFeedback.selectionClick());
    ref.read(remoteControllerProvider).stepFrames(frames);
  }

  void _moveTo(double offset) {
    final frame = -(offset / _tick).round();
    if (frame != _frame) {
      _step(frame - _frame);
      _frame = frame;
    }
    setState(() {});
  }

  void _dragStart(DragStartDetails _) {
    _dragging = true;
    _spin.stop();
  }

  void _drag(DragUpdateDetails details) => _spin.value = _offset + details.delta.dx;

  /// Keeps turning with the flick's speed, then settles on the nearest tick.
  Future<void> _release(DragEndDetails details) async {
    _dragging = false;
    final velocity = details.velocity.pixelsPerSecond.dx.clamp(-_maxFlick, _maxFlick);
    if (velocity.abs() > 50) {
      await _spin.animateWith(FrictionSimulation(_friction, _offset, velocity)).orCancel.catchError((_) {});
      if (!mounted || _dragging) return;
    }
    await _settle();
  }

  Future<void> _settle() async {
    _dragging = false;
    final target = (_offset / _tick).round() * _tick;
    if ((target - _offset).abs() > 0.01) {
      await _spin.animateTo(target, duration: const Duration(milliseconds: 160), curve: Curves.easeOutBack).orCancel.catchError((_) {});
    }
    if (mounted) ref.read(remoteControllerProvider).flushFrames();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final pro = ref.watch(proAccessProvider);
    final paused = ref.watch(playbackControllerProvider.select((v) => v.paused));
    final hasData = ref.watch(playbackControllerProvider.select((v) => v.hasData));
    final isAd = ref.watch(playbackControllerProvider.select((v) => v.isAd));
    final hasDuration = ref.watch(playbackControllerProvider.select((v) => v.hasDuration));
    final enabled = pro && paused && hasData && hasDuration && !isAd;

    // Playing again (or anything else turning it off) mid-spin: stop on a tick.
    if (!enabled && _spin.isAnimating) {
      _spin.stop();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) unawaited(_settle());
      });
    }

    return Semantics(
      label: S.of(context).frameByFrame,
      enabled: enabled,
      onIncrease: enabled ? () => _step(1) : null,
      onDecrease: enabled ? () => _step(-1) : null,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onHorizontalDragStart: enabled ? _dragStart : null,
        onHorizontalDragUpdate: enabled ? _drag : null,
        onHorizontalDragEnd: enabled ? _release : null,
        onHorizontalDragCancel: enabled ? _settle : null,
        child: AnimatedOpacity(
          opacity: enabled ? 1 : 0.35,
          duration: const Duration(milliseconds: 200),
          child: Container(
            width: widget.width,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppTokens.radiusFull),
              border: Border.all(color: t.hairlineStrong),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppTokens.radiusFull),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Ticks fade out toward the ends.
                  Positioned.fill(
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn,
                      shaderCallback: (rect) => const LinearGradient(
                        colors: [Colors.transparent, Colors.white, Colors.white, Colors.transparent],
                        stops: [0, 0.22, 0.78, 1],
                      ).createShader(rect),
                      child: CustomPaint(painter: _TicksPainter(offset: _offset, color: t.inkMuted)),
                    ),
                  ),
                  Container(
                    width: 2.5,
                    height: 28,
                    decoration: BoxDecoration(color: t.accent, borderRadius: BorderRadius.circular(2)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Short ticks with a long one every fourth, shifted by [offset].
class _TicksPainter extends CustomPainter {
  _TicksPainter({required this.offset, required this.color});

  final double offset;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;
    final mid = size.height / 2;
    final center = size.width / 2;
    // Tick k sits at center + offset + k * _tick.
    final first = ((-center - offset) / _tick).floor();
    final last = ((size.width - center - offset) / _tick).ceil();
    for (var k = first; k <= last; k++) {
      final x = center + offset + k * _tick;
      final half = (k % 4 == 0 ? 0.3 : 0.17) * size.height;
      canvas.drawLine(Offset(x, mid - half), Offset(x, mid + half), paint);
    }
  }

  @override
  bool shouldRepaint(_TicksPainter old) => old.offset != offset || old.color != color;
}
