import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:patrol/patrol.dart';

class ProfilePhotoActions {
  /// Navigate to the studio photo edit page from artist profile
  static Future<bool> navigateToStudioPhotoEdit(PatrolIntegrationTester $) async {
    try {
      // Navigate to the studio photo section
      await $(registerKeys.myProfile.studioPhoto).scrollTo();
      await $.pumpAndSettle();
      
      // Tap on the studio photo to edit it
      await $(registerKeys.myProfile.studioPhoto).tap();
      await $.pumpAndSettle();
      
      // Verify we're on the image edit page by checking for the pick image button
      final isOnEditPage = $(registerKeys.imageEdit.container).visible;
      return isOnEditPage;
    } catch (e) {
      print('Error navigating to studio photo edit: $e');
      return false;
    }
  }
  
  /// Select a new studio photo in test mode
  static Future<bool> selectStudioPhoto(PatrolIntegrationTester $) async {
    try {
      // Check if there's already an image
      if ($(registerKeys.imageEdit.changeImageButton).exists) {
        // If there's an existing image, tap the change image button
        await $(registerKeys.imageEdit.changeImageButton).tap();
      } else {
        // Otherwise tap the pick image button
        await $(registerKeys.imageEdit.pickImageButton).tap();
      }
      
      await $.pumpAndSettle();
      
      // Wait for the image to be selected and displayed
      // In test mode, this happens automatically
      await Future.delayed(const Duration(milliseconds: 500));
      await $.pumpAndSettle();
      
      // Check if the image was selected by looking for the save button
      return $(registerKeys.imageEdit.saveChangesButton).visible;
    } catch (e) {
      print('Error selecting studio photo: $e');
      return false;
    }
  }
  
  /// Save the selected photo
  static Future<bool> saveStudioPhoto(PatrolIntegrationTester $) async {
    try {
      // Tap the save button
      await $(registerKeys.imageEdit.saveChangesButton).tap();
      await $.pumpAndSettle();
      
      // Wait for the API call to complete and return to profile
      await Future.delayed(const Duration(seconds: 1));
      await $.pumpAndSettle();
      
      // Check if we're back on the profile page and the studio photo is visible
      await $(registerKeys.myProfile.studioPhoto).scrollTo();
      return $(registerKeys.myProfile.studioPhoto).visible;
    } catch (e) {
      print('Error saving studio photo: $e');
      return false;
    }
  }
  
  /// Complete flow to update studio photo
  static Future<bool> updateStudioPhoto(PatrolIntegrationTester $) async {
    try {
      // Navigate to studio photo edit
      final navigated = await navigateToStudioPhotoEdit($);
      if (!navigated) {
        print('Failed to navigate to studio photo edit');
        return false;
      }
      
      // Select a new photo
      final selected = await selectStudioPhoto($);
      if (!selected) {
        print('Failed to select studio photo');
        return false;
      }
      
      // Save the photo
      return await saveStudioPhoto($);
    } catch (e) {
      print('Error in update studio photo flow: $e');
      return false;
    }
  }
} 