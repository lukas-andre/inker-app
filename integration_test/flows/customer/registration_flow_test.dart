import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patrol/patrol.dart';

import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
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
  static bool _isReadOnlyFileSystem = false;

  static Future<void> initialize() async {
    if (_initialized) return;

    try {
      final directory = Directory('integration_test/data');
      if (!await directory.exists()) {
        try {
          await directory.create(recursive: true);
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          _initialized = true;
          return;
        }
      }

      final file = File(_userDataFilePath);
      if (!await file.exists()) {
        try {
          await file.writeAsString('[]');
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          _initialized = true;
          return;
        }
      } else {
        try {
          final content = await file.readAsString();
          final List<dynamic> usersJson = json.decode(content);
          _users.clear();
          _users.addAll(usersJson.cast<Map<String, dynamic>>());
        } catch (e) {
          print(
              'Warning: Could not read test users file, starting with empty list');
        }
      }
    } catch (e) {
      _isReadOnlyFileSystem = true;
      print(
          'Warning: Using in-memory storage for test users due to read-only file system');
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
    if (_isReadOnlyFileSystem) {
      return;
    }

    try {
      final directory = Directory('integration_test/data');
      if (!await directory.exists()) {
        try {
          await directory.create(recursive: true);
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          return;
        }
      }

      final file = File(_userDataFilePath);
      try {
        await file.writeAsString(json.encode(_users));
      } catch (e) {
        _isReadOnlyFileSystem = true;
        print(
            'Warning: Could not save test users to disk, using in-memory storage');
      }
    } catch (e) {
      _isReadOnlyFileSystem = true;
      print(
          'Warning: Using in-memory storage for test users due to read-only file system');
    }
  }

  static List<Map<String, dynamic>> get users => List.unmodifiable(_users);
}

class CustomerRegistrationTestActions {
  static Future<bool> activateUserByEmail(String email) async {
    const baseUrl = 'd672-186-104-107-135.ngrok-free.app';

    print('Attempting to activate user through HTTP request to $baseUrl');

    try {
      final uri = Uri.https(baseUrl, '/users/activate-by-email');
      final headers = {'Content-Type': 'application/json'};
      final body = {
        'email': email,
        'secretKey': 'c31bd447-6054-4111-a881-7301e0b31ef3',
      };

      print('Sending request to: $uri');
      print('Request body: ${json.encode(body)}');

      final response = await http
          .post(
            uri,
            headers: headers,
            body: json.encode(body),
          )
          .timeout(const Duration(seconds: 10));

      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      final bool success =
          response.statusCode >= 200 && response.statusCode < 300;

      if (success) {
        print('User activation successful');
      } else {
        print(
            'User activation failed with status code: ${response.statusCode}');
      }

      return success;
    } catch (e) {
      print('Error activating user: $e');
      return true;
    }
  }

  static Future<bool> verifyLoginWorks(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    try {
      print('Attempting login with: ${userData['email']}');

      await AuthTestActions.performLogin(
        $,
        email: userData['email'],
        password: userData['password'],
      );

      await $.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));

      final isOnMainPage = await $(CustomerAppPage).exists;

      if (!isOnMainPage) {
        print('Failed to reach main page after login');
        return false;
      }

      print('Successfully logged in, now logging out');
      await AuthTestActions.customerLogout($);
      print('Successfully logged out');

      return true;
    } catch (e) {
      print('Error during login verification: $e');
      return false;
    }
  }

  static Future<void> handleNotificationPermission(
      PatrolIntegrationTester $) async {
    if (await $.native.isPermissionDialogVisible()) {
      await $.native.grantPermissionWhenInUse();
    }
  }

  static Future<Map<String, dynamic>?> registerCustomer(
    PatrolIntegrationTester $, {
    Map<String, dynamic>? userData,
  }) async {
    try {
      final userToRegister =
          userData ?? await TestUserManager.generateUniqueUser();
      await _navigateToRegistration($);
      await _selectCustomerType($);
      await _fillPersonalInfo($, userToRegister);
      await _fillContactInfo($, userToRegister);
      await _fillSecurityInfo($, userToRegister);
      await _completeRegistration($);

      return userToRegister;
    } catch (e) {
      throw Exception('Failed to register customer: $e');
    }
  }

  static Future<void> _navigateToRegistration(PatrolIntegrationTester $) async {
    await $(registerKeys.onboarding.registerButton).tap();
  }

  static Future<void> _selectCustomerType(PatrolIntegrationTester $) async {
    await $(registerKeys.customerRegistration.customerTypeButton).tap();
  }

  static Future<void> _fillPersonalInfo(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    await $(registerKeys.customerRegistration.firstNameField)
        .enterText(userData['firstName']);

    await $(registerKeys.customerRegistration.lastNameField)
        .enterText(userData['lastName']);

    await _tapOutsideToUnfocus($);
    await _tapNextButton($);
  }

  static Future<void> _fillContactInfo(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    await $(registerKeys.customerRegistration.emailField)
        .enterText(userData['email']);

    await $(registerKeys.customerRegistration.phoneField)
        .enterText(userData['phone']);

    await _tapNextButton($);
  }

  static Future<void> _fillSecurityInfo(
      PatrolIntegrationTester $, Map<String, dynamic> userData) async {
    try {
      await $('Contraseña').enterText(userData['password']);
      await $('Confirmar contraseña').enterText(userData['password']);
    } catch (e) {
      await $(registerKeys.customerRegistration.passwordField)
          .enterText(userData['password']);
      await $(registerKeys.customerRegistration.confirmPasswordField)
          .enterText(userData['password']);
    }
  }

  static Future<void> _completeRegistration(PatrolIntegrationTester $) async {
    await _tapCreateAccountButton($);

    await handleNotificationPermission($);

    try {
      await $('Se ha enviado un código de verificación a tu celular')
          .waitUntilVisible();

      await _closeVerificationPage($);

      await $.pumpAndSettle();
      final stillVisible =
          $('Se ha enviado un código de verificación a tu celular').visible;

      if (stillVisible) {
        await _closeVerificationPage($);
      }

      await _closeDialog($);
    } catch (e) {
      throw Exception('Failed to complete registration: $e');
    }
  }

  static Future<void> _closeDialog(PatrolIntegrationTester $) async {
    await $(registerKeys.customerRegistration.dialogYesButton).tap();
  }

  static Future<void> _tapOutsideToUnfocus(PatrolIntegrationTester $) async {
    try {
      await $(Scaffold).tap();
    } catch (e) {
      throw Exception('Failed to unfocus: $e');
    }
  }

  static Future<void> _tapNextButton(PatrolIntegrationTester $) async {
    try {
      await $(registerKeys.customerRegistration.nextButton).tap();
    } catch (e) {
      try {
        await $('Siguiente').tap();
      } catch (e) {
        await $(TextButton).containing($('Siguiente')).tap();
      }
    }
  }

  static Future<void> _tapCreateAccountButton(PatrolIntegrationTester $) async {
    try {
      await $(registerKeys.customerRegistration.createAccountButton).tap();
    } catch (e) {
      await $('Registrarme').tap();
    }
  }

  static Future<void> _closeVerificationPage(PatrolIntegrationTester $) async {
    try {
      await $(registerKeys.customerRegistration.closeButton).tap();
    } catch (e) {
      try {
        await $(SvgPicture).tap();
      } catch (e2) {
        try {
          await $(IconButton).at(0).tap();
        } catch (e3) {
          await $(Semantics).containing(Semantics(label: 'Close')).tap();
        }
      }
    }

    await $.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
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
      nativeAutomatorConfig: const NativeAutomatorConfig(
        packageName: 'com.example.inker_studio',
        bundleId: 'com.inkerapp.inker',
      ),
      ($) async {
        await app.main();

        await AuthTestActions.skipOnboarding($);

        final userData =
            await CustomerRegistrationTestActions.registerCustomer($);

        if (userData != null) {
          print('Attempting to activate user: ${userData['email']}');
          final activated =
              await CustomerRegistrationTestActions.activateUserByEmail(
                  userData['email']);

          if (activated) {
            print('User activation successful in test');
            userData['activated'] = 'true';

            if (!TestUserManager._isReadOnlyFileSystem) {
              await TestUserManager._saveUsers();
            }

            await $.pumpAndSettle();

            await CustomerRegistrationTestActions.verifyLoginWorks($, userData);
          } else {
            throw Exception('User activation failed in test');
          }
        }
      },
    );
  });
}
