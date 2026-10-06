import 'package:flutter/material.dart';

class AppColorsDark {
  // Accent
  static const Color primary = Colors.cyanAccent;
  static const Color secondary = Color(0xFF38BDF8);
  static const Color tertiary = Color(0xFFff7f50);
  static const Color accent = Color(0xFFFF7F50);

  // Backgrounds
  static const Color backgroundBlack = Color(0xFF000000);
  static const Color surface = Color(0xFF121212);
  static const Color surfaceBright = Color(0xFF303030);
  static const Color surfaceContainer = Color(0xFF141414);
  static const Color surfaceContainerHigh = Color(0xFF161616);
  static const Color surfaceContainerHighest = Color(0xFF181818);

  // Typography
  static const Color textMain = Color(0xFFE5E7EB);
  static const Color textSub = Color(0xFF9CA3AF);

  // Borders & Dividers
  static const Color divider = Color(0xFF222224);

  // Semantic
  static const Color error = Color(0xFFEF4444); // Tailwind red-500
  static const Color errorContainer = Color(0x1AEF4444); // 10% Opacity red (for Logout button bg)

  // Gradients (For Container decorations, not ThemeData)
  static const LinearGradient glossyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      secondary,
      tertiary,
    ],
  );
}

class AppColorsLight {
  static const Color textMain = Color(0xFF111827);
  static const Color textSub = Color(0xFF4B5563);
  static const Color divider = Color(0xFFE5E7EB);
  static const Color accent = Color(0xFF60A5FA);
}