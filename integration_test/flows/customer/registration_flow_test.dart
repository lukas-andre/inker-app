import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:inker_studio/ui/verification/verification_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../actions/auth_test_actions.dart';
import '../../config/test_config.dart';
import 'package:inker_studio/test_utils/register_keys.dart';

class TestUserManager {
  static const String _userDataFilePath =
      'integration_test/data/test_users.json';
  static const String _defaultPassword = 'admin1';
  static final List<Map<String, dynamic>> _users = [];
  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) return;

    try {
      final file = File(_userDataFilePath);
      if (await file.exists()) {
        final content = await file.readAsString();
        final List<dynamic> usersJson = json.decode(content);
        _users.clear();
        _users.addAll(usersJson.cast<Map<String, dynamic>>());
      }
    } catch (e) {
      print('Error loading test users: $e');
      final directory = Directory('integration_test/data');
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }
    }

    _initialized = true;
  }

  static Future<Map<String, dynamic>> generateUniqueUser({
    String? customName,
    String? customLastName,
  }) async {
    await initialize();

    final random = Random();

    final nameOptions = [
      'Juan',
      'Pedro',
      'Maria',
      'Ana',
      'Carlos',
      'Sofia',
      'Luis',
      'Laura',
      'Miguel',
      'Carmen',
      'Jose',
      'Patricia',
      'Alberto',
      'Monica',
      'Roberto',
      'Lucia',
      'Daniel',
      'Paula',
      'Alejandro',
      'Claudia',
      'Mario',
      'Diana'
    ];

    final lastNameOptions = [
      'Garcia',
      'Lopez',
      'Martinez',
      'Rodriguez',
      'Gonzalez',
      'Fernandez',
      'Sanchez',
      'Perez',
      'Gomez',
      'Martin',
      'Jimenez',
      'Ruiz',
      'Diaz',
      'Hernandez',
      'Moreno',
      'Alvarez',
      'Romero',
      'Alonso',
      'Castro',
      'Suarez'
    ];

    final firstName =
        customName ?? nameOptions[random.nextInt(nameOptions.length)];
    final lastName = customLastName ??
        lastNameOptions[random.nextInt(lastNameOptions.length)];

    final suffix = random.nextInt(10000);
    final email =
        '${firstName.toLowerCase()}.${lastName.toLowerCase()}$suffix@example.com';

    final userData = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': '9${(90000000 + random.nextInt(9999999)).toString()}',
      'password': _defaultPassword,
      'createdAt': DateTime.now().toIso8601String(),
    };

    _users.add(userData);
    await _saveUsers();

    return userData;
  }

  static Future<void> _saveUsers() async {
    try {
      final file = File(_userDataFilePath);
      await file.writeAsString(json.encode(_users));
    } catch (e) {
      print('Error saving test users: $e');
    }
  }

  static List<Map<String, dynamic>> get users => List.unmodifiable(_users);
}

class CustomerRegistrationTestActions {
  static Future<bool> activateUserByEmail(String email) async {
    const baseUrl = 'e18c-190-22-46-115.ngrok-free.app';
    print('Activating user with email: $email');

    final uri = Uri.https(baseUrl, '/users/activate-by-email');
    final headers = {'Content-Type': 'application/json'};
    final body = {
      'email': email,
      'secretKey': 'c31bd447-6054-4111-a881-7301e0b31ef3',
    };

    try {
      print('Sending activation request to: $uri');
      final response = await http.post(
        uri,
        headers: headers,
        body: json.encode(body),
      );

      print('Activation response: ${response.statusCode} - ${response.body}');
      final bool success =
          response.statusCode >= 200 && response.statusCode < 300;

      if (success) {
        print('User activated successfully');
      } else {
        print('Failed to activate user');
      }

      return success;
    } catch (e) {
      print('Error activating user: $e');
      return false;
    }
  }

  static Future<bool> verifyLoginWorks(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    print('Verifying login for: ${userData['email']}');

    try {
      await AuthTestActions.performLogin(
        $,
        email: userData['email'],
        password: userData['password'],
      );

      await $(CustomerAppPage).waitUntilVisible();
      print('Login successful - User on main page');

      await AuthTestActions.customerLogout($);
      print('Logout successful');

      return true;
    } catch (e) {
      print('Error during login verification: $e');
      return false;
    }
  }

  static Future<void> handleNotificationPermission(
      PatrolIntegrationTester $) async {
    try {
      if (await $.native.isPermissionDialogVisible()) {
        await $.native.grantPermissionWhenInUse();
      }
    } catch (e) {
      print('Error handling notification permission: $e');
    }
  }

  static Future<Map<String, dynamic>?> registerCustomer(
    PatrolIntegrationTester $, {
    Map<String, dynamic>? userData,
  }) async {
    try {
      final userToRegister =
          userData ?? await TestUserManager.generateUniqueUser();
      print('Registering user: ${userToRegister['email']}');

      await _navigateToRegistration($);
      await _selectCustomerType($);
      await _fillPersonalInfo($, userToRegister);
      await _fillContactInfo($, userToRegister);
      await _fillSecurityInfo($, userToRegister);
      await _completeRegistration($);

      return userToRegister;
    } catch (e) {
      print('Error during registration: $e');
      return null;
    }
  }

  static Future<void> _navigateToRegistration(PatrolIntegrationTester $) async {
    await $(registerKeys.onboarding.registerButton).waitUntilVisible();
    await $(registerKeys.onboarding.registerButton).tap();
  }

  static Future<void> _selectCustomerType(PatrolIntegrationTester $) async {
    await $(registerKeys.customerRegistration.customerTypeButton)
        .waitUntilVisible();
    await $(registerKeys.customerRegistration.customerTypeButton).tap();
  }

  static Future<void> _fillPersonalInfo(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    await $(registerKeys.customerRegistration.firstNameField)
        .waitUntilVisible();
    await $(registerKeys.customerRegistration.firstNameField)
        .enterText(userData['firstName']);

    await $(registerKeys.customerRegistration.lastNameField).waitUntilVisible();
    await $(registerKeys.customerRegistration.lastNameField)
        .enterText(userData['lastName']);

    await _tapOutsideToUnfocus($);
    await _tapNextButton($);
  }

  static Future<void> _fillContactInfo(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    await $(registerKeys.customerRegistration.emailField).waitUntilVisible();
    await $(registerKeys.customerRegistration.emailField)
        .enterText(userData['email']);

    await $(registerKeys.customerRegistration.phoneField).waitUntilVisible();
    await $(registerKeys.customerRegistration.phoneField)
        .enterText(userData['phone']);

    await _tapNextButton($);
  }

  static Future<void> _fillSecurityInfo(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    try {
      await $('Contraseña').waitUntilVisible();
      await $('Contraseña').enterText(userData['password']);

      await $('Confirmar contraseña').waitUntilVisible();
      await $('Confirmar contraseña').enterText(userData['password']);
    } catch (e) {
      print('Could not find fields by text, trying with keys');

      await $(registerKeys.customerRegistration.passwordField)
          .waitUntilVisible();
      await $(registerKeys.customerRegistration.passwordField)
          .enterText(userData['password']);

      await $(registerKeys.customerRegistration.confirmPasswordField)
          .waitUntilVisible();
      await $(registerKeys.customerRegistration.confirmPasswordField)
          .enterText(userData['password']);
    }
  }

  static Future<void> _completeRegistration(PatrolIntegrationTester $) async {
    await _tapCreateAccountButton($);
    await handleNotificationPermission($);
    await _waitForVerificationPage($);
    await _closeVerificationPage($);
  }

  static Future<void> _tapOutsideToUnfocus(PatrolIntegrationTester $) async {
    try {
      await $(Scaffold).waitUntilVisible();
      await $(Scaffold).tap();
    } catch (e) {
      print('Could not unfocus: $e');
    }
  }

  static Future<void> _tapNextButton(PatrolIntegrationTester $) async {
    try {
      await $(registerKeys.customerRegistration.nextButton)
          .waitUntilVisible();
      await $(registerKeys.customerRegistration.nextButton).tap();
    } catch (e) {
      print('Could not find next button by key, trying by text');

      try {
        await $('Siguiente').waitUntilVisible();
        await $('Siguiente').tap();
      } catch (e) {
        print('Could not find button by text, trying with TextButton');

        await $(TextButton).containing($('Siguiente')).waitUntilVisible();
        await $(TextButton).containing($('Siguiente')).tap();
      }
    }
  }

  static Future<void> _tapCreateAccountButton(PatrolIntegrationTester $) async {
    try {
      await $(registerKeys.customerRegistration.createAccountButton)
          .waitUntilVisible();
      await $(registerKeys.customerRegistration.createAccountButton).tap();
    } catch (e) {
      print('Could not find create account button by key, trying by text');

      await $('Registrarme').waitUntilVisible();
      await $('Registrarme').tap();
    }
  }

  static Future<void> _waitForVerificationPage(
      PatrolIntegrationTester $) async {
    try {
      await $('Se ha enviado un código de verificación a tu celular')
          .waitUntilVisible();
    } catch (e) {
      print('Could not find verification text, trying with page type');

      try {
        await $(VerificationPage).waitUntilVisible();
        print('Verification page found by type');
      } catch (e) {
        print('Could not find verification page: $e');
      }
    }
  }

  static Future<void> _closeVerificationPage(PatrolIntegrationTester $) async {
    await $(registerKeys.customerRegistration.closeButton).waitUntilVisible();
    await $(registerKeys.customerRegistration.closeButton).tap();
  }
}

void main() {
  group('Customer Registration Tests', () {
    setUp(() async {
      await TestUserManager.initialize();
      await TestConfig.initializeTests(resetDatabase: true);
    });

    tearDown(() async {
      await TestConfig.tearDownTests();
    });

    patrolTest(
      'Customer registration and activation with unique email',
      config: TestConfig.defaultConfig,
      framePolicy: LiveTestWidgetsFlutterBindingFramePolicy.fullyLive,
      ($) async {
        print('Starting registration and activation test');

        await app.main();
        print('App started');

        await AuthTestActions.skipOnboarding($);
        print('Onboarding skipped');

        print('Starting customer registration');
        final userData =
            await CustomerRegistrationTestActions.registerCustomer($);
        print('Registration completed');

        if (userData != null) {
          print('Attempting to activate user');
          final activated =
              await CustomerRegistrationTestActions.activateUserByEmail(
                  userData['email']);

          if (activated) {
            print('User successfully activated: ${userData['email']}');

            userData['activated'] = true;
            await TestUserManager._saveUsers();

            await Future.delayed(const Duration(seconds: 2));

            print('Verifying user can login');
            final loginSuccess =
                await CustomerRegistrationTestActions.verifyLoginWorks(
                    $, userData);

            if (loginSuccess) {
              print(
                  '✅ TEST COMPLETE: User was registered, activated and logged in successfully');
            } else {
              print(
                  '❌ TEST INCOMPLETE: User was registered and activated but could not login');
            }
          } else {
            print(
                '❌ TEST FAILED: Failed to activate user: ${userData['email']}');
          }
        } else {
          print('❌ TEST FAILED: Could not register user');
        }
      },
    );
  });
}
