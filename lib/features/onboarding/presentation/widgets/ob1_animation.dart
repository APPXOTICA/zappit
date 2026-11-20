import 'package:flutter/material.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob_stage.dart';

/// Onboarding 1 (`gob1-*`): type zappit.tv/get → page → click Add extension →
/// Added → the Zappit icon pops into the toolbar.
class Ob1Animation extends StatelessWidget {
  const Ob1Animation({super.key});

  static const _url = 'zappit.tv/get';

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    // Still frame: page added, icon in the toolbar, no cursor.
    return ObStage(label: s.onboarding1AnimLabel, stillAt: 80, builder: (context, p, cq) => _frame(s, p, cq));
  }

  Widget _frame(S s, double p, double cq) {
    // `steps(13, end)` over 6–22%: one more letter every 13th of the span.
    final typed = (((p - 6) / 16).clamp(0.0, 1.0) * _url.length).floor();
    final caret = kf(p, [0, 4, 5, 24, 25], [0, 0, 1, 1, 0]);
    final zap = kf(p, [0, 56, 60, 63, 95, 99], [0, 0, 1.25, 1, 1, 0]);
    final blank = kf(p, [0, 25, 28], [1, 1, 0]);
    final page = kf(p, [0, 25, 29, 95, 99], [0, 0, 1, 1, 0]);
    final press = kf(p, [0, 47, 49, 51, 53], [1, 1, 0.94, 0.94, 1]);
    final added = kf(p, [0, 51, 53, 95, 99], [0, 0, 1, 1, 0]);
    final ring = kf(p, [0, 58, 60, 72], [0, 0, 1, 0]);
    final ringScale = kf(p, [0, 58, 60, 72], [0.4, 0.4, 0.6, 1.6]);
    const ct = <double>[0, 30, 34, 44, 48, 51, 60, 66];

    return Stack(
      children: [
        Positioned(
          left: 4 * cq,
          top: 5 * cq,
          width: 92 * cq,
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
                    field: Container(
                      height: 3.6 * cq,
                      padding: EdgeInsets.symmetric(horizontal: 1.6 * cq),
                      alignment: AlignmentDirectional.centerStart,
                      decoration: const ShapeDecoration(color: ObColors.field, shape: StadiumBorder()),
                      child: Row(
                        children: [
                          Text(_url.substring(0, typed), maxLines: 1, softWrap: false, style: obText(cq, 1.9)),
                          Opacity(
                            opacity: caret.clamp(0, 1),
                            child: Container(width: 0.2 * cq, height: 2.2 * cq, margin: EdgeInsets.only(left: 0.2 * cq), color: ObColors.blueLight),
                          ),
                        ],
                      ),
                    ),
                    zap: Transform.scale(scale: zap, child: ObLogo(size: 3.2 * cq, radius: 0.8 * cq)),
                  ),
                ),
                // New tab placeholder.
                Positioned(
                  left: 31 * cq,
                  top: 26 * cq,
                  width: 30 * cq,
                  height: 3.6 * cq,
                  child: Opacity(
                    opacity: blank.clamp(0, 1),
                    child: const DecoratedBox(decoration: ShapeDecoration(color: ObColors.block, shape: StadiumBorder())),
                  ),
                ),
                // zappit.tv/get
                Positioned(
                  left: 0,
                  right: 0,
                  top: 6.2 * cq,
                  bottom: 0,
                  child: Opacity(
                    opacity: page.clamp(0, 1),
                    child: Stack(
                      children: [
                        Positioned(left: 0, right: 0, top: 6.5 * cq, child: Center(child: ObLogo(size: 8 * cq, radius: 1.8 * cq))),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 16 * cq,
                          child: Text('Zappit', textAlign: TextAlign.center, style: obText(cq, 2.8, weight: FontWeight.w700)),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 20.6 * cq,
                          child: Text(s.obAnimTagline, textAlign: TextAlign.center, style: obText(cq, 1.7, color: ObColors.muted)),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 25.6 * cq,
                          child: Center(
                            child: Transform.scale(
                              scale: press,
                              child: SizedBox(
                                width: 22 * cq,
                                height: 5.4 * cq,
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    DecoratedBox(
                                      decoration: const ShapeDecoration(color: ObColors.blue, shape: StadiumBorder()),
                                      child: Center(
                                        child: Text(s.obAnimAddExtension, maxLines: 1, style: obText(cq, 1.8, color: ObColors.field, weight: FontWeight.w700)),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: added.clamp(0, 1),
                                      child: DecoratedBox(
                                        decoration: const ShapeDecoration(color: ObColors.green, shape: StadiumBorder()),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          spacing: 0.6 * cq,
                                          children: [
                                            ObCheck(size: 2.2 * cq, color: ObColors.field),
                                            Text(s.obAnimAdded, maxLines: 1, style: obText(cq, 1.8, color: ObColors.field, weight: FontWeight.w700)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
        // Ring around the new toolbar icon (centred on 89.2, 8.1).
        Positioned(
          left: 86.7 * cq,
          top: 5.6 * cq,
          width: 5 * cq,
          height: 5 * cq,
          child: Opacity(
            opacity: ring.clamp(0, 1),
            child: Transform.scale(
              scale: ringScale,
              child: DecoratedBox(
                decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ObColors.blueLight, width: 0.4 * cq)),
              ),
            ),
          ),
        ),
        ObCursor(
          cq: cq,
          opacity: kf(p, ct, [0, 0, 1, 1, 1, 1, 1, 0]),
          x: kf(p, ct, [68, 68, 68, 49.6, 49.6, 49.6, 62, 62]),
          y: kf(p, ct, [52, 52, 52, 39, 39, 39, 46, 46]),
          scale: kf(p, ct, [1, 1, 1, 1, 0.82, 1, 1, 1]),
        ),
      ],
    );
  }
}
