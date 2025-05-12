import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: Colors.white,
        // tertiary: tertiaryColor,
        tertiary: redColor,
        onTertiary: Colors.white,
        error: redColor,
        onError: Colors.white,
        background: quaternaryColor,
        onBackground: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black,
      ),
      scaffoldBackgroundColor: primaryColor,
      cardColor: explorerSecondaryColor,
      textTheme: TextTheme(
        displayLarge: TextStyleTheme.headline1,
        displayMedium: TextStyleTheme.headline2,
        displaySmall: TextStyleTheme.headline3,
        bodyLarge: TextStyleTheme.bodyText1,
        bodyMedium: TextStyleTheme.bodyText2,
        titleMedium: TextStyleTheme.subtitle1,
        titleSmall: TextStyleTheme.subtitle2,
        labelSmall: TextStyleTheme.caption,
        labelLarge: TextStyleTheme.button,
      ),
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
        border: inputBorder,
        focusedBorder: focusedBorder,
        labelStyle: labelTextStyle,
        hintStyle: hintTextStyle,
        contentPadding: inputContentPadding,
        fillColor: inputBackgroundColor,
        filled: true,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 1.0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: TextStyleTheme.headline2,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: secondaryColor,
          side: BorderSide(color: secondaryColor),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: Colors.white,
        tertiary: redColor,
        onTertiary: Colors.white,
        error: redColor,
        onError: Colors.white,
        surface: explorerSecondaryColor,
        onSurface: Colors.white,
      ),
      scaffoldBackgroundColor: primaryColor,
      cardColor: explorerSecondaryColor,
      textTheme: TextTheme(
        displayLarge: TextStyleTheme.headline1,
        displayMedium: TextStyleTheme.headline2,
        displaySmall: TextStyleTheme.headline3,
        bodyLarge: TextStyleTheme.bodyText1,
        bodyMedium: TextStyleTheme.bodyText2,
        titleMedium: TextStyleTheme.subtitle1,
        titleSmall: TextStyleTheme.subtitle2,
        labelSmall: TextStyleTheme.caption,
        labelLarge: TextStyleTheme.button,
      ),
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
        border: inputBorder,
        focusedBorder: focusedBorder,
        labelStyle: labelTextStyle,
        hintStyle: hintTextStyle,
        contentPadding: inputContentPadding,
        fillColor: inputBackgroundColor,
        filled: true,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 1.0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: TextStyleTheme.headline2,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: secondaryColor,
          side: const BorderSide(color: secondaryColor),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
} 