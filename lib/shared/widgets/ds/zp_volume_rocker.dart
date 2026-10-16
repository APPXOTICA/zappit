import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_icon_button.dart';

/// DS VolumeRocker (`.zp-vol`): Mute · − · slider · +, level under the slider.
class ZpVolumeRocker extends StatefulWidget {
  const ZpVolumeRocker({
    super.key,
    required this.volume,
    required this.muted,
    required this.onMuteToggle,
    required this.onStepDown,
    required this.onStepUp,
    required this.onSlide,
    required this.onSlideEnd,
    this.onSlideStart,
    this.enabled = true,
  });

  /// 0–100
  final int volume;
  final bool muted;
  final VoidCallback onMuteToggle;
  final VoidCallback onStepDown;
  final VoidCallback onStepUp;
  final VoidCallback? onSlideStart;
  final ValueChanged<int> onSlide;
  final ValueChanged<int> onSlideEnd;
  final bool enabled;

  @override
  State<ZpVolumeRocker> createState() => _ZpVolumeRockerState();
}

class _ZpVolumeRockerState extends State<ZpVolumeRocker> {
  int? _dragValue;

  int get _shown => _dragValue ?? widget.volume;

  int _valueAt(double dx, double width) => ((dx / width).clamp(0.0, 1.0) * 100).round();

  void _begin(double dx, double width) {
    if (!widget.enabled) return;
    widget.onSlideStart?.call();
    final v = _valueAt(dx, width);
    setState(() => _dragValue = v);
    widget.onSlide(v);
  }

  void _move(double dx, double width) {
    if (_dragValue == null) return;
    final v = _valueAt(dx, width);
    if (v == _dragValue) return;
    setState(() => _dragValue = v);
    widget.onSlide(v);
  }

  void _finish() {
    final v = _dragValue;
    if (v == null) return;
    setState(() => _dragValue = null);
    widget.onSlideEnd(v);
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final enabled = widget.enabled;

    return Row(
      children: [
        ZpIconButton(
          size: ZpIconButtonSize.sm,
          semanticLabel: widget.muted ? 'Unmute' : 'Mute',
          onPressed: enabled ? widget.onMuteToggle : null,
          child: Icon(widget.muted ? Icons.volume_off_rounded : Icons.volume_up_rounded),
        ),
        const SizedBox(width: AppTokens.space2),
        ZpIconButton(
          size: ZpIconButtonSize.sm,
          variant: ZpIconButtonVariant.outlined,
          semanticLabel: 'Volume down',
          onPressed: enabled ? widget.onStepDown : null,
          child: const Icon(Icons.remove_rounded),
        ),
        const SizedBox(width: AppTokens.space3),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final fraction = _shown / 100;
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onHorizontalDragStart: (d) => _begin(d.localPosition.dx, width),
                onHorizontalDragUpdate: (d) => _move(d.localPosition.dx, width),
                onHorizontalDragEnd: (_) => _finish(),
                onHorizontalDragCancel: _finish,
                onTapDown: (d) => _begin(d.localPosition.dx, width),
                onTapUp: (_) => _finish(),
                child: SizedBox(
                  height: AppTokens.controlMd,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        top: AppTokens.targetMin / 2 - 4 + 4,
                        height: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: t.surface300,
                            borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        width: width * fraction,
                        top: AppTokens.targetMin / 2 - 4 + 4,
                        height: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: widget.muted || !enabled ? t.inkDisabled : t.ink,
                            borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: AppTokens.targetMin / 2 + 12,
                        child: Text(
                          enabled ? '$_shown' : '–',
                          textAlign: TextAlign.center,
                          style: AppText.caption
                              .merge(AppText.tabular)
                              .copyWith(height: 1, color: t.inkMuted),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(width: AppTokens.space3),
        ZpIconButton(
          size: ZpIconButtonSize.sm,
          variant: ZpIconButtonVariant.outlined,
          semanticLabel: 'Volume up',
          onPressed: enabled ? widget.onStepUp : null,
          child: const Icon(Icons.add_rounded),
        ),
      ],
    );
  }
}
