import 'package:flutter/material.dart';

import 'color_manager.dart';

abstract class ThemeManager {
  static final fontFamaily = "Inter";

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: fontFamaily,
    disabledColor: ColorManager.fontColor,
    appBarTheme: AppBarTheme(backgroundColor: ColorManager.background),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontFamily: fontFamaily),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(fontFamily: fontFamaily),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(fontFamily: fontFamaily),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.PRIMARY),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.PRIMARY),
      ),
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(color: ColorManager.fontColor),
      bodyMedium: TextStyle(color: ColorManager.fontColor),
      bodySmall: TextStyle(color: ColorManager.fontColor),
      headlineLarge: TextStyle(color: ColorManager.fontColor),
      headlineMedium: TextStyle(color: ColorManager.fontColor),
      headlineSmall: TextStyle(color: ColorManager.fontColor),
      titleLarge: TextStyle(color: ColorManager.fontColor),
      titleMedium: TextStyle(color: ColorManager.fontColor),
      titleSmall: TextStyle(color: ColorManager.fontColor),
    ),

    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: ColorManager.PRIMARY_MAIN,
    ).copyWith(surface: ColorManager.background),
  );
}
