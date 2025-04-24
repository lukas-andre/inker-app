import 'package:inker_studio/keys.dart';
import 'package:patrol/patrol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' hide find;
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';

class WorkTestActions {
  /// Navigates to the add work page from the artist profile
  static Future<void> navigateToAddWork(PatrolIntegrationTester $) async {
    // Navigate to profile tab first
    if (!$(ArtistMyProfilePage).visible) {
      await $(K.profileTab).tap();
      await $.pumpAndSettle();
    }

    // Find and tap the add work button
    await $(registerKeys.workDetail.addWorkButton).scrollTo().tap();
    await $.pumpAndSettle();
  }

  /// Selects an image from the gallery in test mode
  static Future<void> selectImageFromGallery(PatrolIntegrationTester $) async {
    // In test mode, this will automatically select a test image
    await $(registerKeys.workDetail.imagePicker).tap();
    await $.pumpAndSettle();
  }

  /// Fills out the work form with the provided information
  static Future<void> fillWorkForm(
    PatrolIntegrationTester $, {
    required String title,
    String? description,
    String? tagName,
    bool isFeatured = false,
    bool isHidden = false,
  }) async {
    // Fill in title
    await $(registerKeys.workDetail.titleField).enterText(title);
    await $.pumpAndSettle();

    // Fill in description if provided
    if (description != null && description.isNotEmpty) {
      await $(registerKeys.workDetail.descriptionField).enterText(description);
      await $.pumpAndSettle();
    }

    // Add tag if provided
    if (tagName != null && tagName.isNotEmpty) {
      await $(registerKeys.workDetail.tagField).tap();
      await $.pumpAndSettle();
      await $(registerKeys.workDetail.tagField).enterText(tagName);
      await $.pumpAndSettle();

      // Create the tag
      await $(registerKeys.workDetail.createNewTagButton).tap();
      await $.pumpAndSettle();
    }

    // Scroll to the submit button to avoid ensuring the form is visible
    await $(registerKeys.workDetail.submitButton).scrollTo();

    // Set the featured toggle if needed
    if (isFeatured) {
      await $(registerKeys.workDetail.featuredSwitch).tap();
      await $.pumpAndSettle();
    }

    // Set the hidden toggle if needed
    if (isHidden) {
      await $(registerKeys.workDetail.hiddenSwitch).tap();
      await $.pumpAndSettle();
    }
  }

  /// Submits the work form
  static Future<bool> submitWorkForm(PatrolIntegrationTester $) async {
    await $(registerKeys.workDetail.submitButton).scrollTo().tap();

    // Wait for the operation to complete
    await $.pumpAndSettle(duration: const Duration(seconds: 5));

    // Check if we're back to the profile page (success case)
    return $(ArtistMyProfilePage).visible || $(K.profileTab).visible;
  }

  /// Complete add work flow - combines all the steps
  static Future<bool> addWork(
    PatrolIntegrationTester $, {
    required String title,
    String? description,
    String? tagName,
    bool isFeatured = false,
    bool isHidden = false,
  }) async {
    try {
      // Navigate to add work page
      await navigateToAddWork($);

      // Select image
      await selectImageFromGallery($);

      // Generate a unique tag name if none provided
      final tag = tagName ?? 'testTag${DateTime.now().millisecondsSinceEpoch}';

      // Fill form
      await fillWorkForm(
        $,
        title: title,
        description: description,
        tagName: tag,
        isFeatured: isFeatured,
        isHidden: isHidden,
      );

      // Submit form
      return await submitWorkForm($);
    } catch (e) {
      print('Error in add work flow: $e');
      return false;
    }
  }

  static Future<bool> myProfilePullRefresh(PatrolIntegrationTester $) async {
    try {
      // Get a reference to the first scrollable widget (likely containing the works)
      final scrollFinder = $(Scrollable).at(0);

      // Simulate pull-to-refresh by scrolling to the top first (if not already there)
      await scrollFinder.scrollTo();

      // Perform the pull down gesture using drag method
      await $.tester
          .drag($(registerKeys.myProfile.myProfileTitle), const Offset(0, 500));

      return true;
    } catch (e) {
      print('Error in pull refresh works: $e');
      return false;
    }
  }
}
