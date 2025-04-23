import 'dart:ui';

import 'package:inker_studio/keys.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/artist/stencil/add_stencil_page.dart';
import 'package:patrol/patrol.dart';

class StencilTestActions {
  /// Navigate to the add stencil page from the artist profile
  static Future<void> navigateToAddStencil(PatrolIntegrationTester $) async {
    // Navigate to Profile tab if not already there
    await $(K.profileTab).tap();
    await $.pumpAndSettle();

    // Find and tap "Add Stencil" button (might need adjustment based on UI)
    await $('Agregar Plantilla').tap();
    await $.pumpAndSettle();

    // Verify we're on the correct page
    await $(AddStencilPage).waitUntilVisible();
  }

  /// Handle the native image picker for selecting a stencil image
  static Future<void> selectImageFromGallery(PatrolIntegrationTester $) async {
    // Tap the image picker
    await $(registerKeys.addStencil.imagePicker).tap();
    await $.pumpAndSettle();

    // En modo de prueba, la imagen se cargará automáticamente sin abrir el selector nativo
    // Esperamos a que se cargue la imagen y se vuelva a la página de stencil
    await $(AddStencilPage).waitUntilVisible();

    // Verificar que estamos en la página correcta
    print(
        'Verificando que estamos de vuelta en la página de stencil después de seleccionar imagen');

    // Damos tiempo para que la imagen se procese completamente
    await Future.delayed(const Duration(seconds: 1));
    await $.pumpAndSettle();
  }

  /// Fill the stencil form with test data
  static Future<void> fillStencilForm(
    PatrolIntegrationTester $, {
    required String title,
    required String description,
    required String tagName,
    bool isFeatured = true,
    bool isHidden = false,
  }) async {
    // Enter title
    await $(registerKeys.addStencil.titleField).enterText(title);
    await $.pumpAndSettle();

    // Enter description
    await $(registerKeys.addStencil.descriptionField).enterText(description);
    await $.pumpAndSettle();

    // Add tag
    await $(registerKeys.addStencil.tagField).enterText(tagName);
    await $.pumpAndSettle();

    // Create the new tag
    await $(registerKeys.addStencil.createNewTagButton).tap();
    await $.pumpAndSettle();

    // Scroll to the submit button
    await $(registerKeys.addStencil.submitButton).scrollTo();

    // Toggle Featured switch if needed
    if (isFeatured) {
      await $(registerKeys.addStencil.featuredSwitch).tap();
      await $.pumpAndSettle();
    }

    // Toggle Hidden switch if needed
    if (isHidden) {
      await $(registerKeys.addStencil.hiddenSwitch).tap();
      await $.pumpAndSettle();
    }
  }

  /// Submit the stencil form and check for success
  static Future<bool> submitStencilForm(PatrolIntegrationTester $) async {
    try {
      // Scroll to and tap the submit button
      await $(registerKeys.addStencil.submitButton).scrollTo();
      await $(registerKeys.addStencil.submitButton).tap();
      await $.pumpAndSettle(); // Wait for API call

      // Check for success message (looking for text within a SnackBar)
      final successMessageVisible = $('Plantilla creada exitosamente').exists ||
          $('Plantilla creada exitosamente').exists;

      // Verify we're no longer on the add stencil page
      final leftAddStencilPage = !$(AddStencilPage).exists;

      return successMessageVisible && leftAddStencilPage;
    } catch (e) {
      print('Error submitting stencil form: $e');
      return false;
    }
  }

  /// Full flow to add a stencil
  static Future<bool> addStencil(
    PatrolIntegrationTester $, {
    required String title,
    required String description,
    String? tagName,
    bool isFeatured = true,
    bool isHidden = false,
  }) async {
    try {
      // Navigate to add stencil page
      await navigateToAddStencil($);

      // Select image
      await selectImageFromGallery($);

      // Generate a unique tag name if none provided
      final tag = tagName ?? 'testTag${DateTime.now().millisecondsSinceEpoch}';

      // Fill form
      await fillStencilForm(
        $,
        title: title,
        description: description,
        tagName: tag,
        isFeatured: isFeatured,
        isHidden: isHidden,
      );

      // Submit form
      return await submitStencilForm($);
    } catch (e) {
      print('Error in add stencil flow: $e');
      return false;
    }
  }
}
