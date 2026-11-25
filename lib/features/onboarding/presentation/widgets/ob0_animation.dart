import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob_stage.dart';

/// Welcome (design OB-0, `gw-*`): tapping play/pause on the phone pauses the
/// video on the website open in the laptop's browser, a second tap resumes it.
/// Full screen width, 1:0.84, no card; `cq` is 1% of that width. The video
/// plays only inside the page's player (never full screen); the page and the
/// player clip their own content.
class Ob0Animation extends StatelessWidget {
  const Ob0Animation({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ObStage(
      label: s.onboarding0AnimLabel,
      stillAt: 45,
      aspectRatio: 1 / 0.84,
      framed: false,
      builder: (context, p, cq) => _frame(s, p, cq),
    );
  }

  Widget _frame(S s, double p, double cq) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // `.gw::before`: blue glow, ellipse 80×70 at (10, 8).
        // A 70cq circle stretched to 80cq wide (`closest-side` radial gradient).
        Positioned(
          left: 15 * cq,
          top: 8 * cq,
          width: 70 * cq,
          height: 70 * cq,
          child: Transform.scale(
            scaleX: 80 / 70,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [Color(0x2E3B82F6), Color(0x003B82F6)]),
              ),
            ),
          ),
        ),
        Positioned(left: 5 * cq, top: 6 * cq, width: 70 * cq, height: 44 * cq, child: _laptop(p, cq)),
        Positioned(left: 1 * cq, top: 49.6 * cq, width: 78 * cq, height: 3 * cq, child: _base(cq)),
        Positioned(left: 63 * cq, top: 26 * cq, width: 30 * cq, height: 57 * cq, child: _phone(s, p, cq)),
        // Above the phone (z-index 2); the arcs are centered outside its corner.
        Positioned(left: 50.5 * cq, top: 13.5 * cq, width: 11 * cq, height: 11 * cq, child: _waves(p)),
      ],
    );
  }

  // ── Laptop: a video site open in the browser ──────────────────────────────

  static const _frameColor = Color(0xFF2C2C38);
  static const _pageColor = Color(0xFFF4F4F7);

  Widget _laptop(double p, double cq) {
    final r = Radius.circular(2.4 * cq);
    final rb = Radius.circular(0.8 * cq);
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: _pageColor,
        border: Border.all(color: _frameColor, width: 0.9 * cq),
        borderRadius: BorderRadius.only(topLeft: r, topRight: r, bottomLeft: rb, bottomRight: rb),
      ),
      // `gw-web`: positions are in cq from the page's top left.
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(left: 0, right: 0, top: 0, height: 4.4 * cq, child: _chrome(cq)),
          Positioned(left: 0, right: 0, top: 4.4 * cq, height: 4.6 * cq, child: _siteHeader(cq)),
          Positioned(left: 2 * cq, top: 9.6 * cq, width: 40 * cq, height: 22.5 * cq, child: _player(p, cq)),
          Positioned(left: 2 * cq, top: 33.6 * cq, width: 30 * cq, height: 1.4 * cq, child: _pill(const Color(0xFF5C5C68))),
          Positioned(left: 2 * cq, top: 36.6 * cq, child: _channelRow(cq)),
          Positioned(left: 44.5 * cq, top: 9.6 * cq, child: _suggested(cq)),
        ],
      ),
    );
  }

  static Widget _pill(Color color) =>
      DecoratedBox(decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(999)));

  static Widget _dot(double size, Color color) =>
      SizedBox(width: size, height: size, child: DecoratedBox(decoration: BoxDecoration(color: color, shape: BoxShape.circle)));

  /// `gw-chrome`: window dots and the address bar.
  Widget _chrome(double cq) {
    return ColoredBox(
      color: const Color(0xFFDEDEE5),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.4 * cq),
        child: Row(
          spacing: cq,
          children: [
            Row(spacing: 0.6 * cq, children: [for (var i = 0; i < 3; i++) _dot(cq, const Color(0xFFB5B5C0))]),
            Expanded(
              child: Container(
                height: 2.4 * cq,
                padding: EdgeInsets.symmetric(horizontal: cq),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(999)),
                child: Row(
                  spacing: 0.6 * cq,
                  children: [
                    _dot(0.9 * cq, const Color(0xFF9A9AA6)),
                    SizedBox(width: 12 * cq, height: 0.8 * cq, child: _pill(const Color(0xFFC9C9D2))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// `gw-head`: menu, logo placeholder (grey icon and bar), search, profile.
  Widget _siteHeader(double cq) {
    const ink = Color(0xFF2C2C38);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2 * cq),
      child: Row(
        spacing: 1.2 * cq,
        children: [
          SizedBox(
            width: 2 * cq,
            height: 1.4 * cq,
            child: Stack(
              children: [
                for (final y in const [0.0, 0.55, 1.1])
                  Positioned(left: 0, right: 0, top: y * cq, height: 0.3 * cq, child: const ColoredBox(color: Color(0xFF55555F))),
              ],
            ),
          ),
          Row(
            spacing: 0.5 * cq,
            children: [
              SizedBox(
                width: 2.8 * cq,
                height: 2 * cq,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: ink, borderRadius: BorderRadius.circular(0.6 * cq)),
                  child: CustomPaint(painter: _PlayTrianglePainter(cq)),
                ),
              ),
              SizedBox(width: 5 * cq, height: cq, child: _pill(ink)),
            ],
          ),
          SizedBox(width: 3.8 * cq),
          Container(
            width: 24 * cq,
            height: 2.6 * cq,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: const Color(0xFFCFCFD8), width: 0.2 * cq),
            ),
          ),
          const Spacer(),
          _dot(2.4 * cq, const Color(0xFFC9C9D2)),
        ],
      ),
    );
  }

  /// `gw-chan`: channel avatar, name, and a button placeholder.
  Widget _channelRow(double cq) {
    return Row(
      spacing: cq,
      children: [
        _dot(2.6 * cq, const Color(0xFFC9C9D2)),
        SizedBox(width: 9 * cq, height: cq, child: _pill(const Color(0xFF9A9AA6))),
        SizedBox(width: 11 * cq),
        SizedBox(width: 8 * cq, height: 2.4 * cq, child: _pill(const Color(0xFFE2E2E8))),
      ],
    );
  }

  /// `gw-side`: four recommended videos.
  Widget _suggested(double cq) {
    return Column(
      spacing: 1.4 * cq,
      children: [
        for (var i = 0; i < 4; i++)
          Row(
            spacing: cq,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10 * cq,
                height: 5.6 * cq,
                decoration: BoxDecoration(color: const Color(0xFFCFCFD8), borderRadius: BorderRadius.circular(0.6 * cq)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.3 * cq),
                child: Column(
                  spacing: 0.7 * cq,
                  children: [
                    SizedBox(width: 10 * cq, height: 0.9 * cq, child: _pill(const Color(0xFF9A9AA6))),
                    SizedBox(width: 6 * cq, height: 0.9 * cq, child: _pill(const Color(0xFFC9C9D2))),
                  ],
                ),
              ),
            ],
          ),
      ],
    );
  }

  /// `gw-player`: the night drive, only inside the player.
  Widget _player(double p, double cq) {
    // Moves only while playing (0–24%, 66–100%), linear. 24%: -8.28 / -7.45cq.
    final hills = kf(p, [0, 24, 66, 100], [0, -8.28, -8.28, -20], curve: Curves.linear);
    final road = kf(p, [0, 24, 66, 100], [0, -7.45, -7.45, -18], curve: Curves.linear);
    final dim = kf(p, [0, 23.5, 25.5, 65.5, 67.5], [0, 0, .42, .42, 0]);
    final pauseOpacity = kf(p, [0, 23.5, 25.5, 27, 65.5, 66.5], [0, 0, 1, 1, 1, 0]);
    final pauseScale = kf(p, [0, 23.5, 25.5, 27], [.6, .6, 1.08, 1]);
    final playOpacity = kf(p, [0, 65.5, 67, 69, 74], [0, 0, 1, 1, 0]);
    final playScale = kf(p, [0, 65.5, 67, 69, 74], [.6, .6, 1.08, 1, 1.15]);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.9 * cq),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF1A2558), Color(0xFF0E1430)],
          stops: [0, .7],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          for (final (x, y) in const [(.12, .14), (.30, .28), (.52, .10), (.64, .32), (.08, .40)])
            Positioned(
              left: x * 40 * cq,
              top: y * 22.5 * cq,
              width: 0.45 * cq,
              height: 0.45 * cq,
              child: const DecoratedBox(decoration: BoxDecoration(color: Color(0xB3C7D2FE), shape: BoxShape.circle)),
            ),
          Positioned(
            right: 5 * cq,
            top: 2.6 * cq,
            width: 4.4 * cq,
            height: 4.4 * cq,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFFF5F0DC),
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: const Color(0x59F5F0DC), blurRadius: 2.4 * cq)],
              ),
            ),
          ),
          Positioned(left: 0, right: 0, bottom: 4.6 * cq, height: 5 * cq, child: CustomPaint(painter: _HillsPainter(offset: hills * cq, cq: cq))),
          Positioned(left: 0, right: 0, bottom: 0, height: 4.8 * cq, child: CustomPaint(painter: _RoadPainter(offset: road * cq, cq: cq))),
          Positioned(left: 11 * cq, bottom: 2.6 * cq, width: 7 * cq, height: 3 * cq, child: _car(cq)),
          // `gw-prog`: progress bar, 38%.
          Positioned(
            left: 1.2 * cq,
            right: 1.2 * cq,
            bottom: cq,
            height: 0.35 * cq,
            child: DecoratedBox(
              decoration: BoxDecoration(color: const Color(0x4DFFFFFF), borderRadius: BorderRadius.circular(999)),
              child: FractionallySizedBox(alignment: Alignment.centerLeft, widthFactor: .38, child: _pill(Colors.white)),
            ),
          ),
          Positioned.fill(child: ColoredBox(color: Colors.black.withValues(alpha: dim))),
          _badge(cq, pauseOpacity, pauseScale, _pauseSvg),
          _badge(cq, playOpacity, playScale, _playSvg),
        ],
      ),
    );
  }

  /// Car 7×3cq: stays in place while the hills and road scroll.
  Widget _car(double cq) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 1.5 * cq,
          width: 3.5 * cq,
          bottom: 1.8 * cq,
          height: 1.2 * cq,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFF2563EB),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(0.8 * cq), topRight: Radius.circular(0.9 * cq)),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0.6 * cq,
          height: 1.4 * cq,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: ObColors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.6 * cq),
                topRight: Radius.circular(0.8 * cq),
                bottomLeft: Radius.circular(0.3 * cq),
                bottomRight: Radius.circular(0.3 * cq),
              ),
            ),
          ),
        ),
        for (final x in const [.14, .62])
          Positioned(
            left: x * 7 * cq,
            bottom: 0,
            width: 1.5 * cq,
            height: 1.5 * cq,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ObColors.field,
                shape: BoxShape.circle,
                border: Border.all(color: ObColors.dim, width: 0.3 * cq),
              ),
            ),
          ),
        // Headlight beam (`gw-light`): right: -4.5cq, a narrowing wedge.
        Positioned(
          left: 7 * cq,
          bottom: 0.8 * cq,
          width: 4.5 * cq,
          height: 1.2 * cq,
          child: ClipPath(
            clipper: const _BeamClipper(),
            child: const DecoratedBox(
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0x73FEF08A), Color(0x00FEF08A)])),
            ),
          ),
        ),
      ],
    );
  }

  /// Pause / play badge in the middle of the video (`gw-badge`, 7cq).
  Widget _badge(double cq, double opacity, double scale, String svg) {
    return Center(
      child: Opacity(
        opacity: opacity.clamp(0, 1),
        child: Transform.scale(
          scale: scale,
          child: Container(
            width: 7 * cq,
            height: 7 * cq,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Color(0xB80D0D11), shape: BoxShape.circle),
            child: _icon(svg, 3.6 * cq, ObColors.ink),
          ),
        ),
      ),
    );
  }

  Widget _base(double cq) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3A3A48), Color(0xFF23232D)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.4 * cq),
          topRight: Radius.circular(0.4 * cq),
          bottomLeft: Radius.circular(2 * cq),
          bottomRight: Radius.circular(2 * cq),
        ),
      ),
      child: Stack(
        children: [
          // Notch for opening the lid.
          Positioned(
            left: 32 * cq,
            top: 0,
            width: 14 * cq,
            height: cq,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ObColors.bar,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(cq), bottomRight: Radius.circular(cq)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Signal arcs ──────────────────────────────────────────────────────────

  Widget _waves(double p) {
    final o = [
      kf(p, [0, 17, 18.5, 22, 59, 60.5, 64], [0, 0, 1, 0, 0, 1, 0]),
      kf(p, [0, 18.5, 20, 23.5, 60.5, 62, 65.5], [0, 0, 1, 0, 0, 1, 0]),
      kf(p, [0, 20, 21.5, 25, 62, 63.5, 67], [0, 0, 1, 0, 0, 1, 0]),
    ];
    return CustomPaint(painter: _WavesPainter(o), child: const SizedBox.expand());
  }

  // ── Phone ─────────────────────────────────────────────────────────────────

  Widget _phone(S s, double p, double cq) {
    final btnScale = kf(p, [0, 15, 17, 20, 57, 59, 62], [1, 1, .9, 1, 1, .9, 1]);
    final pauseIc = kf(p, [0, 16.5, 18, 58.5, 60], [1, 1, 0, 0, 1]);
    final pauseIcScale = kf(p, [0, 16.5, 18, 58.5, 60], [1, 1, .6, .6, 1]);
    final playIc = kf(p, [0, 16.5, 18, 58.5, 60], [0, 0, 1, 1, 0]);
    final playIcScale = kf(p, [0, 16.5, 18, 58.5, 60], [.6, .6, 1, 1, .6]);
    final ripple = kf(p, [0, 16, 17, 25, 58, 59, 67], [0, 0, .9, 0, 0, .9, 0]);
    final rippleScale = kf(p, [0, 16, 17, 25, 58, 59, 67], [1, 1, 1, 1.9, 1.9, 1, 1.9]);
    const touchT = <double>[0, 8, 12, 15, 17, 20, 26, 50, 54, 57, 59, 62, 68];
    final touch = kf(p, touchT, [0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0]);
    final touchMove = kf(p, touchT, [1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1]);
    final touchScale = kf(p, touchT, [1, 1, 1, 1, .78, 1, 1, 1, 1, 1, .78, 1, 1]);

    final border = 0.9 * cq;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: ObColors.phone,
        borderRadius: BorderRadius.circular(5 * cq),
        border: Border.all(color: _frameColor, width: border),
        boxShadow: [BoxShadow(color: const Color(0x99000000), offset: Offset(0, 2 * cq), blurRadius: 6 * cq)],
      ),
      child: LayoutBuilder(builder: (context, box) {
        final cx = box.maxWidth / 2;
        Widget centered(double top, double size, Widget child) =>
            Positioned(left: cx - size / 2, top: top, width: size, height: size, child: child);
        return Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            // Dynamic Island.
            Positioned(
              left: cx - 4.5 * cq,
              top: 1.6 * cq,
              width: 9 * cq,
              height: 2.4 * cq,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(color: ObColors.block),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 6.5 * cq,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.8 * cq, vertical: 0.8 * cq),
                  decoration: BoxDecoration(color: ObColors.block, borderRadius: BorderRadius.circular(999)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 0.8 * cq,
                    children: [
                      Container(
                        width: 1.2 * cq,
                        height: 1.2 * cq,
                        decoration: const BoxDecoration(color: ObColors.green, shape: BoxShape.circle),
                      ),
                      Text(
                        s.connected,
                        maxLines: 1,
                        style: obText(cq, 1.9, color: const Color(0xFFD4D4DC), weight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(left: 2 * cq, top: 22.5 * cq, width: 7 * cq, height: 7 * cq, child: _seek(cq, _backSvg)),
            Positioned(right: 2 * cq, top: 22.5 * cq, width: 7 * cq, height: 7 * cq, child: _seek(cq, _fwdSvg)),
            centered(
              20 * cq,
              12 * cq,
              Transform.scale(
                scale: btnScale,
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: ObColors.blue, shape: BoxShape.circle),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: pauseIc.clamp(0, 1),
                        child: Transform.scale(scale: pauseIcScale, child: _icon(_pauseSvg, 5.4 * cq, Colors.white)),
                      ),
                      Opacity(
                        opacity: playIc.clamp(0, 1),
                        child: Transform.scale(scale: playIcScale, child: _icon(_playSvg, 5.4 * cq, Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(left: 3.5 * cq, right: 3.5 * cq, top: 37 * cq, height: 5 * cq, child: _bar(cq)),
            Positioned(left: 3.5 * cq, right: 9 * cq, top: 44 * cq, height: 5 * cq, child: _bar(cq)),
            if (ripple > 0)
              centered(
                20 * cq,
                12 * cq,
                Opacity(
                  opacity: ripple.clamp(0, 1),
                  child: Transform.scale(
                    scale: rippleScale,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: ObColors.blueLight, width: 0.6 * cq),
                      ),
                    ),
                  ),
                ),
              ),
            if (touch > 0)
              centered(
                22.5 * cq,
                7 * cq,
                Opacity(
                  opacity: touch.clamp(0, 1),
                  child: Transform.translate(
                    offset: Offset(3 * cq * touchMove, 6 * cq * touchMove),
                    child: Transform.scale(
                      scale: touchScale,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0x8CF2F2F5),
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xD9FFFFFF), width: 0.4 * cq),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      }),
    );
  }

  Widget _seek(double cq, String svg) => Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: ObColors.block, shape: BoxShape.circle),
        child: _icon(svg, 3.4 * cq, ObColors.muted),
      );

  Widget _bar(double cq) => DecoratedBox(
        decoration: BoxDecoration(color: ObColors.stage, borderRadius: BorderRadius.circular(1.4 * cq)),
      );

  static const _pauseSvg =
      '<svg viewBox="0 0 24 24" fill="#000"><rect x="6.5" y="5" width="3.6" height="14" rx="1.2"/><rect x="13.9" y="5" width="3.6" height="14" rx="1.2"/></svg>';
  static const _playSvg =
      '<svg viewBox="0 0 24 24" fill="#000"><path d="M8 5.6v12.8a1 1 0 0 0 1.5.86l10.2-6.4a1 1 0 0 0 0-1.72L9.5 4.74A1 1 0 0 0 8 5.6z"/></svg>';
  static const _backSvg =
      '<svg viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"><path d="M4 12a8 8 0 1 0 2.4-5.7"/><path d="M4 4v4.5h4.5"/></svg>';
  static const _fwdSvg =
      '<svg viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"><path d="M20 12a8 8 0 1 1-2.4-5.7"/><path d="M20 4v4.5h-4.5"/></svg>';

  static Widget _icon(String svg, double size, Color color) => SvgPicture.string(
        svg,
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
}

/// `gw-hills`: half-ellipse humps, one per 20cq tile (5cq high), scrolled by [offset].
class _HillsPainter extends CustomPainter {
  const _HillsPainter({required this.offset, required this.cq});

  final double offset;
  final double cq;

  @override
  void paint(Canvas canvas, Size size) {
    final tile = 20 * cq;
    final paint = Paint()..color = const Color(0xFF24305C);
    canvas.clipRect(Offset.zero & size);
    for (var x = offset % tile - tile; x < size.width; x += tile) {
      canvas.drawOval(Rect.fromCenter(center: Offset(x + tile / 2, size.height), width: tile, height: size.height * 2), paint);
    }
  }

  @override
  bool shouldRepaint(_HillsPainter old) => old.offset != offset || old.cq != cq;
}

/// `gw-road`: dark road with 2cq dashes every 4.5cq (0.4cq high, at 45%), scrolled by [offset].
class _RoadPainter extends CustomPainter {
  const _RoadPainter({required this.offset, required this.cq});

  final double offset;
  final double cq;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = const Color(0xFF16192B));
    final tile = 4.5 * cq;
    final h = 0.4 * cq;
    final y = (size.height - h) * .45;
    final paint = Paint()..color = const Color(0xFFE9E9F0);
    for (var x = offset % tile - tile; x < size.width; x += tile) {
      canvas.drawRect(Rect.fromLTWH(x, y, 2 * cq, h), paint);
    }
  }

  @override
  bool shouldRepaint(_RoadPainter old) => old.offset != offset || old.cq != cq;
}

/// Play triangle of the site's logo placeholder (`gw-logo i::after`).
class _PlayTrianglePainter extends CustomPainter {
  const _PlayTrianglePainter(this.cq);

  final double cq;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(1.1 * cq, 0.55 * cq)
      ..lineTo(1.1 * cq, 1.45 * cq)
      ..lineTo(1.9 * cq, cq)
      ..close();
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(_PlayTrianglePainter old) => old.cq != cq;
}

/// `clip-path: polygon(0 35%, 100% 0, 100% 100%, 0 65%)`.
class _BeamClipper extends CustomClipper<Path> {
  const _BeamClipper();

  @override
  Path getClip(Size size) => Path()
    ..moveTo(0, size.height * .35)
    ..lineTo(size.width, 0)
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height * .65)
    ..close();

  @override
  bool shouldReclip(_BeamClipper oldClipper) => false;
}

/// `gw-wave`: three quarter arcs on the 24 grid of the design's SVG, centered
/// on the box's bottom-right corner (1.5cq outside the phone's top-left
/// corner), radius 7 / 13 / 19, from the bottom (180°) to the top (270°).
/// Not an SVG: its viewBox would cut off the round caps. Drawn above the phone
/// and never clipped.
class _WavesPainter extends CustomPainter {
  const _WavesPainter(this.opacity);

  final List<double> opacity;

  static const _radii = [7.0, 13.0, 19.0];

  @override
  void paint(Canvas canvas, Size size) {
    final u = size.width / 24;
    final center = Offset(24 * u, 24 * u);
    for (var i = 0; i < 3; i++) {
      final o = opacity[i].clamp(0.0, 1.0);
      if (o <= 0) continue;
      final paint = Paint()
        ..color = ObColors.blueLight.withValues(alpha: o)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.4 * u
        ..strokeCap = StrokeCap.round;
      canvas.drawArc(Rect.fromCircle(center: center, radius: _radii[i] * u), math.pi, math.pi / 2, false, paint);
    }
  }

  @override
  bool shouldRepaint(_WavesPainter old) => !listEquals(old.opacity, opacity);
}
