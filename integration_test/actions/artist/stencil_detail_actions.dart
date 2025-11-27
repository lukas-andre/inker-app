import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:patrol/patrol.dart';

class StencilDetailTestActions {
  static Future<bool> navigateToStencilDetail(PatrolIntegrationTester $) async {
    try {
      if (!$(registerKeys.myProfile.stencilsTitle).visible) {
        await $(registerKeys.myProfile.stencilItem).first.scrollTo().tap();
        await $.pumpAndSettle();
        return true;
      }

      return false;
    } catch (e) {
      print('Error navigating to stencil detail: $e');
      return false;
    }
  }

  /// Verify the stencil details match the expected values
  static Future<bool> verifyStencilDetails(
    PatrolIntegrationTester $, {
    required String expectedTitle,
    String? expectedDescription,
  }) async {
    try {
      // Verify the title is displayed
      final titleExists = $(expectedTitle).visible;

      // If description is provided, verify it's displayed
      bool descriptionExists = true;
      if (expectedDescription != null) {
        descriptionExists = $(expectedDescription).visible;
      }

      return titleExists && descriptionExists;
    } catch (e) {
      print('Error verifying stencil details: $e');
      return false;
    }
  }

  /// Update a stencil and verify the changes
  static Future<bool> updateAndVerifyStencil(
    PatrolIntegrationTester $, {
    required String title,
    required String description,
    String? tagName,
    bool setFeatured = true,
  }) async {
    try {
      // Enter edit mode
      await $(registerKeys.stencilDetail.editButton).tap();
      await $.pumpAndSettle();

      // Update title
      await $(registerKeys.stencilDetail.titleField).enterText(title);
      await $.pumpAndSettle();

      // Update description
      await $(registerKeys.stencilDetail.descriptionField)
          .enterText(description);
      await $.pumpAndSettle();

      // Add tag if provided
      if (tagName != null) {
        await $(registerKeys.stencilDetail.tagField).enterText(tagName);
        await $.pumpAndSettle();

        // Create new tag
        await $(registerKeys.stencilDetail.createNewTagButton).tap();
        await $.pumpAndSettle();
      }

      // Toggle featured if needed
      if (setFeatured) {
        await $(registerKeys.stencilDetail.featuredSwitch).scrollTo().tap();
        await $.pumpAndSettle();
      }

      // Save changes
      await $(registerKeys.stencilDetail.saveButton).tap();
      await $.pumpAndSettle();

      // Verify changes were saved and displayed correctly
      return await verifyStencilDetails(
        $,
        expectedTitle: title,
        expectedDescription: description,
      );
    } catch (e) {
      print('Error updating stencil: $e');
      return false;
    }
  }

  /// Delete a stencil
  static Future<bool> deleteStencil(PatrolIntegrationTester $) async {
    try {
      // Tap the delete button
      await $(registerKeys.stencilDetail.deleteButton).tap();
      await $.pumpAndSettle();

      // Confirm deletion
      await $(registerKeys.stencilDetail.confirmDeleteButton).tap();
      await $.pumpAndSettle();

      // Verify we're no longer on the detail page
      return !$(registerKeys.stencilDetail.page).exists;
    } catch (e) {
      print('Error deleting stencil: $e');
      return false;
    }
  }
}
