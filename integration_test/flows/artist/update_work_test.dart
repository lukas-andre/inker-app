import 'package:flutter_test/flutter_test.dart';
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
    'Artist can update an existing work',
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
      await $.pumpAndSettle();

      // Primero crear un trabajo para poder actualizarlo
      final initialWorkTitle = 'Initial Work ${DateTime.now().millisecondsSinceEpoch}';
      const initialWorkDescription = 'This is the initial description of the work';

      final creationSuccess = await WorkTestActions.addWork(
        $,
        title: initialWorkTitle,
        description: initialWorkDescription,
        isFeatured: false,
        isHidden: false,
      );

      expect(creationSuccess, isTrue, 
          reason: 'Work creation should complete successfully');
      
      // Navegar al detalle del trabajo recién creado
      final navigatedToDetail = await WorkDetailTestActions.navigateToWorkDetail($);
      expect(navigatedToDetail, isTrue, 
          reason: 'Should be able to navigate to work detail page');
      
      // Actualizar el trabajo con nueva información
      final updatedTitle = 'Updated Work ${DateTime.now().millisecondsSinceEpoch}';
      const updatedDescription = 'This description has been updated via test!';
      const newTag = 'testUpdateTag';
      
      final updateSuccess = await WorkDetailTestActions.updateAndVerifyWork(
        $,
        title: updatedTitle,
        description: updatedDescription,
        tagName: newTag,
        setFeatured: true,
      );
      
      // Verificar que la actualización fue exitosa
      expect(updateSuccess, isTrue,
          reason: 'Work update should complete successfully and changes should be visible');

        
          
      // Desactivar el modo de prueba al finalizar
      disableTestMode();
    },
  );
} 