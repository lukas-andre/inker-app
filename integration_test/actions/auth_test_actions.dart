// auth_test_actions.dart
import 'dart:ui';

import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:patrol/patrol.dart';

class AuthTestActions {
  static Future<void> skipOnboarding(PatrolIntegrationTester $) async {
    await $.pumpAndSettle();
    await $(OnBoardingPage).waitUntilVisible();
    await $('Saltar').tap();
  }

  static Future<void> performLogin(
    PatrolIntegrationTester $, {
    required String email,
    required String password,
  }) async {
    await $(K.signInButton).tap();
    await $(K.usernameField).enterText(email);
    await $(K.passwordField).enterText(password);
    await $(K.loginButton).tap();
    await $.pumpAndSettle();
  }

  static Future<void> performLogout(PatrolIntegrationTester $) async {
    await $(K.settingsButton).tap();
    await $(SettingsPage).waitUntilVisible();
    await $(K.logoutButton).tap();
    await $(K.confirmLogoutButton).tap();
    await $(OnBoardingPage).waitUntilVisible();
  }

  static Future<void> customerLogout(
    PatrolIntegrationTester $,
  ) async {
    if (!$(CustomerAppPage).visible) {
      await $.native.swipe(
        from: const Offset(0.5, 0.5),
        to: const Offset(0.5, 0.1),
      );
      await $(CustomerAppPage).waitUntilVisible();
    }

    if (!$(K.artistProfileContent).visible) {
      await $(K.profileTab).tap();
    }

    await performLogout($);
  }

  static Future<void> artistLogout(
    PatrolIntegrationTester $,
  ) async {
    if (!$(ArtistAppPage).visible) {
      await $.native.swipe(
        from: const Offset(0.5, 0.5),
        to: const Offset(0.5, 0.1),
      );
    }

    if (!$(K.artistProfileContent).visible) {
      await $(K.profileTab).tap();
    }

    await performLogout($);
  }
}
