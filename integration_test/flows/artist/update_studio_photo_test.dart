import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;
import 'package:inker_studio/test_utils/test_mode.dart';
import '../../actions/auth_test_actions.dart';
import '../../actions/artist/my_profile_actions.dart';
import '../../actions/artist/profile_photo_actions.dart';
import '../../actions/artist/registration_actions.dart';
import '../../utils/activation_service.dart';
import '../../utils/test_user_manager.dart';
import 'package:inker_studio/test_utils/register_keys.dart';

import '../../config/test_config.dart';

void main() {
  group('Artist Studio Photo Tests', () {
    setUp(() async {
      await TestUserManager.initialize();
      await TestConfig.initializeTests(resetDatabase: true);
    });

    tearDown(() async {
      await TestConfig.tearDownTests();
    });

    patrolTest(
      'Artist can register and update studio photo',
      config: TestConfig.defaultConfig,
      nativeAutomatorConfig: const NativeAutomatorConfig(
        packageName: 'com.example.inker_studio',
        bundleId: 'com.inkerapp.inker',
      ),
      ($) async {
        // Activate test mode
        enableTestMode();
        
        app.main();
        await $.pumpAndSettle();

        if (await $.native.isPermissionDialogVisible()) {
          await $.native.grantPermissionWhenInUse();
        }

        // Skip onboarding
        await AuthTestActions.skipOnboarding($);
        await ArtistRegistrationActions.handleNotificationPermission($);
        
        // Register a new artist
        final userData = await ArtistRegistrationActions.registerArtist($);
        
        if (userData == null) {
          throw Exception('Failed to register artist');
        }
        
        // Activate the user account
        print('Attempting to activate user: ${userData['email']}');
        final activated = await ActivationService.activateUser(userData['email'] ?? '');
        
        if (!activated) {
          throw Exception('User activation failed');
        }
        
        print('User activation successful in test');
        userData['activated'] = 'true';
        
        if (!await TestUserManager.isReadOnlyFileSystem()) {
          await TestUserManager.saveUser(userData);
        }
        
        await $.pumpAndSettle();
        
        // Login with the newly created artist account
        await AuthTestActions.login(
          $, 
          email: userData['email'] ?? '',
          password: userData['password'] ?? '',
        );

        // Navigate to profile tab
        await MyProfileTestActions.navigateToMyProfile($);
        await $.pumpAndSettle();
        
        // Execute studio photo update flow
        final updateSuccess = await ProfilePhotoActions.updateStudioPhoto($);
        
        expect(updateSuccess, isTrue, 
            reason: 'Studio photo update should complete successfully');
        
        // Pull refresh to update the profile
        await MyProfileTestActions.pullRefresh($);
        await $.pumpAndSettle();
        
        // Verify the studio photo is visible on the profile page
        await $(registerKeys.myProfile.studioPhoto).scrollTo();
        final studioPhotoVisible = $(registerKeys.myProfile.studioPhoto).visible;
        expect(studioPhotoVisible, isTrue,
            reason: 'Studio photo should be visible after update');
        
        // Disable test mode when finished
        disableTestMode();
      },
    );
  });
} 