import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob_stage.dart';

/// Welcome (design OB-0, `gw-*`): tapping play/pause on the phone pauses the
/// laptop's video, a second tap resumes it. Full screen width, 1:0.84, no
/// card; `cq` is 1% of that width. Only the video is clipped (to the screen).
class Ob0Animation extends StatelessWidget {
  const Ob0Animation({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ObStage(
      label: s.onboarding0AnimLabel,
      stillAt: 45,
      aspectRatio: 1 / 0.84,
      framed: false,
      builder: (context, p, cq) => _frame(s, p, cq),
    );
  }

  Widget _frame(S s, double p, double cq) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // `.gw::before`: blue glow, ellipse 80×70 at (10, 8).
        // A 70cq circle stretched to 80cq wide (`closest-side` radial gradient).
        Positioned(
          left: 15 * cq,
          top: 8 * cq,
          width: 70 * cq,
          height: 70 * cq,
          child: Transform.scale(
            scaleX: 80 / 70,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [Color(0x2E3B82F6), Color(0x003B82F6)]),
              ),
            ),
          ),
        ),
        Positioned(left: 5 * cq, top: 6 * cq, width: 70 * cq, height: 44 * cq, child: _laptop(p, cq)),
        Positioned(left: 1 * cq, top: 49.6 * cq, width: 78 * cq, height: 3 * cq, child: _base(cq)),
        Positioned(left: 56 * cq, top: 22 * cq, width: 11 * cq, height: 11 * cq, child: _waves(p)),
        Positioned(left: 63 * cq, top: 26 * cq, width: 30 * cq, height: 57 * cq, child: _phone(s, p, cq)),
      ],
    );
  }

  // ── Laptop ────────────────────────────────────────────────────────────────

  static const _frameColor = Color(0xFF2C2C38);

  Widget _laptop(double p, double cq) {
    final r = Radius.circular(2.4 * cq);
    final rb = Radius.circular(0.8 * cq);
    // Moves only while playing (0–24%, 66–100%), linear.
    final hills = kf(p, [0, 24, 66, 100], [0, -16.55, -16.55, -40], curve: Curves.linear);
    final road = kf(p, [0, 24, 66, 100], [0, -14.9, -14.9, -36], curve: Curves.linear);
    final dim = kf(p, [0, 23.5, 25.5, 65.5, 67.5], [0, 0, .42, .42, 0]);
    final pauseOpacity = kf(p, [0, 23.5, 25.5, 27, 65.5, 66.5], [0, 0, 1, 1, 1, 0]);
    final pauseScale = kf(p, [0, 23.5, 25.5, 27], [.6, .6, 1.08, 1]);
    final playOpacity = kf(p, [0, 65.5, 67, 69, 74], [0, 0, 1, 1, 0]);
    final playScale = kf(p, [0, 65.5, 67, 69, 74], [.6, .6, 1.08, 1, 1.15]);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFF0B0B12),
        border: Border.all(color: _frameColor, width: 0.9 * cq),
        borderRadius: BorderRadius.only(topLeft: r, topRight: r, bottomLeft: rb, bottomRight: rb),
      ),
      child: LayoutBuilder(builder: (context, box) {
        final w = box.maxWidth;
        final h = box.maxHeight;
        return Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1A2558), Color(0xFF0E1430)],
                    stops: [0, .7],
                  ),
                ),
              ),
            ),
            for (final (x, y) in const [(.12, .14), (.30, .28), (.52, .10), (.64, .32), (.08, .40)])
              Positioned(
                left: x * w,
                top: y * h,
                width: 0.7 * cq,
                height: 0.7 * cq,
                child: const DecoratedBox(decoration: BoxDecoration(color: Color(0xB3C7D2FE), shape: BoxShape.circle)),
              ),
            Positioned(
              right: 9 * cq,
              top: 5 * cq,
              width: 8 * cq,
              height: 8 * cq,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F0DC),
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: const Color(0x59F5F0DC), blurRadius: 4 * cq)],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 8 * cq,
              height: 9 * cq,
              child: CustomPaint(painter: _HillsPainter(offset: hills * cq, cq: cq)),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 8.4 * cq,
              child: CustomPaint(painter: _RoadPainter(offset: road * cq, cq: cq)),
            ),
            Positioned(left: 20 * cq, bottom: 4.6 * cq, width: 14 * cq, height: 6 * cq, child: _car(cq)),
            Positioned.fill(child: ColoredBox(color: Colors.black.withValues(alpha: dim))),
            _badge(cq, pauseOpacity, pauseScale, _pauseSvg),
            _badge(cq, playOpacity, playScale, _playSvg),
          ],
        );
      }),
    );
  }

  Widget _car(double cq) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 3 * cq,
          width: 7 * cq,
          bottom: 3.6 * cq,
          height: 2.4 * cq,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFF2563EB),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(1.6 * cq), topRight: Radius.circular(1.8 * cq)),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 1.2 * cq,
          height: 2.8 * cq,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: ObColors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(1.2 * cq),
                topRight: Radius.circular(1.6 * cq),
                bottomLeft: Radius.circular(0.6 * cq),
                bottomRight: Radius.circular(0.6 * cq),
              ),
            ),
          ),
        ),
        for (final x in const [.14, .62])
          Positioned(
            left: x * 14 * cq,
            bottom: 0,
            width: 3 * cq,
            height: 3 * cq,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ObColors.field,
                shape: BoxShape.circle,
                border: Border.all(color: ObColors.dim, width: 0.6 * cq),
              ),
            ),
          ),
        // Headlight beam (`gw-light`): right: -9cq, a narrowing wedge.
        Positioned(
          left: 14 * cq,
          bottom: 1.6 * cq,
          width: 9 * cq,
          height: 2.4 * cq,
          child: ClipPath(
            clipper: const _BeamClipper(),
            child: const DecoratedBox(
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0x73FEF08A), Color(0x00FEF08A)])),
            ),
          ),
        ),
      ],
    );
  }

  /// Pause / play badge in the middle of the video.
  Widget _badge(double cq, double opacity, double scale, String svg) {
    return Center(
      child: Opacity(
        opacity: opacity.clamp(0, 1),
        child: Transform.scale(
          scale: scale,
          child: Container(
            width: 13 * cq,
            height: 13 * cq,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Color(0xB80D0D11), shape: BoxShape.circle),
            child: _icon(svg, 6.4 * cq, ObColors.ink),
          ),
        ),
      ),
    );
  }

  Widget _base(double cq) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3A3A48), Color(0xFF23232D)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.4 * cq),
          topRight: Radius.circular(0.4 * cq),
          bottomLeft: Radius.circular(2 * cq),
          bottomRight: Radius.circular(2 * cq),
        ),
      ),
      child: Stack(
        children: [
          // Notch for opening the lid.
          Positioned(
            left: 32 * cq,
            top: 0,
            width: 14 * cq,
            height: cq,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ObColors.bar,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(cq), bottomRight: Radius.circular(cq)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Signal arcs ──────────────────────────────────────────────────────────

  Widget _waves(double p) {
    final o = [
      kf(p, [0, 17, 18.5, 22, 59, 60.5, 64], [0, 0, 1, 0, 0, 1, 0]),
      kf(p, [0, 18.5, 20, 23.5, 60.5, 62, 65.5], [0, 0, 1, 0, 0, 1, 0]),
      kf(p, [0, 20, 21.5, 25, 62, 63.5, 67], [0, 0, 1, 0, 0, 1, 0]),
    ];
    return CustomPaint(painter: _WavesPainter(o), child: const SizedBox.expand());
  }

  // ── Phone ─────────────────────────────────────────────────────────────────

  Widget _phone(S s, double p, double cq) {
    final btnScale = kf(p, [0, 15, 17, 20, 57, 59, 62], [1, 1, .9, 1, 1, .9, 1]);
    final pauseIc = kf(p, [0, 16.5, 18, 58.5, 60], [1, 1, 0, 0, 1]);
    final pauseIcScale = kf(p, [0, 16.5, 18, 58.5, 60], [1, 1, .6, .6, 1]);
    final playIc = kf(p, [0, 16.5, 18, 58.5, 60], [0, 0, 1, 1, 0]);
    final playIcScale = kf(p, [0, 16.5, 18, 58.5, 60], [.6, .6, 1, 1, .6]);
    final ripple = kf(p, [0, 16, 17, 25, 58, 59, 67], [0, 0, .9, 0, 0, .9, 0]);
    final rippleScale = kf(p, [0, 16, 17, 25, 58, 59, 67], [1, 1, 1, 1.9, 1.9, 1, 1.9]);
    const touchT = <double>[0, 8, 12, 15, 17, 20, 26, 50, 54, 57, 59, 62, 68];
    final touch = kf(p, touchT, [0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0]);
    final touchMove = kf(p, touchT, [1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1]);
    final touchScale = kf(p, touchT, [1, 1, 1, 1, .78, 1, 1, 1, 1, 1, .78, 1, 1]);

    final border = 0.9 * cq;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: ObColors.phone,
        borderRadius: BorderRadius.circular(5 * cq),
        border: Border.all(color: _frameColor, width: border),
        boxShadow: [BoxShadow(color: const Color(0x99000000), offset: Offset(0, 2 * cq), blurRadius: 6 * cq)],
      ),
      child: LayoutBuilder(builder: (context, box) {
        final cx = box.maxWidth / 2;
        Widget centered(double top, double size, Widget child) =>
            Positioned(left: cx - size / 2, top: top, width: size, height: size, child: child);
        return Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            // Dynamic Island.
            Positioned(
              left: cx - 4.5 * cq,
              top: 1.6 * cq,
              width: 9 * cq,
              height: 2.4 * cq,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(color: ObColors.block),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 6.5 * cq,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.8 * cq, vertical: 0.8 * cq),
                  decoration: BoxDecoration(color: ObColors.block, borderRadius: BorderRadius.circular(999)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 0.8 * cq,
                    children: [
                      Container(
                        width: 1.2 * cq,
                        height: 1.2 * cq,
                        decoration: const BoxDecoration(color: ObColors.green, shape: BoxShape.circle),
                      ),
                      Text(
                        s.connected,
                        maxLines: 1,
                        style: obText(cq, 1.9, color: const Color(0xFFD4D4DC), weight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(left: 2 * cq, top: 22.5 * cq, width: 7 * cq, height: 7 * cq, child: _seek(cq, _backSvg)),
            Positioned(right: 2 * cq, top: 22.5 * cq, width: 7 * cq, height: 7 * cq, child: _seek(cq, _fwdSvg)),
            centered(
              20 * cq,
              12 * cq,
              Transform.scale(
                scale: btnScale,
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: ObColors.blue, shape: BoxShape.circle),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: pauseIc.clamp(0, 1),
                        child: Transform.scale(scale: pauseIcScale, child: _icon(_pauseSvg, 5.4 * cq, Colors.white)),
                      ),
                      Opacity(
                        opacity: playIc.clamp(0, 1),
                        child: Transform.scale(scale: playIcScale, child: _icon(_playSvg, 5.4 * cq, Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(left: 3.5 * cq, right: 3.5 * cq, top: 37 * cq, height: 5 * cq, child: _bar(cq)),
            Positioned(left: 3.5 * cq, right: 9 * cq, top: 44 * cq, height: 5 * cq, child: _bar(cq)),
            if (ripple > 0)
              centered(
                20 * cq,
                12 * cq,
                Opacity(
                  opacity: ripple.clamp(0, 1),
                  child: Transform.scale(
                    scale: rippleScale,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: ObColors.blueLight, width: 0.6 * cq),
                      ),
                    ),
                  ),
                ),
              ),
            if (touch > 0)
              centered(
                22.5 * cq,
                7 * cq,
                Opacity(
                  opacity: touch.clamp(0, 1),
                  child: Transform.translate(
                    offset: Offset(3 * cq * touchMove, 6 * cq * touchMove),
                    child: Transform.scale(
                      scale: touchScale,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0x8CF2F2F5),
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xD9FFFFFF), width: 0.4 * cq),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      }),
    );
  }

  Widget _seek(double cq, String svg) => Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: ObColors.block, shape: BoxShape.circle),
        child: _icon(svg, 3.4 * cq, ObColors.muted),
      );

  Widget _bar(double cq) => DecoratedBox(
        decoration: BoxDecoration(color: ObColors.stage, borderRadius: BorderRadius.circular(1.4 * cq)),
      );

  static const _pauseSvg =
      '<svg viewBox="0 0 24 24" fill="#000"><rect x="6.5" y="5" width="3.6" height="14" rx="1.2"/><rect x="13.9" y="5" width="3.6" height="14" rx="1.2"/></svg>';
  static const _playSvg =
      '<svg viewBox="0 0 24 24" fill="#000"><path d="M8 5.6v12.8a1 1 0 0 0 1.5.86l10.2-6.4a1 1 0 0 0 0-1.72L9.5 4.74A1 1 0 0 0 8 5.6z"/></svg>';
  static const _backSvg =
      '<svg viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"><path d="M4 12a8 8 0 1 0 2.4-5.7"/><path d="M4 4v4.5h4.5"/></svg>';
  static const _fwdSvg =
      '<svg viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"><path d="M20 12a8 8 0 1 1-2.4-5.7"/><path d="M20 4v4.5h-4.5"/></svg>';

  static Widget _icon(String svg, double size, Color color) => SvgPicture.string(
        svg,
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
}

/// `gw-hills`: half-ellipse humps, one per 40cq tile, scrolled by [offset].
class _HillsPainter extends CustomPainter {
  const _HillsPainter({required this.offset, required this.cq});

  final double offset;
  final double cq;

  @override
  void paint(Canvas canvas, Size size) {
    final tile = 40 * cq;
    final paint = Paint()..color = const Color(0xFF24305C);
    canvas.clipRect(Offset.zero & size);
    for (var x = offset % tile - tile; x < size.width; x += tile) {
      canvas.drawOval(Rect.fromCenter(center: Offset(x + tile / 2, size.height), width: tile, height: size.height * 2), paint);
    }
  }

  @override
  bool shouldRepaint(_HillsPainter old) => old.offset != offset || old.cq != cq;
}

/// `gw-road`: dark road with 4cq dashes every 9cq, scrolled by [offset].
class _RoadPainter extends CustomPainter {
  const _RoadPainter({required this.offset, required this.cq});

  final double offset;
  final double cq;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = const Color(0xFF16192B));
    final tile = 9 * cq;
    final h = 0.7 * cq;
    final y = (size.height - h) / 2;
    final paint = Paint()..color = const Color(0xFFE9E9F0);
    for (var x = offset % tile - tile; x < size.width; x += tile) {
      canvas.drawRect(Rect.fromLTWH(x, y, 4 * cq, h), paint);
    }
  }

  @override
  bool shouldRepaint(_RoadPainter old) => old.offset != offset || old.cq != cq;
}

/// `clip-path: polygon(0 35%, 100% 0, 100% 100%, 0 65%)`.
class _BeamClipper extends CustomClipper<Path> {
  const _BeamClipper();

  @override
  Path getClip(Size size) => Path()
    ..moveTo(0, size.height * .35)
    ..lineTo(size.width, 0)
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height * .65)
    ..close();

  @override
  bool shouldReclip(_BeamClipper oldClipper) => false;
}

/// `gw-wave`: three arcs facing the laptop, drawn on the 24 grid of the
/// design's SVG (half circles around (12, 12), radius 3.5 / 7.8 / 12). Not an
/// SVG: its viewBox would cut off the outer arc's top and left edges.
class _WavesPainter extends CustomPainter {
  const _WavesPainter(this.opacity);

  final List<double> opacity;

  static const _radii = [3.54, 7.78, 12.02];

  @override
  void paint(Canvas canvas, Size size) {
    final u = size.width / 24;
    final center = Offset(12 * u, 12 * u);
    for (var i = 0; i < 3; i++) {
      final o = opacity[i].clamp(0.0, 1.0);
      if (o <= 0) continue;
      final paint = Paint()
        ..color = ObColors.blueLight.withValues(alpha: o)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.4 * u
        ..strokeCap = StrokeCap.round;
      // From bottom-left, over the top-left, to top-right.
      canvas.drawArc(Rect.fromCircle(center: center, radius: _radii[i] * u), 0.75 * math.pi, math.pi, false, paint);
    }
  }

  @override
  bool shouldRepaint(_WavesPainter old) => !listEquals(old.opacity, opacity);
}
