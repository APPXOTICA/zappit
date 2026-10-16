import 'package:marquee/marquee.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// One-line media title; scrolls sideways only when it doesn't fit (`.za-marquee`).
class TitleMarquee extends StatelessWidget {
  const TitleMarquee({super.key, required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final text = title?.trim() ?? '';
    final style = AppText.body.copyWith(fontSize: 16, color: t.ink);

    return SizedBox(
      height: 32,
      child: text.isEmpty
          ? const SizedBox.shrink()
          : LayoutBuilder(
              builder: (context, constraints) {
                final painter = TextPainter(
                  text: TextSpan(text: text, style: style),
                  maxLines: 1,
                  textDirection: TextDirection.ltr,
                )..layout();
                if (painter.width <= constraints.maxWidth) {
                  return Center(child: Text(text, maxLines: 1, style: style));
                }
                return ShaderMask(
                  shaderCallback: (rect) => const LinearGradient(
                    colors: [Colors.transparent, Colors.white, Colors.white, Colors.transparent],
                    stops: [0, 0.05, 0.95, 1],
                  ).createShader(rect),
                  blendMode: BlendMode.dstIn,
                  child: Marquee(
                    key: ValueKey(text),
                    text: text,
                    style: style,
                    blankSpace: 56,
                    velocity: 28,
                    startAfter: const Duration(seconds: 1),
                    pauseAfterRound: const Duration(seconds: 1),
                    fadingEdgeStartFraction: 0,
                    fadingEdgeEndFraction: 0,
                  ),
                );
              },
            ),
    );
  }
}
