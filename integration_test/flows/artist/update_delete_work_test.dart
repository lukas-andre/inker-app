import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;
import 'package:inker_studio/test_utils/test_mode.dart';
import '../../actions/auth_test_actions.dart';
import '../../actions/artist/work_actions.dart';
import '../../actions/artist/work_detail_actions.dart';

import '../../config/test_config.dart';

void main() {
  patrolTest(
    'Artist can create, update and delete a work in a complete flow',
    config: TestConfig.defaultConfig,
    nativeAutomatorConfig: const NativeAutomatorConfig(
      packageName: 'com.example.inker_studio',
      bundleId: 'com.inkerapp.inker',
    ),
    ($) async {
      // Activar el modo de prueba
      enableTestMode();
      
      app.main();
      await $.pumpAndSettle();

      if (await $.native.isPermissionDialogVisible()) {
        await $.native.grantPermissionWhenInUse();
      }

      try {
        if ($(CustomerAppPage).visible) {
          await AuthTestActions.customerLogout($);
        } else {
          await AuthTestActions.artistLogout($);
        }
      } catch (e) {
        print('Error during artist logout: $e');
      }

      await AuthTestActions.skipOnboarding($);
      
      if (await $.native.isPermissionDialogVisible()) {
        await $.native.grantPermissionWhenInUse();
      }

      await AuthTestActions.login(
        $,
        email: 'testartist7502@example.com',
        password: 'admin1',
      );

      // Navigate to profile tab for testing
      await $(K.profileTab).tap();
      
      // Ejecutar el flujo completo: crear, actualizar y eliminar un trabajo
      final initialTitle = 'Complete Flow Work ${DateTime.now().millisecondsSinceEpoch}';
      const initialDescription = 'This work will be updated and deleted in this test';
      final updatedTitle = 'Updated Flow Work ${DateTime.now().millisecondsSinceEpoch}';
      const updatedDescription = 'This work has been successfully updated and will be deleted';
      const tagName = 'completeFlowTag';

      // Crear un trabajo
      final creationSuccess = await WorkTestActions.addWork(
        $,
        title: initialTitle,
        description: initialDescription,
        isFeatured: false,
        isHidden: false,
      );
      
      expect(creationSuccess, isTrue, 
          reason: 'Work creation should complete successfully');

      // Refresh to see the new work
      final pullRefreshSuccess = await WorkTestActions.myProfilePullRefresh($);
      expect(pullRefreshSuccess, isTrue,
          reason: 'Pull refresh should complete successfully');

      // Navegar al detalle del trabajo recién creado
      final navigatedToDetail = await WorkDetailTestActions.navigateToWorkDetail($);
      expect(navigatedToDetail, isTrue, 
          reason: 'Should be able to navigate to work detail page');
          
      // Verificar que se muestran los datos iniciales
      final initialDataVisible = await WorkDetailTestActions.verifyWorkDetails(
        $,
        expectedTitle: initialTitle,
        expectedDescription: initialDescription,
      );
      
      expect(initialDataVisible, isTrue,
          reason: 'Initial work data should be visible');
      
      // Actualizar el trabajo y verificar que los cambios son visibles
      final updateSuccess = await WorkDetailTestActions.updateAndVerifyWork(
        $,
        title: updatedTitle,
        description: updatedDescription,
        tagName: tagName,
        setFeatured: true,
      );
      
      expect(updateSuccess, isTrue,
          reason: 'Work update should complete successfully and changes should be visible');
      
      // Eliminar el trabajo
      final deleteSuccess = await WorkDetailTestActions.deleteWork($);
      
      expect(deleteSuccess, isTrue,
          reason: 'Work deletion should complete successfully');
          
      // Pull refresh to update the works list
      final refreshSuccess = await WorkTestActions.myProfilePullRefresh($);
      expect(refreshSuccess, isTrue, reason: 'Pull refresh should complete successfully');
      
      
      // Desactivar el modo de prueba al finalizar
      disableTestMode();
    },
  );
} 