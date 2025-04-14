// auth_test_actions.dart
import 'dart:ui';

import 'package:flutter/material.dart';
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
    try {
      if ($(K.settingsButton).visible) {
        await $(K.settingsButton).tap();
      }
      else if ($(const Key('profileSettingsButton')).visible) {
        await $(const Key('profileSettingsButton')).tap();
      } else {
        await $('Configuración').tap();
      }

      await $(SettingsPage).waitUntilVisible();

      await $.native.swipe(
        from: const Offset(0.5, 0.8),
        to: const Offset(0.5, 0.2),
      );

      await $(K.logoutButton).waitUntilVisible();
      await $(K.logoutButton).tap();

      await $(K.confirmLogoutButton).waitUntilVisible();
      await $(K.confirmLogoutButton).tap();

      await $(OnBoardingPage).waitUntilVisible();
    } catch (e) {
      print('Error durante el cierre de sesión: $e');
      try {
        if ($(SettingsPage).visible) {
          await $('Cerrar sesión').tap();
          await $('Cerrar sesión').waitUntilVisible();
          await $('Cerrar sesión').at(1).tap();
          await $(OnBoardingPage).waitUntilVisible();
        }
      } catch (e2) {
        print('Error secundario durante el cierre de sesión: $e2');
        rethrow;
      }
      rethrow;
    }
  }

  static Future<void> customerLogout(
    PatrolIntegrationTester $,
  ) async {
    try {
      // Asegurarse de que estamos en la pantalla principal de cliente
      if (!$(CustomerAppPage).visible) {
        await $.native.swipe(
          from: const Offset(0.5, 0.5),
          to: const Offset(0.5, 0.1),
        );
        await $(CustomerAppPage).waitUntilVisible();
      }

      // Ir a la pestaña de perfil si no estamos en ella
      await $(K.profileTab).tap();
      await $.pumpAndSettle();

      // Intentar cerrar sesión
      await performLogout($);
    } catch (e) {
      print('Error durante el cierre de sesión del cliente: $e');
      rethrow;
    }
  }

  static Future<void> artistLogout(
    PatrolIntegrationTester $,
  ) async {
    try {
      // Asegurarse de que estamos en la pantalla principal de artista
      if (!$(ArtistAppPage).visible) {
        await $.native.swipe(
          from: const Offset(0.5, 0.5),
          to: const Offset(0.5, 0.1),
        );
        await $(ArtistAppPage).waitUntilVisible();
      }

      // Ir a la pestaña de perfil si no estamos en ella
      await $(K.profileTab).tap();
      await $.pumpAndSettle();

      // Intentar cerrar sesión
      await performLogout($);
    } catch (e) {
      print('Error durante el cierre de sesión del artista: $e');
      rethrow;
    }
  }
}
