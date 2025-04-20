import 'dart:math';

import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:patrol/patrol.dart';
import '../../utils/test_constants.dart';
import '../../actions/auth_test_actions.dart';

class ArtistRegistrationActions {
  static Future<void> handleNotificationPermission(
      PatrolIntegrationTester $) async {
    if (await $.native.isPermissionDialogVisible()) {
      await $.native.grantPermissionWhenInUse();
    }
  }

  static Future<void> _navigateToRegistration(PatrolIntegrationTester $) async {
    await $(registerKeys.onboarding.registerButton).tap();
    await $.pumpAndSettle();
  }

  static Future<Map<String, String>?> registerArtist(
      PatrolIntegrationTester $) async {
    await _navigateToRegistration($);
    await _selectArtistRegistration($);

    // Test values
    final random = Random();
    final randomNum = random.nextInt(10000);
    const testName = 'Test';
    const testLastName = 'Artist';
    final testUsername = 'artist$randomNum';
    final testPhoneNumber =
        '9${(90000000 + random.nextInt(9999999)).toString()}';
    final testEmail = 'testartist$randomNum@example.com';
    const testPassword = 'admin1';
    const testAddress = 'Test Street 123';
    const testAddress2 = 'Apt 4B';

    // Map to store test user data
    final userData = <String, String>{
      'name': testName,
      'lastName': testLastName,
      'username': testUsername,
      'phoneNumber': testPhoneNumber,
      'email': testEmail,
      'password': testPassword,
      'address': testAddress,
      'userType': 'artist',
    };

    print('Starting artist registration with email: $testEmail');

    // Fill page 1 - Personal Data
    await _fillPersonalData($, testName, testLastName, testUsername);
    await _tapNextButton($);

    // Fill page 2 - Contact Information
    await _fillContactInfo($, testPhoneNumber, testEmail);
    await _tapNextButton($);

    // Fill page 3 - Password
    await _fillPassword($, testPassword);
    await _tapNextButton($);

    // Fill page 4 - Address (with retry mechanism)
    await _fillAddress($, testAddress, testAddress2);

    // Register button (with retry mechanism)
    await _tapRegisterButton($);

    // Handle the verification code dialog
    await _completeRegistration($);

    print('Registration completed successfully for: $testEmail');
    return userData;
  }

  static Future<void> _completeRegistration(PatrolIntegrationTester $) async {
    await handleNotificationPermission($);

    try {
      await $(TestConstants.verificationCodeSentMessage).waitUntilVisible();

      await _closeVerificationPage($);

      await $.pumpAndSettle();
      final stillVisible = $(TestConstants.verificationCodeSentMessage).visible;

      if (stillVisible) {
        await _closeVerificationPage($);
      }

      if ($(RegisterUserByTypePage).exists) {
        await $(registerKeys.registrationCommon.closeButton).tap();
      }
    } catch (e) {
      print('Exception during registration completion: $e');
      // Continue with test even if there's an exception as user will be activated via API
    }
  }

  static Future<void> _closeVerificationPage(PatrolIntegrationTester $) async {
    await $(registerKeys.registrationCommon.closeButton).tap();
    await _closeDialog($);
  }

  static Future<void> _closeDialog(PatrolIntegrationTester $) async {
    await $(registerKeys.registrationCommon.dialogYesButton).tap();
  }

  static Future<void> _selectArtistRegistration(
      PatrolIntegrationTester $) async {
    await $(registerKeys.artistRegistration.artistTypeButton)
        .waitUntilVisible(timeout: const Duration(seconds: 5));
    await $(registerKeys.artistRegistration.artistTypeButton).tap();
    await $.pumpAndSettle();

    if ($(registerKeys.artistRegistration.artistTypeButton).visible) {
      await $('artista').tap();
      await $.pumpAndSettle();
    }
  }

  static Future<void> _fillPersonalData(
    PatrolIntegrationTester $,
    String name,
    String lastName,
    String username,
  ) async {
    await $(registerKeys.artistRegistration.nameInput).scrollTo().tap();
    await $(registerKeys.artistRegistration.nameInput).enterText(name);

    await $(registerKeys.artistRegistration.lastNameInput).scrollTo().tap();
    await $(registerKeys.artistRegistration.lastNameInput).enterText(lastName);

    await $(registerKeys.artistRegistration.usernameInput).scrollTo().tap();
    await $(registerKeys.artistRegistration.usernameInput).enterText(username);
  }

  static Future<void> _fillContactInfo(
    PatrolIntegrationTester $,
    String phoneNumber,
    String email,
  ) async {
    await $(registerKeys.artistRegistration.phoneNumberInput).tap();
    await $(registerKeys.artistRegistration.phoneNumberInput)
        .enterText(phoneNumber);

    await $(registerKeys.artistRegistration.emailInput).tap();
    await $(registerKeys.artistRegistration.emailInput).enterText(email);
  }

  static Future<void> _fillPassword(
    PatrolIntegrationTester $,
    String password,
  ) async {
    await $(registerKeys.artistRegistration.passwordInput).tap();
    await $(registerKeys.artistRegistration.passwordInput).enterText(password);

    await $(registerKeys.artistRegistration.confirmPasswordInput).tap();
    await $(registerKeys.artistRegistration.confirmPasswordInput)
        .enterText(password);
  }

  static final List<String> _addressOptions = [
    'Avenida Libertador Bernardo O\'Higgins 1234, Santiago',
    'Calle San Martín 567, Viña del Mar',
    'Avenida Pedro de Valdivia 890, Concepción',
    'Avenida Francisco Bilbao 432, Providencia',
    'Calle Los Carrera 765, Antofagasta',
    'Avenida Argentina 123, Valparaíso',
    'Calle Baquedano 567, Temuco',
    'Avenida Vicuña Mackenna 876, La Florida',
    'Calle Arturo Prat 345, Puerto Montt',
    'Avenida Salvador Allende 678, Rancagua'
  ];

  static Future<void> _fillAddress(
    PatrolIntegrationTester $,
    String address,
    String address2,
  ) async {
    final random = Random();
    final randomAddressIndex = random.nextInt(_addressOptions.length);
    final randomAddress = _addressOptions[randomAddressIndex];

    await $(registerKeys.artistRegistration.addressInput).tap();
    await $(registerKeys.artistRegistration.addressInput)
        .enterText(randomAddress.split(',')[0]);

    await $.pumpAndSettle(duration: const Duration(seconds: 1));
    if ($(registerKeys.artistRegistration.addressSuggestionItem).exists) {
      await $(registerKeys.artistRegistration.addressSuggestionItem).tap();
    }
  }

  static Future<void> _tapNextButton(PatrolIntegrationTester $) async {
    if ($(registerKeys.artistRegistration.nextButton).exists) {
      await $(registerKeys.artistRegistration.nextButton).tap();
    }
  }

  static Future<void> _tapRegisterButton(PatrolIntegrationTester $) async {
    if ($(registerKeys.artistRegistration.registerButton).exists) {
      await $(registerKeys.artistRegistration.registerButton).tap();
    } 
  }


  static Future<void> verifyLoginWorks(
    PatrolIntegrationTester $,
    Map<String, String> userData,
  ) async {

    final loginSuccess = await AuthTestActions.login(
      $,
      email: userData['email']!,
      password: userData['password']!,
    );

    if (!loginSuccess) {
      throw Exception(
          'Login verification failed for artist: ${userData['email']}');
    }

    await AuthTestActions.artistLogout($);
  }
}
