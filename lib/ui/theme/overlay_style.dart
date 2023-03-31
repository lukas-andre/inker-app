import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_actions/external/platform_check/platform_check.dart';

class OverlayStyle {
  static void apply() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.dark // Dark == white status bar -- for IOS
        ));
  }

  static void setWhite() {
    if (PlatformCheck.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white, // Color for Android
          statusBarBrightness:
              Brightness.dark // Dark == white status bar -- for IOS
          ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light));
    }
  }

  static void setBlack() {
    if (PlatformCheck.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.black, // Color for Android
          statusBarBrightness:
              Brightness.light // Dark == white status bar -- for IOS
          ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent, // Color for Android
          statusBarBrightness:
              Brightness.light // Dark == white status bar -- for IOS
          ));
    }
  }
}
