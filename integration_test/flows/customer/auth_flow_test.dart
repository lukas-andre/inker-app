import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/customer/app/my_profile/customer_my_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/gps_access_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../data/auth_test_data.dart';
import '../../helpers/keys.dart';
import '../../helpers/test_actions.dart';
import '../../helpers/test_config.dart';

const _defaultConfig = PatrolTesterConfig(
  settlePolicy: SettlePolicy.trySettle,
  settleTimeout: Duration(seconds: 10),
);

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
      config: _defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);
      },
    );

    patrolTest(
      'Verify successful login',
      config: _defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);

        await TestActions.performLogin(
          $,
          email: 'lucas.henrydz@gmail.com',
          password: 'admin1',
        );

        await $(CustomerAppPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify login failure with invalid credentials',
      config: _defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);

        await TestActions.performLogin(
          $,
          email: 'lucas.henrydz@gmail.com',
          password: 'admin11',
        );

        final toastFinder = find.byType(SnackBar);
        expect(toastFinder, findsOneWidget);
        expect(find.textContaining(LoginPage.invalidCredentialsMessage),
            findsOneWidget);

        await $(LoginPage).waitUntilVisible();
      },
    );

    patrolTest(
        'Verify successful login, GPS permission and artist explorer page',
        ($) async {
      await app.main();
      await TestActions.skipOnboarding($);

      await TestActions.performLogin(
        $,
        email: 'lucas.henrydz@gmail.com',
        password: 'admin1',
      );

      await $(CustomerAppPage).waitUntilVisible();

      await $(AccessButton.accessButtonText).tap();
      await $(GpsAccessScreen).waitUntilVisible();

      if (await $.native
          .isPermissionDialogVisible(timeout: const Duration(seconds: 5))) {
        await $.native.selectFineLocation();
        await $.native.grantPermissionWhenInUse();
      }

      await $(InkerProgressIndicator).waitUntilVisible();
      await $(GridView).waitUntilVisible();
      await $(#explorerPageStack).waitUntilVisible();
      await $(ExplorerListView).waitUntilVisible();
    });

    patrolTest('Verify successful logout', config: _defaultConfig, ($) async {
      await app.main();
      await TestActions.skipOnboarding($);
      await TestActions.performLogin(
        $,
        email: AuthTestData.validCustomerCredentials['email']!,
        password: AuthTestData.validCustomerCredentials['password']!,
      );
      
      await $(CustomerAppPage).waitUntilVisible();
      await $(AccessButton.accessButtonText).tap();
      await $(GpsAccessScreen).waitUntilVisible();

      if (await $.native
          .isPermissionDialogVisible(timeout: const Duration(seconds: 5))) {
        await $.native.selectFineLocation();
        await $.native.grantPermissionWhenInUse();
      }

      await $(CustomerAppPage).waitUntilVisible();
      await $(ExplorerListView).waitUntilVisible();
      await $(K.profileTab).tap();
      await $(CustomerMyProfilePage).waitUntilVisible();

      await $(K.settingsButton).tap();
      await $(SettingsPage).waitUntilVisible();

      await $(K.logoutButton).tap();
      await $(K.confirmLogoutButton).tap();
      await $(OnBoardingPage).waitUntilVisible();
    });
  });
}
