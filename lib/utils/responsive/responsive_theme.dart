import 'package:flutter/material.dart';
import 'responsive_breakpoints.dart';

class ResponsiveTheme {
  static ThemeData getResponsiveTheme(BuildContext context, ThemeData baseTheme) {
    final textTheme = _getResponsiveTextTheme(context, baseTheme.textTheme);
    
    return baseTheme.copyWith(
      textTheme: textTheme,
      appBarTheme: baseTheme.appBarTheme.copyWith(
        titleTextStyle: textTheme.titleLarge,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: baseTheme.elevatedButtonTheme.style?.copyWith(
          textStyle: WidgetStateProperty.all(textTheme.labelLarge),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: baseTheme.textButtonTheme.style?.copyWith(
          textStyle: WidgetStateProperty.all(textTheme.labelLarge),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: baseTheme.outlinedButtonTheme.style?.copyWith(
          textStyle: WidgetStateProperty.all(textTheme.labelLarge),
        ),
      ),
    );
  }

  static TextTheme _getResponsiveTextTheme(BuildContext context, TextTheme baseTheme) {
    final deviceType = Responsive.getDeviceType(context);
    
    double scaleFactor = 1.0;
    switch (deviceType) {
      case DeviceType.mobileSmall:
        scaleFactor = 0.85;
        break;
      case DeviceType.mobile:
        scaleFactor = 1.0;
        break;
      case DeviceType.tablet:
        scaleFactor = 1.1;
        break;
      case DeviceType.desktop:
        scaleFactor = 1.2;
        break;
      case DeviceType.desktopLarge:
        scaleFactor = 1.3;
        break;
    }

    return TextTheme(
      displayLarge: baseTheme.displayLarge?.copyWith(
        fontSize: (baseTheme.displayLarge?.fontSize ?? 57) * scaleFactor,
      ),
      displayMedium: baseTheme.displayMedium?.copyWith(
        fontSize: (baseTheme.displayMedium?.fontSize ?? 45) * scaleFactor,
      ),
      displaySmall: baseTheme.displaySmall?.copyWith(
        fontSize: (baseTheme.displaySmall?.fontSize ?? 36) * scaleFactor,
      ),
      headlineLarge: baseTheme.headlineLarge?.copyWith(
        fontSize: (baseTheme.headlineLarge?.fontSize ?? 32) * scaleFactor,
      ),
      headlineMedium: baseTheme.headlineMedium?.copyWith(
        fontSize: (baseTheme.headlineMedium?.fontSize ?? 28) * scaleFactor,
      ),
      headlineSmall: baseTheme.headlineSmall?.copyWith(
        fontSize: (baseTheme.headlineSmall?.fontSize ?? 24) * scaleFactor,
      ),
      titleLarge: baseTheme.titleLarge?.copyWith(
        fontSize: (baseTheme.titleLarge?.fontSize ?? 22) * scaleFactor,
      ),
      titleMedium: baseTheme.titleMedium?.copyWith(
        fontSize: (baseTheme.titleMedium?.fontSize ?? 16) * scaleFactor,
      ),
      titleSmall: baseTheme.titleSmall?.copyWith(
        fontSize: (baseTheme.titleSmall?.fontSize ?? 14) * scaleFactor,
      ),
      bodyLarge: baseTheme.bodyLarge?.copyWith(
        fontSize: (baseTheme.bodyLarge?.fontSize ?? 16) * scaleFactor,
      ),
      bodyMedium: baseTheme.bodyMedium?.copyWith(
        fontSize: (baseTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
      ),
      bodySmall: baseTheme.bodySmall?.copyWith(
        fontSize: (baseTheme.bodySmall?.fontSize ?? 12) * scaleFactor,
      ),
      labelLarge: baseTheme.labelLarge?.copyWith(
        fontSize: (baseTheme.labelLarge?.fontSize ?? 14) * scaleFactor,
      ),
      labelMedium: baseTheme.labelMedium?.copyWith(
        fontSize: (baseTheme.labelMedium?.fontSize ?? 12) * scaleFactor,
      ),
      labelSmall: baseTheme.labelSmall?.copyWith(
        fontSize: (baseTheme.labelSmall?.fontSize ?? 11) * scaleFactor,
      ),
    );
  }

  static double getResponsivePadding(BuildContext context, double basePadding) {
    return Responsive.value(
      context,
      mobile: basePadding,
      tablet: basePadding * 1.25,
      desktop: basePadding * 1.5,
      desktopLarge: basePadding * 1.75,
    );
  }

  static double getResponsiveSpacing(BuildContext context, double baseSpacing) {
    return Responsive.value(
      context,
      mobile: baseSpacing,
      tablet: baseSpacing * 1.2,
      desktop: baseSpacing * 1.4,
      desktopLarge: baseSpacing * 1.6,
    );
  }

  static double getResponsiveIconSize(BuildContext context, double baseSize) {
    return Responsive.value(
      context,
      mobile: baseSize,
      tablet: baseSize * 1.1,
      desktop: baseSize * 1.2,
      desktopLarge: baseSize * 1.3,
    );
  }
}