import 'package:flutter/material.dart';
import 'package:zappit/core/constants/dimensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';

extension BuildContextX on BuildContext {
  bool get isTablet => MediaQuery.sizeOf(this).shortestSide > tabletBreakPoint;
  bool get isPhone => !isTablet;
}

extension ContextTheme on BuildContext {
  AppTokens get tokens => Theme.of(this).extension<AppTokens>() ?? AppTokens.dark;
}
