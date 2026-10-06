import 'package:flutter/material.dart';
import 'package:zappit/core/constants/dimensions.dart';
import 'package:zappit/core/theme/app_theme_extension.dart';

extension BuildContextX on BuildContext {
  bool get isDarkMode {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.dark;
  }

  bool get isTablet => MediaQuery.sizeOf(this).shortestSide > tabletBreakPoint;
  bool get isPhone => !isTablet;

  Orientation get orientation {
    final width = MediaQuery.sizeOf(this).width;
    final height = MediaQuery.sizeOf(this).height;
    final isPortrait = height / width > 1.0;

    // debugPrint('Width: $width, Height: $height');
    // debugPrint('Screen ratio: ${height / width}');

    if (isPortrait) {
      return Orientation.portrait;
    } else {
      // Landscape mode is only allowed on tablets
      // Suppose tablets have a screen ratio of 1.7 or less
      return width / height < 1.7
          ? Orientation.landscape
          : Orientation.portrait;
    }
  }
}

extension ContextTheme on BuildContext {
  AppCustomColors get customColors => Theme.of(this).extension<AppCustomColors>()!;
}