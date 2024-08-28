import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class QuotationListStyles {
  static Color backgroundColor = primaryColor;
  static Color appBarColor = primaryColor;
  static Color cardColor = inputBackgroundColor;
  static Color tabIndicatorColor = secondaryColor;

  static TextStyle appBarTitleStyle = TextStyleTheme.copyWith(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle tabLabelStyle = TextStyleTheme.copyWith(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle tabUnselectedLabelStyle = TextStyleTheme.copyWith(
    color: Colors.white.withOpacity(0.7),
    fontSize: 14,
  );

  static TextStyle errorTextStyle = TextStyleTheme.copyWith(
    color: Colors.white,
    fontSize: 16,
  );

  static TextStyle listTileTitleStyle = TextStyleTheme.copyWith(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle listTileSubtitleStyle = TextStyleTheme.copyWith(
    color: tertiaryColor,
    fontSize: 14,
  );

  static TextStyle listTileTrailingStyle = TextStyleTheme.copyWith(
    color: secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static EdgeInsets cardMargin =
      const EdgeInsets.symmetric(vertical: 4, horizontal: 8);
  static EdgeInsets listTilePadding = const EdgeInsets.all(12);

  static ShapeBorder cardShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
