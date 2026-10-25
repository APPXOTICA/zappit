import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';

/// Loading placeholder: a box with a light band sweeping across it. Use it
/// where a thumbnail or a line of text is still on the way, instead of a
/// spinner or a "loading" message.
///
/// Fills its parent unless [width] / [height] are given.
class ZpShimmer extends StatefulWidget {
  const ZpShimmer({super.key, this.width, this.height, this.radius = AppTokens.radiusSm});

  final double? width;
  final double? height;
  final double radius;

  @override
  State<ZpShimmer> createState() => _ZpShimmerState();
}

class _ZpShimmerState extends State<ZpShimmer> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final base = t.surface300;
    final highlight = Color.lerp(base, t.ink, 0.08)!;
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) => Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          gradient: LinearGradient(
            colors: [base, highlight, base],
            stops: const [0.35, 0.5, 0.65],
            transform: _Slide(_controller.value),
          ),
        ),
      ),
    );
  }
}

/// Moves the gradient from fully left of the box to fully right of it.
class _Slide extends GradientTransform {
  const _Slide(this.progress);

  final double progress;

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) =>
      Matrix4.translationValues(bounds.width * (progress * 2 - 1), 0, 0);
}
