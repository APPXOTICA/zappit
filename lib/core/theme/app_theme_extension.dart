import 'package:flutter/material.dart';

import 'package:zappit/core/theme/app_colors.dart';

@immutable
class AppCustomColors extends ThemeExtension<AppCustomColors> {
  final Color? textMain;
  final Color? textSub;
  final Color? divider;
  final Color? accent;

  const AppCustomColors({
    required this.textMain,
    required this.textSub,
    required this.divider,
    required this.accent,
  });

  @override
  AppCustomColors copyWith({
    Color? textMain,
    Color? textSub,
    Color? divider,
    Color? accent,
  }) {
    return AppCustomColors(
      textMain: textMain ?? this.textMain,
      textSub: textSub ?? this.textSub,
      divider: divider ?? this.divider,
      accent: accent ?? this.accent,
    );
  }

  @override
  AppCustomColors lerp(ThemeExtension<AppCustomColors>? other, double t) {
    if (other is! AppCustomColors) return this;
    return AppCustomColors(
      textMain: Color.lerp(textMain, other.textMain, t),
      textSub: Color.lerp(textSub, other.textSub, t),
      divider: Color.lerp(divider, other.divider, t),
      accent: Color.lerp(accent, other.accent, t),
    );
  }

  static const dark = AppCustomColors(
    textMain: AppColorsDark.textMain,
    textSub: AppColorsDark.textSub,
    divider: AppColorsDark.divider,
    accent: AppColorsDark.accent,
  );

  static const light = AppCustomColors(
    textMain: AppColorsLight.textMain,
    textSub: AppColorsLight.textSub,
    divider: AppColorsLight.divider,
    accent: AppColorsLight.accent,
  );
}