import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';

enum ZpScrubMode { normal, ad, live, empty }

/// DS ScrubBar (`.zp-scrub`) with the A-B loop band and bracket marks.
///
/// Only the track and its hit area; the caller puts the time row below.
/// Dragging reports positions locally and seeks once on release.
class ZpScrubBar extends StatefulWidget {
  const ZpScrubBar({
    super.key,
    required this.position,
    required this.duration,
    this.mode = ZpScrubMode.normal,
    this.loopStart,
    this.loopEnd,
    this.loopLeft,
    this.onDragStart,
    this.onDragUpdate,
    this.onDragEnd,
  });

  /// Seconds.
  final double position;

  /// Seconds; 0 or less means unknown.
  final double duration;
  final ZpScrubMode mode;
  final double? loopStart;
  final double? loopEnd;

  /// Remaining A-B repeats, shown under the band. Null hides it.
  final int? loopLeft;
  final VoidCallback? onDragStart;
  final ValueChanged<double>? onDragUpdate;
  final ValueChanged<double>? onDragEnd;

  @override
  State<ZpScrubBar> createState() => _ZpScrubBarState();
}

class _ZpScrubBarState extends State<ZpScrubBar> {
  double? _dragFraction;

  bool get _interactive =>
      widget.mode == ZpScrubMode.normal && widget.duration > 0 && widget.onDragEnd != null;

  double _fractionAt(double dx, double width) => (dx / width).clamp(0.0, 1.0);

  void _start(double dx, double width) {
    if (!_interactive) return;
    widget.onDragStart?.call();
    setState(() => _dragFraction = _fractionAt(dx, width));
    widget.onDragUpdate?.call(_dragFraction! * widget.duration);
  }

  void _update(double dx, double width) {
    if (_dragFraction == null) return;
    setState(() => _dragFraction = _fractionAt(dx, width));
    widget.onDragUpdate?.call(_dragFraction! * widget.duration);
  }

  void _end() {
    final fraction = _dragFraction;
    if (fraction == null) return;
    setState(() => _dragFraction = null);
    widget.onDragEnd?.call(fraction * widget.duration);
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final duration = widget.duration;
    final fraction = _dragFraction ??
        (duration > 0 ? (widget.position / duration).clamp(0.0, 1.0) : 0.0);

    final fillColor = switch (widget.mode) {
      ZpScrubMode.ad => t.signalAd,
      ZpScrubMode.live => t.surface300,
      _ => t.accent,
    };
    final showThumb = widget.mode == ZpScrubMode.normal && duration > 0;
    final hasAb = widget.mode == ZpScrubMode.normal &&
        duration > 0 &&
        (widget.loopStart != null || widget.loopEnd != null);

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        double xFor(double seconds) => (seconds / duration).clamp(0.0, 1.0) * width;

        final aX = hasAb ? xFor(widget.loopStart ?? 0) : 0.0;
        final bX = hasAb ? xFor(widget.loopEnd ?? duration) : 0.0;

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onHorizontalDragStart: (d) => _start(d.localPosition.dx, width),
          onHorizontalDragUpdate: (d) => _update(d.localPosition.dx, width),
          onHorizontalDragEnd: (_) => _end(),
          onHorizontalDragCancel: _end,
          onTapDown: (d) => _start(d.localPosition.dx, width),
          onTapUp: (_) => _end(),
          child: SizedBox(
            height: AppTokens.targetMin,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerLeft,
              children: [
                if (hasAb)
                  Positioned(
                    left: aX,
                    width: (bX - aX).clamp(0.0, width),
                    top: AppTokens.targetMin / 2 - 9,
                    height: 18,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0x3860A5FA),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: const Color(0x8C60A5FA)),
                      ),
                    ),
                  ),
                Positioned.fill(
                  child: Center(
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(
                        color: hasAb ? const Color(0x1AFFFFFF) : t.surface300,
                        borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  width: widget.mode == ZpScrubMode.live ? width : width * fraction,
                  top: AppTokens.targetMin / 2 - 2,
                  height: 4,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                    ),
                  ),
                ),
                if (hasAb && widget.loopStart != null) _abMark(aX, isStart: true),
                if (hasAb && widget.loopEnd != null) _abMark(bX, isStart: false),
                if (hasAb && widget.loopLeft != null)
                  Positioned(
                    left: (aX + bX) / 2 - 20,
                    width: 40,
                    top: AppTokens.targetMin / 2 + 11,
                    child: Text(
                      '${widget.loopLeft}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10, height: 1.2, fontWeight: FontWeight.w600, color: t.accentText),
                    ),
                  ),
                if (showThumb)
                  Positioned(
                    left: width * fraction - 8,
                    top: AppTokens.targetMin / 2 - 8,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(color: t.ink, shape: BoxShape.circle),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Bracket-shaped pin that echoes the [ ] buttons.
  Widget _abMark(double x, {required bool isStart}) {
    const color = Color(0xFF60A5FA);
    const side = BorderSide(color: color, width: 3);
    return Positioned(
      left: isStart ? x - 1.5 : x - 7.5,
      top: AppTokens.targetMin / 2 - 14,
      width: 9,
      height: 28,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            top: side,
            bottom: side,
            left: isStart ? side : BorderSide.none,
            right: isStart ? BorderSide.none : side,
          ),
          boxShadow: const [BoxShadow(color: Color(0xB360A5FA), blurRadius: 4)],
        ),
      ),
    );
  }
}

/// Time row under the scrub bar: `23:40 / 3:00:00`, with AD / LIVE tags.
class ZpScrubTime extends StatelessWidget {
  const ZpScrubTime({super.key, required this.text, this.mode = ZpScrubMode.normal});

  final String text;
  final ZpScrubMode mode;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (mode == ZpScrubMode.ad) ...[
          ZpTag(label: 'AD', color: t.signalAd),
          const SizedBox(width: AppTokens.space2),
        ],
        if (mode == ZpScrubMode.live)
          ZpTag(label: 'LIVE', color: t.signalOff)
        else
          Text(text, style: AppText.body.merge(AppText.tabular).copyWith(color: t.inkMuted)),
      ],
    );
  }
}

class ZpTag extends StatelessWidget {
  const ZpTag({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 7),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          height: 1.2,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          color: context.tokens.onAccent,
        ),
      ),
    );
  }
}
