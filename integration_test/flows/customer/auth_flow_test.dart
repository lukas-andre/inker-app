import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/customer/explore/gps_access_page.dart';
import 'package:inker_studio/ui/customer/explore/loading_map_page.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

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
        expect(find.textContaining(LoginPage.invalidCredentialsMessage), findsOneWidget);

        await $(LoginPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify GPS permission flow after successful login',
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
        
        if (await $.native.isPermissionDialogVisible()) {
          await $.native.selectFineLocation();
          await $.native.grantPermissionWhenInUse();
        }
        
        await $(CustomerAppPage).waitUntilVisible();
        await $(BuildMapPage).waitUntilVisible();
      },
    );
  });
}