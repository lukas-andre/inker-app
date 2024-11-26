
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/artist/agenda/agenda_page.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../helpers/test_actions.dart';
import '../../helpers/test_config.dart';

const _defaultConfig = PatrolTesterConfig(
  settlePolicy: SettlePolicy.trySettle,
  settleTimeout: Duration(seconds: 10),
);

void main() {
  group('Artist Authentication Tests', () {
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
      'Verify successful artist login',
      config: _defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);

        await TestActions.performLogin(
          $,
          email: 'lucas.henryd@icloud.com', // Use an artist test account
          password: 'admin1',
        );

        await $(ArtistAppPage).waitUntilVisible();
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
      'Verify successful login and artist profile page access',
      config: _defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);

        await TestActions.performLogin(
          $,
          email: 'lucas.henryd@icloud.com',
          password: 'admin1',
        );

        await $(ArtistAppPage).waitUntilVisible();
        await $(QuotationListPage).waitUntilVisible();
        
        // Navigate to profile
        await $(#profileTab).tap();
        await $(ArtistMyProfilePage).waitUntilVisible();

        // Verify profile elements are visible
        await $(#artistProfileContent).waitUntilVisible();
        await $(#artistProfileHeader).waitUntilVisible();
        await $(#artistProfileContactInfo).waitUntilVisible();

        // Scroll to details and studio photo
        await $(#artistProfileDetails).scrollTo();
        await $(#artistProfileDetails).waitUntilVisible();
        await $(#artistProfileStudioPhoto).scrollTo();
        await $(#artistProfileStudioPhoto).waitUntilVisible();
      },
    );
  });
}