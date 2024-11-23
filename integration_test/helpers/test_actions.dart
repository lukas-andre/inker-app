import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:patrol/patrol.dart';

import 'keys.dart';

class TestActions {
  static Future<void> skipOnboarding(PatrolIntegrationTester $) async {
    await $.pumpAndSettle();
    
    // Verify we're on OnBoarding
    await $(OnBoardingPage).waitUntilVisible();
    
    // Find and tap skip button
    await $('Saltar').tap();
  }

  static Future<void> performLogin(
    PatrolIntegrationTester $, {
    required String email,
    required String password,
  }) async {
    // Find and tap sign in button
    await $(K.signInButton).tap();
    
    // Fill the form
    await $(K.usernameField).enterText(email);
    await $(K.passwordField).enterText(password);
    
    // Submit form
    await $(K.loginButton).tap();
    await $.pumpAndSettle();
  }
}
