import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// [main] takes the remaining width; [side] gets [main]'s height.
///
/// IntrinsicHeight can't measure children that use LayoutBuilder, so this
/// lays out [main] first and passes its height to [side] on the next frame.
class MatchHeightRow extends StatefulWidget {
  const MatchHeightRow({super.key, required this.main, required this.side, this.gap = 8});

  final Widget main;
  final Widget side;
  final double gap;

  @override
  State<MatchHeightRow> createState() => _MatchHeightRowState();
}

class _MatchHeightRowState extends State<MatchHeightRow> {
  double? _height;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _SizeReporter(
            onSize: (size) {
              if (_height != size.height) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) setState(() => _height = size.height);
                });
              }
            },
            child: widget.main,
          ),
        ),
        SizedBox(width: widget.gap),
        SizedBox(height: _height ?? 0, child: widget.side),
      ],
    );
  }
}

class _SizeReporter extends SingleChildRenderObjectWidget {
  const _SizeReporter({required this.onSize, required super.child});

  final ValueChanged<Size> onSize;

  @override
  RenderObject createRenderObject(BuildContext context) => _RenderSizeReporter(onSize);

  @override
  void updateRenderObject(BuildContext context, _RenderSizeReporter renderObject) {
    renderObject.onSize = onSize;
  }
}

class _RenderSizeReporter extends RenderProxyBox {
  _RenderSizeReporter(this.onSize);

  ValueChanged<Size> onSize;
  Size? _last;

  @override
  void performLayout() {
    super.performLayout();
    if (_last != size) {
      _last = size;
      onSize(size);
    }
  }
}
