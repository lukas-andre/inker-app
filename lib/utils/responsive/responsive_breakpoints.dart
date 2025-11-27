import 'package:flutter/material.dart';

class ResponsiveBreakpoints {
  static const double mobileSmall = 360;
  static const double mobile = 600;
  static const double tablet = 900;
  static const double desktop = 1200;
  static const double desktopLarge = 1800;
}

enum DeviceType {
  mobileSmall,
  mobile,
  tablet,
  desktop,
  desktopLarge,
}

class Responsive {
  static bool isMobileSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < ResponsiveBreakpoints.mobileSmall;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < ResponsiveBreakpoints.mobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= ResponsiveBreakpoints.mobile &&
      MediaQuery.of(context).size.width < ResponsiveBreakpoints.tablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= ResponsiveBreakpoints.tablet &&
      MediaQuery.of(context).size.width < ResponsiveBreakpoints.desktop;

  static bool isDesktopLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= ResponsiveBreakpoints.desktop;

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    if (width < ResponsiveBreakpoints.mobileSmall) {
      return DeviceType.mobileSmall;
    } else if (width < ResponsiveBreakpoints.mobile) {
      return DeviceType.mobile;
    } else if (width < ResponsiveBreakpoints.tablet) {
      return DeviceType.tablet;
    } else if (width < ResponsiveBreakpoints.desktop) {
      return DeviceType.desktop;
    } else {
      return DeviceType.desktopLarge;
    }
  }

  static double value(
    BuildContext context, {
    required double mobile,
    double? tablet,
    double? desktop,
    double? desktopLarge,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobileSmall:
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
      case DeviceType.desktopLarge:
        return desktopLarge ?? desktop ?? tablet ?? mobile;
    }
  }

  static T valueByType<T>(
    BuildContext context, {
    required T mobile,
    T? tablet,
    T? desktop,
    T? desktopLarge,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobileSmall:
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
      case DeviceType.desktopLarge:
        return desktopLarge ?? desktop ?? tablet ?? mobile;
    }
  }

  static double fontSize(BuildContext context, double baseSize) {
    final deviceType = getDeviceType(context);
    final textScaler = MediaQuery.of(context).textScaler;
    
    double scaledSize = baseSize;
    
    switch (deviceType) {
      case DeviceType.mobileSmall:
        scaledSize = baseSize * 0.85;
        break;
      case DeviceType.mobile:
        scaledSize = baseSize;
        break;
      case DeviceType.tablet:
        scaledSize = baseSize * 1.1;
        break;
      case DeviceType.desktop:
        scaledSize = baseSize * 1.2;
        break;
      case DeviceType.desktopLarge:
        scaledSize = baseSize * 1.3;
        break;
    }
    
    return textScaler.scale(scaledSize);
  }

  static EdgeInsets padding(
    BuildContext context, {
    double horizontal = 16,
    double vertical = 16,
  }) {
    final deviceType = getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.mobileSmall:
        return EdgeInsets.symmetric(
          horizontal: horizontal * 0.75,
          vertical: vertical * 0.75,
        );
      case DeviceType.mobile:
        return EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        );
      case DeviceType.tablet:
        return EdgeInsets.symmetric(
          horizontal: horizontal * 1.5,
          vertical: vertical * 1.25,
        );
      case DeviceType.desktop:
      case DeviceType.desktopLarge:
        return EdgeInsets.symmetric(
          horizontal: horizontal * 2,
          vertical: vertical * 1.5,
        );
    }
  }
}