import 'package:flutter/services.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/theme/app_tokens.dart';

/// The only theme. Zappit is dark-only.
ThemeData get darkTheme {
  const t = AppTokens.dark;

  final textTheme = Typography.material2021().englishLike.apply(
        displayColor: t.ink,
        bodyColor: t.ink,
      );

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: const [AppTokens.dark],
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    colorScheme: ColorScheme.dark(
      primary: t.accent,
      onPrimary: t.onAccent,
      secondary: t.accentText,
      onSecondary: t.onAccent,
      surface: t.bgBase,
      onSurface: t.ink,
      surfaceContainerLowest: t.bgBase,
      surfaceContainerLow: t.bgRaised,
      surfaceContainer: t.surface100,
      surfaceContainerHigh: t.surface200,
      surfaceContainerHighest: t.surface300,
      error: t.signalOff,
      onError: t.onAccent,
      outline: t.hairlineStrong,
      outlineVariant: t.hairline,
    ),
    scaffoldBackgroundColor: t.bgBase,
    canvasColor: t.bgBase,
    textTheme: textTheme,
    iconTheme: IconThemeData(color: t.ink, size: AppTokens.iconMd),
    dividerTheme: DividerThemeData(color: t.hairline, thickness: 1, space: 1),
    appBarTheme: AppBarTheme(
      backgroundColor: t.bgBase,
      foregroundColor: t.ink,
      scrolledUnderElevation: 0,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      centerTitle: true,
      titleTextStyle: AppText.heading.copyWith(color: t.ink),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: t.bgRaised,
      modalBackgroundColor: t.bgRaised,
      surfaceTintColor: Colors.transparent,
      showDragHandle: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppTokens.radiusLg)),
      ),
      constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 64),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: t.surface300,
      contentTextStyle: AppText.body.copyWith(color: t.ink),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTokens.radiusSm),
        side: BorderSide(color: t.hairline),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: t.surface100,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
        side: BorderSide(color: t.hairlineStrong),
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected) ? t.onAccent : t.inkMuted,
      ),
      trackColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected) ? t.accent : t.surface300,
      ),
      trackOutlineColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected) ? Colors.transparent : t.hairlineStrong,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: t.ink,
      selectionColor: t.accentSoft,
      selectionHandleColor: t.accent,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: t.accent),
  );
}
