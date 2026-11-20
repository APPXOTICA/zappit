import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob_stage.dart';

/// Onboarding 2 (`gaq-*`, the same scene as the web guide's Step 2): click the
/// toolbar icon → popup with the QR → the phone scans it → connected.
class Ob2Animation extends StatelessWidget {
  const Ob2Animation({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    // Still frame: popup open, phone tilted and scanning (the design's 46-OB-2).
    return ObStage(label: s.onboarding2AnimLabel, stillAt: 45, builder: (context, p, cq) => _frame(s, p, cq));
  }

  Widget _frame(S s, double p, double cq) {
    final glow = kf(p, [0, 11.5, 12, 16, 18], [0, 0, 1, 1, 0]);
    const ct = <double>[0, 2, 5, 10, 12, 13.5, 20, 24];

    return Stack(
      children: [
        Positioned(
          left: 3 * cq,
          top: 5 * cq,
          width: 63 * cq,
          height: 52 * cq,
          child: ObWindow(
            cq: cq,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: ObToolbar(
                    cq: cq,
                    field: Container(height: 3.2 * cq, decoration: const ShapeDecoration(color: ObColors.field, shape: StadiumBorder())),
                    zap: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.8 * cq),
                        boxShadow: [
                          if (glow > 0)
                            BoxShadow(color: const Color(0xFF60A5FA).withValues(alpha: 0.7 * glow), spreadRadius: 0.5 * cq * glow),
                        ],
                      ),
                      child: ObLogo(size: 3.2 * cq, radius: 0.8 * cq),
                    ),
                  ),
                ),
                // Page placeholder lines and blocks.
                Positioned(
                  left: 3 * cq,
                  right: 3 * cq,
                  top: 10 * cq,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 1.6 * cq,
                    children: [
                      for (final w in [0.6, 0.85, 0.4])
                        FractionallySizedBox(widthFactor: w, child: _block(1.6 * cq, cq)),
                      _block(9 * cq, 1.2 * cq),
                      _block(9 * cq, 1.2 * cq),
                    ],
                  ),
                ),
                Positioned(right: 1.4 * cq, top: 7 * cq, width: 28 * cq, height: 42.5 * cq, child: _popup(s, p, cq)),
              ],
            ),
          ),
        ),
        Positioned(left: 71 * cq, top: 6.5 * cq, width: 24 * cq, height: 49 * cq, child: _phone(s, p, cq)),
        ObCursor(
          cq: cq,
          opacity: kf(p, ct, [0, 0, 1, 1, 1, 1, 1, 0]),
          x: kf(p, ct, [42, 42, 42, 58.4, 58.4, 58.4, 48, 48]),
          y: kf(p, ct, [40, 40, 40, 7.4, 7.4, 7.4, 34, 34]),
          scale: kf(p, ct, [1, 1, 1, 1, 0.82, 1, 1, 1]),
        ),
      ],
    );
  }

  Widget _block(double height, double radius) => Container(
        height: height,
        decoration: BoxDecoration(color: ObColors.block, borderRadius: BorderRadius.circular(radius)),
      );

  /// Extension popup (`gaq-pop`): the QR screen, then "Remote connected".
  Widget _popup(S s, double p, double cq) {
    const pt = <double>[0, 13, 17, 94, 98];
    final opacity = kf(p, pt, [0, 0, 1, 1, 0]);
    final scale = kf(p, pt, [0.92, 0.92, 1, 1, 1]);
    final dy = kf(p, pt, [-1, -1, 0, 0, 0]);
    final pair = kf(p, [0, 61, 64], [1, 1, 0]);
    final timer = kf(p, [0, 100], [0.74, 0.66], curve: Curves.linear);
    final ink = obText(cq, 1.2, weight: FontWeight.w600);

    Widget screen(double opacity, List<Widget> children) => Opacity(
          opacity: opacity.clamp(0, 1),
          child: Padding(
            padding: EdgeInsets.fromLTRB(1.6 * cq, 1.6 * cq, 1.6 * cq, 0),
            child: Column(spacing: 0.7 * cq, children: children),
          ),
        );

    return Opacity(
      opacity: opacity.clamp(0, 1),
      // `scale(.92) translateY(-1cqw)` about 88% 0.
      child: Transform.translate(
        offset: Offset(0, dy * cq * scale),
        child: Transform.scale(
          scale: scale,
          alignment: const Alignment(0.76, -1),
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: ObColors.popup,
              borderRadius: BorderRadius.circular(1.4 * cq),
              border: Border.all(color: ObColors.edge),
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.6), offset: Offset(0, 1.5 * cq), blurRadius: 4 * cq)],
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                screen(pair, [
                  ObLogo(size: 3.6 * cq, radius: 0.8 * cq),
                  Text('Zappit', style: ink),
                  Padding(
                    padding: EdgeInsets.only(top: 0.4 * cq),
                    child: Text(s.obAnimConnectPhone, textAlign: TextAlign.center, style: obText(cq, 1.5, weight: FontWeight.w600)),
                  ),
                  Text(s.obAnimScanCode, textAlign: TextAlign.center, style: obText(cq, 1, color: ObColors.muted, height: 1.35)),
                  Container(
                    width: 15 * cq,
                    height: 15 * cq,
                    padding: EdgeInsets.all(0.9 * cq),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(1.2 * cq)),
                    child: const ObQr(),
                  ),
                  Text(s.obAnimNewCode('4:32'), style: obText(cq, 1, color: ObColors.muted, weight: FontWeight.w500)),
                  Container(
                    width: 12 * cq,
                    height: 0.4 * cq,
                    clipBehavior: Clip.antiAlias,
                    alignment: AlignmentDirectional.centerStart,
                    decoration: const ShapeDecoration(color: ObColors.dot, shape: StadiumBorder()),
                    child: FractionallySizedBox(
                      widthFactor: timer,
                      child: const DecoratedBox(decoration: ShapeDecoration(color: ObColors.blue, shape: StadiumBorder()), child: SizedBox.expand()),
                    ),
                  ),
                ]),
                screen(1 - pair, [
                  ObLogo(size: 3.6 * cq, radius: 0.8 * cq),
                  Text('Zappit', style: ink),
                  Padding(padding: EdgeInsets.only(top: 0.8 * cq), child: _pill(s.obAnimRemoteConnected, cq, 1.15, FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.only(top: cq),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        s.obAnimYourPhones.toUpperCase(),
                        style: obText(cq, 0.95, color: ObColors.dim, weight: FontWeight.w600).copyWith(letterSpacing: 0.08 * 0.95 * cq),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(cq),
                    decoration: BoxDecoration(color: ObColors.window, borderRadius: BorderRadius.circular(cq)),
                    child: Row(
                      spacing: cq,
                      children: [
                        Icon(Icons.smartphone, size: 2.2 * cq, color: ObColors.green),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('iPhone', style: obText(cq, 1.15)),
                            Text(s.connected, style: obText(cq, 0.95, color: ObColors.green)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pill(String label, double cq, double size, FontWeight weight) => Container(
        padding: EdgeInsets.symmetric(horizontal: 1.4 * cq, vertical: 0.7 * cq),
        decoration: const ShapeDecoration(color: ObColors.block, shape: StadiumBorder()),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 0.7 * cq,
          children: [
            Container(width: 0.9 * cq, height: 0.9 * cq, decoration: const BoxDecoration(color: ObColors.green, shape: BoxShape.circle)),
            Text(label, maxLines: 1, softWrap: false, style: obText(cq, size, weight: weight)),
          ],
        ),
      );

  /// Phone (`gaq-phone`): scanner, then the remote.
  Widget _phone(S s, double p, double cq) {
    const pt = <double>[0, 22, 30, 58, 66];
    final dx = kf(p, pt, [0, 0, -5, -5, 0]);
    final dy = kf(p, pt, [0, 0, -1.5, -1.5, 0]);
    final turn = kf(p, pt, [0, 0, -8, -8, 0]);
    final cam = kf(p, [0, 62, 65, 96, 100], [1, 1, 0, 0, 1]);
    final remote = kf(p, [0, 62, 65, 94, 98], [0, 0, 1, 1, 0]);

    return Transform.translate(
      offset: Offset(dx * cq, dy * cq),
      child: Transform.rotate(
        angle: turn * math.pi / 180,
        alignment: const Alignment(0, 0.6), // 50% 80%
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: ObColors.phone,
            borderRadius: BorderRadius.circular(3.4 * cq),
            border: Border.all(color: ObColors.dot, width: 0.55 * cq),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: cam.clamp(0, 1),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 3 * cq,
                      child: Text(s.obAnimConnectComputer, textAlign: TextAlign.center, maxLines: 1, style: obText(cq, 1.25, weight: FontWeight.w600)),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 11 * cq,
                      child: Center(child: SizedBox(width: 17 * cq, height: 17 * cq, child: _finder(p, cq))),
                    ),
                  ],
                ),
              ),
              Opacity(
                opacity: remote.clamp(0, 1),
                child: ColoredBox(
                  color: ObColors.field,
                  child: Stack(
                    children: [
                      Positioned(left: 0, right: 0, top: 3 * cq, child: Center(child: _pill(s.connected, cq, 1.2, FontWeight.w400))),
                      for (final top in [9.0, 14.5, 20.0])
                        Positioned(
                          left: 1.4 * cq,
                          right: 1.4 * cq,
                          top: top * cq,
                          height: 4.4 * cq,
                          child: DecoratedBox(decoration: BoxDecoration(color: ObColors.stage, borderRadius: BorderRadius.circular(1.4 * cq))),
                        ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 30 * cq,
                        child: Center(
                          child: Container(width: 7 * cq, height: 7 * cq, decoration: const BoxDecoration(color: ObColors.blue, shape: BoxShape.circle)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Viewfinder: the code comes into view, the scan line sweeps twice, corners turn green.
  Widget _finder(double p, double cq) {
    const st = <double>[0, 27, 32, 62, 65];
    final seen = kf(p, st, [0, 0, 1, 1, 0]);
    final seenScale = kf(p, [0, 27, 32], [0.85, 0.85, 1]);
    const sc = <double>[0, 30, 31, 38, 45, 52, 54];
    final scan = kf(p, sc, [0, 0, 1, 1, 1, 1, 0]);
    final scanY = kf(p, sc, [0, 0, 0, 13.4, 0, 13.4, 13.4]);
    final green = kf(p, [0, 54, 55, 64, 66], [0, 0, 1, 1, 0]);
    final ok = kf(p, [0, 54, 57, 62, 64], [0, 0, 1, 1, 0]);
    final okScale = kf(p, [0, 54, 57], [0.6, 0.6, 1]);

    return Stack(
      children: [
        Positioned.fill(
          left: 2 * cq,
          top: 2 * cq,
          right: 2 * cq,
          bottom: 2 * cq,
          child: Opacity(
            opacity: seen.clamp(0, 1),
            child: Transform.scale(
              scale: seenScale,
              child: Container(
                padding: EdgeInsets.all(0.7 * cq),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(0.8 * cq)),
                child: const ObQr(),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: CustomPaint(painter: _CornersPainter(color: Color.lerp(ObColors.ink, ObColors.green, green.clamp(0, 1))!, cq: cq)),
        ),
        Positioned(
          left: 1.4 * cq,
          right: 1.4 * cq,
          top: 1.6 * cq,
          height: 0.35 * cq,
          child: Opacity(
            opacity: scan.clamp(0, 1),
            child: Transform.translate(
              offset: Offset(0, scanY * cq),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ObColors.blueLight,
                  borderRadius: BorderRadius.circular(cq),
                  boxShadow: [BoxShadow(color: ObColors.blue, blurRadius: 1.2 * cq)],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Opacity(
            opacity: ok.clamp(0, 1),
            child: Transform.scale(
              scale: okScale,
              child: Container(
                width: 6 * cq,
                height: 6 * cq,
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: ObColors.green, shape: BoxShape.circle),
                child: ObCheck(size: 3.6 * cq, color: ObColors.field),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Four corner marks of the viewfinder (`gaq-c1`–`c4`): 3.4cq legs, .5cq
/// thick, 1cq outer radius.
class _CornersPainter extends CustomPainter {
  const _CornersPainter({required this.color, required this.cq});

  final Color color;
  final double cq;

  @override
  void paint(Canvas canvas, Size size) {
    final w = 0.5 * cq;
    final leg = 3.4 * cq;
    final r = cq;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = w;
    // Top-left corner along the stroke's centre line; the others are mirrors.
    final path = Path()
      ..moveTo(w / 2, leg)
      ..lineTo(w / 2, r)
      ..arcToPoint(Offset(r, w / 2), radius: Radius.circular(r - w / 2))
      ..lineTo(leg, w / 2);
    for (final (sx, sy) in [(1.0, 1.0), (-1.0, 1.0), (1.0, -1.0), (-1.0, -1.0)]) {
      canvas.save();
      canvas.translate(sx < 0 ? size.width : 0, sy < 0 ? size.height : 0);
      canvas.scale(sx, sy);
      canvas.drawPath(path, paint);
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(_CornersPainter oldDelegate) => oldDelegate.color != color || oldDelegate.cq != cq;
}
