import 'package:flutter/services.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/theme/app_theme_extension.dart';
import 'package:zappit/core/theme/app_colors.dart';

// 메인으로 사용할 Dark Theme (최대한 기본 설정을 유지하며 색상만 고정)
ThemeData get darkTheme {
  final baseTextTheme = Typography.material2021().englishLike.apply(
    displayColor: AppColorsDark.textMain,
    bodyColor: AppColorsDark.textMain,
  );

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: [AppCustomColors.dark],

    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent, // 웹/데스크탑용 호버링 효과 제거
    splashFactory: NoSplash.splashFactory, // 물결 애니메이션 연산 자체를 끔

    colorScheme: const ColorScheme.dark(
        primary: AppColorsDark.primary,
        onPrimary: Colors.white,
        secondary: AppColorsDark.secondary,
        onSecondary: Colors.white,
        tertiary: AppColorsDark.tertiary,
        onTertiary: Colors.white,
        surface: AppColorsDark.surface,
        onSurface: AppColorsDark.textMain,
        surfaceContainer: AppColorsDark.surfaceContainer,
        surfaceContainerHigh: AppColorsDark.surfaceContainerHigh,
        surfaceContainerHighest: AppColorsDark.surfaceContainerHighest,
        surfaceBright: AppColorsDark.surfaceBright,
        error: AppColorsDark.error,
        onError: Colors.white,
        outline: AppColorsDark.divider
    ),

    scaffoldBackgroundColor: AppColorsDark.backgroundBlack,
    canvasColor: AppColorsDark.backgroundBlack,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColorsDark.backgroundBlack,
      foregroundColor: AppColorsDark.textMain,
      scrolledUnderElevation: 0,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: AppColorsDark.textMain,
      ),
    ),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColorsDark.surfaceContainerHighest,
      contentTextStyle: TextStyle(
        color: AppColorsDark.textMain,
        fontSize: 16,
      ),
    ),

    cardTheme: CardThemeData(
      color: AppColorsDark.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColorsDark.divider, width: 1),
      ),
    ),

    dividerTheme: const DividerThemeData(
      color: AppColorsDark.divider,
      thickness: 1,
    ),

    iconTheme: const IconThemeData(
      color: AppColorsDark.textMain,
    ),

    checkboxTheme: CheckboxThemeData(
      checkColor:  WidgetStateProperty.all(AppColorsDark.primary),
      fillColor: WidgetStateProperty.all(Colors.transparent),
      shape: const CircleBorder(),
      side: WidgetStateBorderSide.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            // 체크되었을 때 테두리 색상
            return BorderSide(color: Colors.transparent, width: 1);
          }
          // 체크되지 않았을 때 테두리 색상
          return const BorderSide(color: Colors.white38, width: 2);
        },
      ),
    ),

    textTheme: baseTextTheme,

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColorsDark.surfaceContainerHighest,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldBorderRadius),
        borderSide: const BorderSide(color: Colors.transparent,),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldBorderRadius),
        borderSide: const BorderSide(color: Colors.transparent,),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.white,      // 커서(깜빡이는 선) 색상
      selectionColor: AppColorsDark.tertiary, // 드래그 선택 영역 색상
      selectionHandleColor: AppColorsDark.tertiary, // 선택 시 나타나는 물방울 핸들 색상
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsDark.tertiary,
        foregroundColor: Colors.white,
        shape: StadiumBorder(),
        elevation: 0,
        minimumSize: const Size.fromHeight(defaultButtonHeight),
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColorsDark.tertiary,
        foregroundColor: Colors.white,
        shape: StadiumBorder(),
        minimumSize: const Size.fromHeight(defaultButtonHeight),
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColorsDark.backgroundBlack,
      type: BottomNavigationBarType.fixed,
      enableFeedback: false,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white54,
      ),
    ),

    navigationRailTheme: const NavigationRailThemeData(
      backgroundColor: AppColorsDark.surface,
      indicatorColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 24),
      unselectedIconTheme: IconThemeData(color: Colors.white54, size: 24),
      selectedLabelTextStyle: TextStyle(
        color: Colors.white,
      ),
      unselectedLabelTextStyle: TextStyle(
        color: Colors.white54,
      ),
    ),
  );
}

// 나중에 구현할 Light Theme (Placeholder)
ThemeData get lightTheme {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(

    ),
  );
}
