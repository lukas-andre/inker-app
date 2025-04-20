import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'package:inker_studio/main.dart' as app;

import '../../config/test_config.dart';
import '../../actions/auth_test_actions.dart';
import '../../actions/artist/registration_actions.dart';
import '../../utils/activation_service.dart';
import '../../utils/test_user_manager.dart';

void main() {
  group('Artist Registration Tests', () {
    setUp(() async {
      await TestUserManager.initialize();
      await TestConfig.initializeTests(resetDatabase: true);
    });

    tearDown(() async {
      await TestConfig.tearDownTests();
    });

    patrolTest(
      'Artist registration and activation with unique email',
      config: TestConfig.defaultConfig,
      nativeAutomatorConfig: const NativeAutomatorConfig(
        packageName: 'com.example.inker_studio',
        bundleId: 'com.inkerapp.inker',
      ),
      ($) async {
        await app.main();
        await AuthTestActions.skipOnboarding($);
        await ArtistRegistrationActions.handleNotificationPermission($);

        final userData = await ArtistRegistrationActions.registerArtist($);

        if (userData != null) {
          print('Attempting to activate user: ${userData['email']}');
          final activated =
              await ActivationService.activateUser(userData['email'] ?? '');

          if (activated) {
            print('User activation successful in test');
            userData['activated'] = 'true';

            if (!await TestUserManager.isReadOnlyFileSystem()) {
              await TestUserManager.saveUser(userData);
            }

            await $.pumpAndSettle();

            await ArtistRegistrationActions.verifyLoginWorks($, userData);
          } else {
            throw Exception('User activation failed in test');
          }
        }
      },
    );
  });
}
