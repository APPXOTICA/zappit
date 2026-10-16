import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';

class ZpSegment<T> {
  const ZpSegment({
    required this.value,
    required this.label,
    this.dimmed = false,
    this.caption,
  });

  final T value;
  final String label;

  /// Shown at 38% (Pro presets for free users).
  final bool dimmed;

  /// Small accent text under the label (speed trial countdown).
  final String? caption;
}

/// DS SegmentedControl (`.zp-seg`).
///
/// Segments share the width equally. When the number of segments changes
/// (a temporary speed is added or removed) widths animate over 200ms.
class ZpSegmentedControl<T> extends StatelessWidget {
  const ZpSegmentedControl({
    super.key,
    required this.segments,
    required this.selected,
    required this.onChanged,
    this.radius = AppTokens.radiusLg,
    this.segmentRadius = 22,
  });

  final List<ZpSegment<T>> segments;
  final T? selected;
  final ValueChanged<T>? onChanged;
  final double radius;
  final double segmentRadius;

  static const _duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final hasCaption = segments.any((s) => s.caption != null);
    const pad = 4.0;
    const height = AppTokens.targetMin;
    final outerHeight = height + pad * 2 + (hasCaption ? 13 : 0);

    return AnimatedContainer(
      duration: _duration,
      height: outerHeight,
      decoration: BoxDecoration(
        color: t.surface200,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: t.hairline),
      ),
      padding: const EdgeInsets.all(pad),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final count = segments.length;
          final width = (constraints.maxWidth - pad * (count - 1)) / count;
          return Stack(
            clipBehavior: Clip.none,
            children: [
              for (var i = 0; i < count; i++)
                AnimatedPositioned(
                  key: ValueKey(segments[i].value),
                  duration: _duration,
                  curve: Curves.easeOut,
                  left: i * (width + pad),
                  top: 0,
                  width: width,
                  height: height,
                  child: _Segment<T>(
                    segment: segments[i],
                    selected: segments[i].value == selected,
                    radius: segmentRadius,
                    onTap: onChanged == null ? null : () => onChanged!(segments[i].value),
                  ),
                ),
              for (var i = 0; i < count; i++)
                if (segments[i].caption != null)
                  AnimatedPositioned(
                    key: ValueKey('caption-${segments[i].value}'),
                    duration: _duration,
                    left: i * (width + pad),
                    width: width,
                    top: height + 1,
                    child: Text(
                      segments[i].caption!,
                      textAlign: TextAlign.center,
                      style: AppText.caption.copyWith(
                        fontSize: 11,
                        height: 13 / 11,
                        fontWeight: FontWeight.w600,
                        color: t.accentText,
                      ),
                    ),
                  ),
            ],
          );
        },
      ),
    );
  }
}

class _Segment<T> extends StatelessWidget {
  const _Segment({
    required this.segment,
    required this.selected,
    required this.radius,
    required this.onTap,
  });

  final ZpSegment<T> segment;
  final bool selected;
  final double radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Semantics(
      button: true,
      selected: selected,
      label: segment.label,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 150),
          opacity: segment.dimmed && !selected ? 0.38 : 1,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              color: selected ? t.surface300 : Colors.transparent,
              borderRadius: BorderRadius.circular(radius),
            ),
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  segment.label,
                  maxLines: 1,
                  style: AppText.body.merge(AppText.tabular).copyWith(
                        fontSize: 16,
                        color: selected ? t.ink : t.inkMuted,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
