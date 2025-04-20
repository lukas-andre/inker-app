import 'package:flutter/material.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/test_utils/register_keys.dart';

import '../utils/test_constants.dart';

class AuthTestActions {
  static Future<bool> login(
    PatrolIntegrationTester $, {
    required String email,
    required String password,
  }) async {
    try {
      print('Attempting to login with email: $email');

      // Navigate to login page if not already there
      await _navigateToLogin($);

      // Fill in credentials
      await _enterCredentials($, email, password);

      // Tap login button
      await _tapLoginButton($);

      // Wait for login to complete and check for errors
      final success = await _verifyLoginSuccess($);

      if (success) {
        print('Login successful for: $email');
      } else {
        print('Login failed for: $email');
      }

      return success;
    } catch (e) {
      print('Exception during login process: $e');
      return false;
    }
  }

  /// Navigates to the login page
  static Future<void> _navigateToLogin(PatrolIntegrationTester $) async {
    // Check if already on login page
    if ($(K.usernameField).exists || $(K.passwordField).exists) {
      print('Already on login page');
      return;
    }

    // Otherwise, navigate to login from onboarding or home screen
    try {
      if ($(registerKeys.onboarding.signInButton).exists) {
        await $(registerKeys.onboarding.signInButton).tap();
      } else if ($('Iniciar sesión').exists) {
        await $('Iniciar sesión').tap();
      } else if ($(ElevatedButton).containing(Text('Iniciar sesión')).exists) {
        await $(ElevatedButton).containing(Text('Iniciar sesión')).tap();
      }

      await $.pumpAndSettle();
    } catch (e) {
      print('Navigation to login page failed: $e');
      throw Exception('Could not navigate to login page: $e');
    }
  }

  /// Enters the login credentials
  static Future<void> _enterCredentials(
    PatrolIntegrationTester $,
    String email,
    String password,
  ) async {
    // Try both key-based and text-based selectors for email field
    try {
      if ($(K.usernameField).exists) {
        await $(K.usernameField).tap();
        await $(K.usernameField).enterText(email);
      } else {
        await $('Correo electrónico').tap();
        await $('Correo electrónico').enterText(email);
      }

      // Try both key-based and text-based selectors for password field
      if ($(K.passwordField).exists) {
        await $(K.passwordField).tap();
        await $(K.passwordField).enterText(password);
      } else {
        await $(TestConstants.passwordLabel).tap();
        await $(TestConstants.passwordLabel).enterText(password);
      }

      await $.pumpAndSettle();
    } catch (e) {
      print('Error entering credentials: $e');
      throw Exception('Failed to enter login credentials: $e');
    }
  }

  /// Taps the login button
  static Future<void> _tapLoginButton(PatrolIntegrationTester $) async {
    try {
      if ($(K.loginButton).exists) {
        await $(K.loginButton).tap();
      } else if ($('Ingresar').exists) {
        await $('Ingresar').tap();
      } else if ($(ElevatedButton).exists) {
        await $(ElevatedButton).at(0).tap();
      }

      await $.pumpAndSettle(duration: const Duration(seconds: 2));
    } catch (e) {
      print('Login button tap failed: $e');
      throw Exception('Failed to tap login button: $e');
    }
  }

  /// Verifies that login was successful
  static Future<bool> _verifyLoginSuccess(PatrolIntegrationTester $) async {
    try {
      // Wait for app to load after login
      await $.pumpAndSettle(duration: const Duration(seconds: 3));

      // Check for login failure indicators
      if ($('Credenciales inválidas').exists ||
          $('Error de autenticación').exists) {
        print('Login error message detected');
        return false;
      }

      // Check for successful login indicators (home screen, user profile, etc.)
      // This depends on your app's specific UI after login

      // If no clear success/failure indicators, assume success if login fields are gone
      final loginFieldsStillVisible =
          $(K.usernameField).exists || $(K.passwordField).exists;

      return !loginFieldsStillVisible;
    } catch (e) {
      print('Error verifying login success: $e');
      return false;
    }
  }

  static Future<void> skipOnboarding(PatrolIntegrationTester $) async {
    await $.pumpAndSettle();
    await $(OnBoardingPage).waitUntilVisible();
    await $('Saltar').tap();
  }

  static Future<void> performLogout(PatrolIntegrationTester $) async {
    if (!$(SettingsPage).exists) {
      await $(K.settingsButton).tap();
    }
    await $(SettingsPage).waitUntilVisible();
    await $.pumpAndSettle();
    await $('Cerrar sesión').scrollTo();
    await $('Cerrar sesión').tap();
    await $.pumpAndSettle();
    await $('Cerrar sesión').tap();
    await $.pumpAndSettle(duration: const Duration(seconds: 2));
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
