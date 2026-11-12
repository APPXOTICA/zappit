import 'dart:async';

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
/// No inertia. Dimmed and inert while playing, for free users, and during ads.
class FrameDial extends ConsumerStatefulWidget {
  const FrameDial({super.key, required this.width});

  final double width;

  @override
  ConsumerState<FrameDial> createState() => _FrameDialState();
}

class _FrameDialState extends ConsumerState<FrameDial> {
  /// How far the ticks have moved (drawing only).
  double _offset = 0;

  /// Drag distance not yet a whole frame.
  double _carry = 0;

  void _step(int frames) {
    unawaited(HapticFeedback.selectionClick());
    ref.read(remoteControllerProvider).stepFrames(frames);
  }

  void _drag(DragUpdateDetails details) {
    final dx = details.delta.dx;
    setState(() => _offset += dx);
    _carry += dx;
    var frames = 0;
    // Like scrolling a timeline: content moving right shows earlier frames.
    while (_carry >= _tick) {
      _carry -= _tick;
      frames--;
    }
    while (_carry <= -_tick) {
      _carry += _tick;
      frames++;
    }
    if (frames != 0) _step(frames);
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
    final controller = ref.read(remoteControllerProvider);

    return Semantics(
      label: S.of(context).frameByFrame,
      enabled: enabled,
      onIncrease: enabled ? () => _step(1) : null,
      onDecrease: enabled ? () => _step(-1) : null,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onHorizontalDragStart: enabled ? (_) => _carry = 0 : null,
        onHorizontalDragUpdate: enabled ? _drag : null,
        onHorizontalDragEnd: enabled ? (_) => controller.flushFrames() : null,
        onHorizontalDragCancel: enabled ? controller.flushFrames : null,
        child: AnimatedOpacity(
          opacity: enabled ? 1 : 0.35,
          duration: const Duration(milliseconds: 200),
          child: Container(
            width: widget.width,
            height: 40,
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
