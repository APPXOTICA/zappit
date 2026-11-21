import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob_qr.dart';

/// Onboarding animations (design: `docs/design/onboarding-animations.md`,
/// `.ga`, `gob1-*`, `gaq-*` in `zappit-app.css`). Each one is a 16:10 stage,
/// sizes in `cq` (1% of the stage width, CSS `cqw`) and one 7-second loop.
/// Times below are CSS keyframe percentages of that loop.

/// Value at [p] (0–100) of CSS keyframes [times] → [values]. Like CSS, the
/// easing restarts between each pair of keyframes, and the first and last
/// values hold before and after them (`animation-fill-mode: both`).
/// `Curves.easeInOut` is CSS `ease-in-out` (cubic-bezier .42, 0, .58, 1).
double kf(double p, List<double> times, List<double> values, {Curve curve = Curves.easeInOut}) {
  assert(times.length == values.length);
  if (p <= times.first) return values.first;
  for (var i = 1; i < times.length; i++) {
    if (p <= times[i]) {
      final span = times[i] - times[i - 1];
      final x = span <= 0 ? 1.0 : curve.transform((p - times[i - 1]) / span);
      return values[i - 1] + (values[i] - values[i - 1]) * x;
    }
  }
  return values.last;
}

/// Colors of the drawn browser and phone (fixed: they are part of the picture).
abstract final class ObColors {
  static const stage = Color(0xFF16161C);
  static const window = Color(0xFF121216);
  static const bar = Color(0xFF18181F);
  static const field = Color(0xFF0D0D11);
  static const dot = Color(0xFF2C2C38);
  static const block = Color(0xFF1C1C24);
  static const ink = Color(0xFFF2F2F5);
  static const muted = Color(0xFFA1A1AE);
  static const dim = Color(0xFF6E6E7C);
  static const blue = Color(0xFF3B82F6);
  static const blueLight = Color(0xFF60A5FA);
  static const green = Color(0xFF22C55E);
  static const popup = Color(0xFF01020A);
  static const phone = Color(0xFF050508);
  static const hairline = Color(0x14FFFFFF); // rgba(255,255,255,.08)
  static const edge = Color(0x1FFFFFFF); // rgba(255,255,255,.12)
}

/// The 16:10 stage running one 7-second loop. [builder] gets the loop
/// position `p` (0–100) and `cq`. With reduce motion on, the loop stops at
/// [stillAt], a frame that shows the result. Unframed (welcome, `.gw`): no
/// card, nothing clipped.
class ObStage extends StatefulWidget {
  const ObStage({
    super.key,
    required this.label,
    required this.stillAt,
    required this.builder,
    this.aspectRatio = 16 / 10,
    this.framed = true,
  });

  final String label;
  final double stillAt;
  final double aspectRatio;
  final bool framed;
  final Widget Function(BuildContext context, double p, double cq) builder;

  @override
  State<ObStage> createState() => _ObStageState();
}

class _ObStageState extends State<ObStage> with SingleTickerProviderStateMixin {
  late final _loop = AnimationController(vsync: this, duration: const Duration(seconds: 7));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _loop.stop();
    } else if (!_loop.isAnimating) {
      _loop.repeat();
    }
  }

  @override
  void dispose() {
    _loop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final still = MediaQuery.disableAnimationsOf(context);
    // A picture: the system text size does not change it.
    final picture = MediaQuery.withNoTextScaling(
      child: RepaintBoundary(
        child: LayoutBuilder(builder: (context, box) {
          final cq = box.maxWidth / 100;
          return AnimatedBuilder(
            animation: _loop,
            builder: (context, _) => widget.builder(context, still ? widget.stillAt : _loop.value * 100, cq),
          );
        }),
      ),
    );
    return Semantics(
      image: true,
      label: widget.label,
      excludeSemantics: true,
      child: AspectRatio(
        aspectRatio: widget.aspectRatio,
        child: widget.framed
            ? DecoratedBox(
                decoration: BoxDecoration(
                  color: ObColors.stage,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: ObColors.hairline),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: ClipRRect(borderRadius: BorderRadius.circular(23), child: picture),
                ),
              )
            : picture,
      ),
    );
  }
}

/// Drawn text at [size] cq.
TextStyle obText(double cq, double size, {Color color = ObColors.ink, FontWeight weight = FontWeight.w400, double height = 1.2}) =>
    TextStyle(fontSize: size * cq, color: color, fontWeight: weight, height: height, letterSpacing: 0, decoration: TextDecoration.none);

/// Browser window: rounded, 1px edge, clips its content.
class ObWindow extends StatelessWidget {
  const ObWindow({super.key, required this.cq, required this.child});

  final double cq;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: ObColors.window,
        borderRadius: BorderRadius.circular(1.6 * cq),
        border: Border.all(color: ObColors.edge),
      ),
      child: child,
    );
  }
}

/// Toolbar (`gaq-bar`): window dots, address field, Zappit icon, puzzle icon.
class ObToolbar extends StatelessWidget {
  const ObToolbar({super.key, required this.cq, required this.field, required this.zap});

  final double cq;
  final Widget field;
  final Widget zap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.2 * cq,
      padding: EdgeInsets.symmetric(horizontal: 1.4 * cq),
      decoration: const BoxDecoration(
        color: ObColors.bar,
        border: Border(bottom: BorderSide(color: ObColors.hairline)),
      ),
      child: Row(
        spacing: 1.2 * cq,
        children: [
          Row(
            spacing: 0.6 * cq,
            children: [
              for (var i = 0; i < 3; i++)
                Container(width: cq, height: cq, decoration: const BoxDecoration(color: ObColors.dot, shape: BoxShape.circle)),
            ],
          ),
          Expanded(child: field),
          zap,
          Icon(Icons.extension, size: 2.6 * cq, color: ObColors.dim),
        ],
      ),
    );
  }
}

/// Zappit app icon, rounded.
class ObLogo extends StatelessWidget {
  const ObLogo({super.key, required this.size, required this.radius});

  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset('assets/images/app_icon_low_glow_512.png', width: size, height: size, filterQuality: FilterQuality.medium),
    );
  }
}

/// Mouse pointer (`gaq-cursor`): a 3cq box at the stage's top left, moved
/// with translate and scaled about its centre.
class ObCursor extends StatelessWidget {
  const ObCursor({super.key, required this.cq, required this.opacity, required this.x, required this.y, required this.scale});

  final double cq;
  final double opacity;
  final double x;
  final double y;
  final double scale;

  static const _svg =
      '<svg viewBox="0 0 24 24"><path d="M5 3l14 8.5-6.2 1.3L9.6 19z" fill="#F2F2F5" stroke="#0D0D11" stroke-width="1.2" stroke-linejoin="round"/></svg>';

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      width: 3 * cq,
      height: 3 * cq,
      child: Opacity(
        opacity: opacity.clamp(0, 1),
        child: Transform.translate(
          offset: Offset(x * cq, y * cq),
          child: Transform.scale(scale: scale, child: SvgPicture.string(_svg)),
        ),
      ),
    );
  }
}

/// Check mark (stroke, 24 viewBox).
class ObCheck extends StatelessWidget {
  const ObCheck({super.key, required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      '<svg viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12.5l4.5 4.5L19 7.5"/></svg>',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}

/// The sample QR code, dark modules on transparent.
class ObQr extends StatelessWidget {
  const ObQr({super.key});

  @override
  Widget build(BuildContext context) => const CustomPaint(painter: _QrPainter(), child: SizedBox.expand());
}

class _QrPainter extends CustomPainter {
  const _QrPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final n = obQrRows.length;
    final m = size.width / n;
    final paint = Paint()
      ..color = ObColors.field
      ..isAntiAlias = false;
    for (var y = 0; y < n; y++) {
      final row = obQrRows[y];
      for (var x = 0; x < n; x++) {
        // Slight overlap so neighbouring modules leave no hairline gaps.
        if (row.codeUnitAt(x) == 0x23) canvas.drawRect(Rect.fromLTWH(x * m, y * m, m + 0.5, m + 0.5), paint);
      }
    }
  }

  @override
  bool shouldRepaint(_QrPainter oldDelegate) => false;
}
