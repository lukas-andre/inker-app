import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../data/auth_test_data.dart';
import '../../helpers/keys.dart';
import '../../helpers/test_actions.dart';
import '../../helpers/test_config.dart';

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
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);
      },
    );

    patrolTest(
      'Verify successful artist login',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);
        await TestActions.performLogin(
          $,
          email: AuthTestData.validArtistCredentials['email']!,
          password: AuthTestData.validArtistCredentials['password']!,
        );
        await $(ArtistAppPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify login failure with invalid credentials',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);
        await TestActions.performLogin(
          $,
          email: AuthTestData.invalidCredentials['email']!,
          password: AuthTestData.invalidCredentials['password']!,
        );

        expect(find.byType(SnackBar), findsOneWidget);
        expect(
          find.textContaining(LoginPage.invalidCredentialsMessage),
          findsOneWidget,
        );
        await $(LoginPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify successful login and artist profile page access',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);
        await TestActions.performLogin(
          $,
          email: AuthTestData.validArtistCredentials['email']!,
          password: AuthTestData.validArtistCredentials['password']!,
        );

        await $(ArtistAppPage).waitUntilVisible();
        await $(QuotationListPage).waitUntilVisible();

        await $(K.profileTab).tap();
        await $(ArtistMyProfilePage).waitUntilVisible();

        await TestActions.verifyProfileElements($);
      },
    );

    patrolTest(
      'Verify successful logout',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);
        await TestActions.performLogin(
          $,
          email: AuthTestData.validArtistCredentials['email']!,
          password: AuthTestData.validArtistCredentials['password']!,
        );

        await $(ArtistAppPage).waitUntilVisible();
        await $(QuotationListPage).waitUntilVisible();

        await $(K.profileTab).tap();
        await $(ArtistMyProfilePage).waitUntilVisible();

        await $(K.settingsButton).tap();
        await $(SettingsPage).waitUntilVisible();

        await $(K.logoutButton).tap();
        await $(K.confirmLogoutButton).tap();
        await $(OnBoardingPage).waitUntilVisible();
      },
    );
  });
}
