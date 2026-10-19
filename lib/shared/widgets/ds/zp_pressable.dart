import 'package:flutter/material.dart';

/// Shared press feedback for DS controls: scales to 0.96 while pressed
/// (`.zp-ib:active`) and reports the pressed state to [builder].
class ZpPressable extends StatefulWidget {
  const ZpPressable({
    super.key,
    required this.builder,
    this.onTap,
    this.onLongPress,
    this.onLongPressStart,
    this.onLongPressEnd,
    this.scale = 0.96,
    this.semanticLabel,
    this.selected,
  });

  final Widget Function(BuildContext context, bool pressed) builder;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  /// Press-and-hold: the control stays pressed until [onLongPressEnd].
  final VoidCallback? onLongPressStart;
  final VoidCallback? onLongPressEnd;
  final double scale;
  final String? semanticLabel;
  final bool? selected;

  @override
  State<ZpPressable> createState() => _ZpPressableState();
}

class _ZpPressableState extends State<ZpPressable> {
  bool _pressed = false;

  bool get _enabled => widget.onTap != null || widget.onLongPress != null || widget.onLongPressStart != null;

  void _setPressed(bool value) {
    if (_pressed != value && mounted) setState(() => _pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: _enabled,
      selected: widget.selected,
      label: widget.semanticLabel,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: _enabled ? (_) => _setPressed(true) : null,
        onTapUp: _enabled ? (_) => _setPressed(false) : null,
        onTapCancel: _enabled ? () => _setPressed(false) : null,
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        onLongPressStart: widget.onLongPressStart == null
            ? null
            : (_) {
                _setPressed(true);
                widget.onLongPressStart!();
              },
        onLongPressEnd: widget.onLongPressStart == null
            ? null
            : (_) {
                _setPressed(false);
                widget.onLongPressEnd?.call();
              },
        child: AnimatedScale(
          scale: _pressed ? widget.scale : 1,
          duration: const Duration(milliseconds: 80),
          curve: Curves.easeOut,
          child: widget.builder(context, _pressed),
        ),
      ),
    );
  }
}
