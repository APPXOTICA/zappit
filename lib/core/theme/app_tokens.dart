import 'package:flutter/material.dart';

/// Design tokens from `zappit_assets/docs/design/zappit-tokens.css`.
///
/// Widgets read colours, spacing, radii and sizes from here only
/// (`context.tokens`). Usage rules per token are in `ds/tokens.json`.
@immutable
class AppTokens extends ThemeExtension<AppTokens> {
  const AppTokens({
    required this.bgBase,
    required this.bgRaised,
    required this.surface100,
    required this.surface200,
    required this.surface300,
    required this.hairline,
    required this.hairlineStrong,
    required this.ink,
    required this.inkMuted,
    required this.inkDisabled,
    required this.accent,
    required this.accentText,
    required this.accentSoft,
    required this.onAccent,
    required this.signalLive,
    required this.signalOff,
    required this.signalAd,
    required this.scrim,
  });

  // Background
  final Color bgBase;
  final Color bgRaised;

  // Surfaces (300 is for pressed / selected only)
  final Color surface100;
  final Color surface200;
  final Color surface300;

  // Lines
  final Color hairline;
  final Color hairlineStrong;

  // Text
  final Color ink;
  final Color inkMuted;
  final Color inkDisabled;

  // The single accent. Never decorative.
  final Color accent;
  final Color accentText;
  final Color accentSoft;
  final Color onAccent;

  // Signals
  final Color signalLive;
  final Color signalOff;
  final Color signalAd;

  final Color scrim;

  // Spacing
  static const double space1 = 4;
  static const double space2 = 8;
  static const double space3 = 12;
  static const double space4 = 16;
  static const double space6 = 24;
  static const double space8 = 32;

  // Radius
  static const double radiusSm = 10;
  static const double radiusMd = 16;
  static const double radiusLg = 28;
  static const double radiusFull = 999;

  // Sizes
  static const double targetMin = 48;
  static const double controlMd = 56;
  static const double controlLg = 72;
  static const double iconMd = 24;
  static const double iconLg = 32;
  static const double navBar = 64;

  /// Tablet content width.
  static const double contentMaxWidth = 600;

  static const dark = AppTokens(
    bgBase: Color(0xFF0D0D11),
    bgRaised: Color(0xFF121216),
    surface100: Color(0xFF1C1C24),
    surface200: Color(0xFF22222C),
    surface300: Color(0xFF2C2C38),
    hairline: Color(0x14FFFFFF),
    hairlineStrong: Color(0x29FFFFFF),
    ink: Color(0xFFF2F2F5),
    inkMuted: Color(0xFFA1A1AE),
    inkDisabled: Color(0xFF6E6E7C),
    accent: Color(0xFF3B82F6),
    accentText: Color(0xFF60A5FA),
    accentSoft: Color(0x293B82F6),
    onAccent: Color(0xFF0D0D11),
    signalLive: Color(0xFF22C55E),
    signalOff: Color(0xFFF87171),
    signalAd: Color(0xFFF5B83D),
    scrim: Color(0xA3050508),
  );

  @override
  AppTokens copyWith() => this;

  @override
  AppTokens lerp(ThemeExtension<AppTokens>? other, double t) => this;
}

/// Type scale from `zappit-app.css` (`za-*`).
abstract final class AppText {
  static const caption = TextStyle(fontSize: 12, height: 16 / 12, fontWeight: FontWeight.w500, letterSpacing: 0.12);
  static const label = TextStyle(fontSize: 13, height: 18 / 13, fontWeight: FontWeight.w500, letterSpacing: 0.13);
  static const body = TextStyle(fontSize: 15, height: 22 / 15);
  static const bodyStrong = TextStyle(fontSize: 15, height: 22 / 15, fontWeight: FontWeight.w600);
  static const heading = TextStyle(fontSize: 20, height: 26 / 20, fontWeight: FontWeight.w600, letterSpacing: -0.2);
  static const bigTitle = TextStyle(fontSize: 26, height: 32 / 26, fontWeight: FontWeight.w600, letterSpacing: -0.26);
  static const section = TextStyle(fontSize: 12, height: 16 / 12, fontWeight: FontWeight.w600, letterSpacing: 0.96);
  static const button = TextStyle(fontSize: 16, height: 22 / 16, fontWeight: FontWeight.w600);
  static const tabular = TextStyle(fontFeatures: [FontFeature.tabularFigures()]);
}
