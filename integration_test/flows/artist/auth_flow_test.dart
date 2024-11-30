import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../actions/auth_test_actions.dart';
import '../../actions/profile_test_actions.dart';
import '../../data/auth_test_data.dart';
import '../../config/test_config.dart';

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
        await AuthTestActions.skipOnboarding($);
      },
    );

    patrolTest(
      'Verify successful artist login',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);
        await AuthTestActions.performLogin(
          $,
          email: AuthTestData.validArtistCredentials['email']!,
          password: AuthTestData.validArtistCredentials['password']!,
        );
        await $(ArtistAppPage).waitUntilVisible();
      },
    );

    patrolTest(
      'Verify successful login and artist profile page access',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);
        await AuthTestActions.performLogin(
          $,
          email: AuthTestData.validArtistCredentials['email']!,
          password: AuthTestData.validArtistCredentials['password']!,
        );

        await $(ArtistAppPage).waitUntilVisible();
        await $(QuotationListPage).waitUntilVisible();

        await ProfileTestActions.navigateToProfile($);
        await $(ArtistMyProfilePage).waitUntilVisible();
        await ProfileTestActions.verifyArtistProfileElements($);
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
          email: AuthTestData.validArtistCredentials['email']!,
          password: AuthTestData.validArtistCredentials['password']!,
        );

        await $(ArtistAppPage).waitUntilVisible();
        await $(QuotationListPage).waitUntilVisible();

        await ProfileTestActions.navigateToProfile($);
        await $(ArtistMyProfilePage).waitUntilVisible();
        
        await AuthTestActions.performLogout($);
      },
    );
  });
}