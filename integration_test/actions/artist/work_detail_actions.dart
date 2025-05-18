import 'package:patrol/patrol.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';

class WorkDetailTestActions {
  /// Navega a un trabajo específico desde el perfil
  static Future<bool> navigateToWorkDetail(PatrolIntegrationTester $) async {
    try {
      // Navigate to profile tab first
      if (!$(ArtistMyProfilePage).exists) {
        await $(K.profileTab).tap();
      }

      final worksExist = $(K.workItem).exists;
      if (worksExist) {
        await $(K.workItem).first.scrollTo().tap();
        await $.pumpAndSettle();
        return true;
      }
      return false;
    } catch (e) {
      print('Error navigating to work detail: $e');
      return false;
    }
  }

  /// Actualiza un trabajo con nueva información
  static Future<bool> updateWork(
    PatrolIntegrationTester $, {
    String? title,
    String? description,
    String? tagName,
    bool? setFeatured,
    bool? setHidden,
  }) async {
    try {
      // Entrar en modo de edición
      await $(registerKeys.workDetail.editButton).tap();
      await $.pumpAndSettle();

      // Actualizar el título si se proporciona
      if (title != null && title.isNotEmpty) {
        await $(registerKeys.workDetail.titleField).enterText(title);
        await $.pumpAndSettle();
      }

      // Actualizar la descripción si se proporciona
      if (description != null) {
        await $(registerKeys.workDetail.descriptionField)
            .enterText(description);
        await $.pumpAndSettle();
      }

      // Scroll para ver los toggles y el tag
      await $(registerKeys.workDetail.featuredSwitch).scrollTo();
      await $.pumpAndSettle();

      // Añadir un tag si se proporciona
      if (tagName != null && tagName.isNotEmpty) {
        await $(registerKeys.workDetail.tagField).tap();
        await $.pumpAndSettle();
        await $(registerKeys.workDetail.tagField).enterText(tagName);
        await $.pumpAndSettle();

        // Crear el tag
        await $(registerKeys.workDetail.createNewTagButton).tap();
        await $.pumpAndSettle();
      }

      // Configurar featured si se especifica
      if (setFeatured != null) {
        // Obtener estado actual del switch
        final isFeatured =
            await _getSwitchState($, registerKeys.workDetail.featuredSwitch);
        // Solo cambiar si es necesario
        if (isFeatured != setFeatured) {
          await $(registerKeys.workDetail.featuredSwitch).tap();
          await $.pumpAndSettle();
        }
      }

      // Configurar hidden si se especifica
      if (setHidden != null) {
        // Obtener estado actual del switch
        final isHidden =
            await _getSwitchState($, registerKeys.workDetail.hiddenSwitch);
        // Solo cambiar si es necesario
        if (isHidden != setHidden) {
          await $(registerKeys.workDetail.hiddenSwitch).tap();
          await $.pumpAndSettle();
        }
      }

      // Guardar los cambios
      await $(registerKeys.workDetail.saveButton).tap();
      await $.pumpAndSettle(duration: const Duration(seconds: 5));

      // Verificar que salimos del modo de edición
      return !await _isInEditMode($);
    } catch (e) {
      print('Error updating work: $e');
      return false;
    }
  }

  /// Elimina un trabajo
  static Future<bool> deleteWork(PatrolIntegrationTester $) async {
    try {
      await $(registerKeys.workDetail.deleteButton).tap();

      await $(registerKeys.workDetail.confirmDeleteButton).tap();

      return $(ArtistMyProfilePage).visible || $(K.profileTab).visible;
    } catch (e) {
      print('Error deleting work: $e');
      return false;
    }
  }

  /// Flujo completo: crear, actualizar y eliminar un trabajo
  static Future<bool> createUpdateAndDeleteWork(
    PatrolIntegrationTester $, {
    required String initialTitle,
    required String initialDescription,
    required String updateTitle,
    required String updateDescription,
    String? tagName,
  }) async {
    try {
      // Primero crear un nuevo trabajo
      final workCreated =
          await _createTestWork($, initialTitle, initialDescription);
      if (!workCreated) {
        print('Failed to create test work');
        return false;
      }

      // Luego navegar al detalle
      final foundDetail = await navigateToWorkDetail($);
      if (!foundDetail) {
        print('Could not navigate to work detail');
        return false;
      }

      // Actualizar el trabajo
      final updateSuccess = await updateWork(
        $,
        title: updateTitle,
        description: updateDescription,
        tagName: tagName,
        setFeatured: true,
      );

      if (!updateSuccess) {
        print('Failed to update work');
        return false;
      }

      // Eliminar el trabajo
      return await deleteWork($);
    } catch (e) {
      print('Error in create-update-delete flow: $e');
      return false;
    }
  }

  /// Verifica si estamos en modo de edición
  static Future<bool> _isInEditMode(PatrolIntegrationTester $) async {
    return $(registerKeys.workDetail.saveButton).exists;
  }

  /// Obtiene el estado de un switch
  static Future<bool> _getSwitchState(
      PatrolIntegrationTester $, Key switchKey) async {
    final exists = $(switchKey).exists;
    return exists;
  }

  /// Crea un trabajo de prueba
  static Future<bool> _createTestWork(
      PatrolIntegrationTester $, String title, String description) async {
    try {
      // Navegar a perfil
      await $(K.profileTab).tap();
      await $.pumpAndSettle();

      // Encontrar y presionar el botón para añadir trabajo
      await $(registerKeys.workDetail.addWorkButton).scrollTo().tap();
      await $.pumpAndSettle();

      // Seleccionar imagen
      await $(registerKeys.workDetail.imagePicker).tap();
      await $.pumpAndSettle();

      // Llenar el formulario
      await $(registerKeys.workDetail.titleField).enterText(title);
      await $.pumpAndSettle();

      await $(registerKeys.workDetail.descriptionField).enterText(description);
      await $.pumpAndSettle();

      // Enviar el formulario
      await $(registerKeys.workDetail.submitButton).scrollTo().tap();
      await $.pumpAndSettle(duration: const Duration(seconds: 5));

      return $(K.profileTab).exists;
    } catch (e) {
      print('Error creating test work: $e');
      return false;
    }
  }

  /// Verifica que el trabajo muestra los datos esperados en la página de detalle
  static Future<bool> verifyWorkDetails(
    PatrolIntegrationTester $, {
    required String expectedTitle,
    String? expectedDescription,
  }) async {
    try {
      final isInDetailPage = $(registerKeys.workDetail.page).exists;
      if (!isInDetailPage) {
        print('We are not in the work detail page');
        return false;
      }

      await $.pumpAndSettle();

      final titleMatch = $(expectedTitle).exists;
      if (!titleMatch) {
        print('The title does not match the expected: $expectedTitle');
        return false;
      }

      if (expectedDescription != null && expectedDescription.isNotEmpty) {
        final descriptionMatch = $(expectedDescription).exists;
        if (!descriptionMatch) {
          print(
              'The description does not match the expected: $expectedDescription');
          return false;
        }
      }

      return true;
    } catch (e) {
      print('Error verifying work details: $e');
      return false;
    }
  }

  /// Flujo completo de actualización: actualiza y verifica que los cambios sean visibles
  static Future<bool> updateAndVerifyWork(
    PatrolIntegrationTester $, {
    required String title,
    required String description,
    String? tagName,
    bool? setFeatured,
    bool? setHidden,
  }) async {
    // Primero actualizar
    final updateSuccess = await updateWork(
      $,
      title: title,
      description: description,
      tagName: tagName,
      setFeatured: setFeatured,
      setHidden: setHidden,
    );

    if (!updateSuccess) {
      return false;
    }

    // Luego verificar que los cambios son visibles
    return await verifyWorkDetails(
      $,
      expectedTitle: title,
      expectedDescription: description,
    );
  }
}
