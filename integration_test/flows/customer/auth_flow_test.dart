import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/customer/app/my_profile/customer_my_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../actions/permission_test_action.dart';
import '../../data/auth_test_data.dart';
import '../../actions/auth_test_actions.dart';
import '../../actions/profile_test_actions.dart';
import '../../config/test_config.dart';

void main() {
  group('Customer Authentication Tests', () {
    setUp(() async {
      await TestConfig.initializeTests(resetDatabase: true);
    });

    tearDown(() async {
      await TestConfig.tearDownTests();
    });

    patrolTest(
      'Verify skip onboarding',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);
      },
    );

    patrolTest(
      'Verify successful login',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);

        await AuthTestActions.performLogin(
          $,
          email: AuthTestData.validCustomerCredentials['email']!,
          password: AuthTestData.validCustomerCredentials['password']!,
        );

        await $(CustomerAppPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify login failure with invalid credentials',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);

        await AuthTestActions.performLogin(
          $,
          email: AuthTestData.invalidCustomerCredentials['email']!,
          password: AuthTestData.invalidCustomerCredentials['password']!,
        );

        final toastFinder = find.byType(SnackBar);
        expect(toastFinder, findsOneWidget);
        expect(
          find.textContaining(LoginPage.invalidCredentialsMessage),
          findsOneWidget,
        );

        await $(LoginPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify successful login, GPS permission and artist explorer page',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);

        await AuthTestActions.performLogin(
          $,
          email: AuthTestData.validCustomerCredentials['email']!,
          password: AuthTestData.validCustomerCredentials['password']!,
        );

        await $(CustomerAppPage).waitUntilVisible();
        await PermissionTestActions.handleGpsPermission($);

        await $(ExplorerListView).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify successful logout',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);
        
        await AuthTestActions.performLogin(
          $,
          email: AuthTestData.validCustomerCredentials['email']!,
          password: AuthTestData.validCustomerCredentials['password']!,
        );

        await $(CustomerAppPage).waitUntilVisible();
        await PermissionTestActions.handleGpsPermission($);
        await $(ExplorerListView).waitUntilVisible();

        await ProfileTestActions.navigateToProfile($);
        await $(CustomerMyProfilePage).waitUntilVisible();

        await AuthTestActions.performLogout($);
      },
    );
  });
}