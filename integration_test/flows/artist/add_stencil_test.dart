import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;
import 'package:inker_studio/test_utils/test_mode.dart';
import '../../actions/auth_test_actions.dart';
import '../../actions/artist/stencil_actions.dart';

import '../../config/test_config.dart';

void main() {
  patrolTest(
    'Artist can add a new stencil with tag',
    config: TestConfig.defaultConfig,
    nativeAutomatorConfig: const NativeAutomatorConfig(
      packageName: 'com.example.inker_studio',
      bundleId: 'com.inkerapp.inker',
    ),
    ($) async {
      // Activar el modo de prueba antes de iniciar la app
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

      final stencilTitle =
          'Cool Dragon Test ${DateTime.now().millisecondsSinceEpoch}';
      const stencilDescription =
          'A detailed dragon stencil for automated testing.';

      final success = await StencilTestActions.addStencil(
        $,
        title: stencilTitle,
        description: stencilDescription,
        isFeatured: true,
        isHidden: false,
      );

      // Verify the operation was successful
      expect(success, isTrue,
          reason: 'Stencil creation should complete successfully');
          
      // Desactivar el modo de prueba al finalizar
      disableTestMode();
    },
  );
}
