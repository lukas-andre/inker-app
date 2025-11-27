import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;
import 'package:inker_studio/test_utils/test_mode.dart';
import '../../actions/artist/my_profile_actions.dart';
import '../../actions/auth_test_actions.dart';
import '../../actions/artist/stencil_actions.dart';
import '../../actions/artist/stencil_detail_actions.dart';

import '../../config/test_config.dart';

void main() {
  patrolTest(
    'Artist can create, update and delete a stencil in a complete flow',
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

      await MyProfileTestActions.navigateToMyProfile($);

      final initialTitle =
          'Test Stencil ${DateTime.now().millisecondsSinceEpoch}';
      const initialDescription =
          'This stencil will be updated and deleted in this test';
      final updatedTitle =
          'Updated Stencil ${DateTime.now().millisecondsSinceEpoch}';
      const updatedDescription =
          'This stencil has been successfully updated and will be deleted';
      const tagName = 'testStencilTag';

      final creationSuccess = await StencilTestActions.addStencil(
        $,
        title: initialTitle,
        description: initialDescription,
        tagName: tagName,
        isFeatured: true,
        isHidden: false,
      );

      expect(creationSuccess, isTrue,
          reason: 'Stencil creation should complete successfully');

      // Pull refresh to refresh the list
      await MyProfileTestActions.pullRefresh($);
      await $.pumpAndSettle();

      // Navigate to the stencil detail page
      final navigatedToDetail =
          await StencilDetailTestActions.navigateToStencilDetail($);
      expect(navigatedToDetail, isTrue,
          reason: 'Should be able to navigate to stencil detail page');

      // Verify that the initial data is shown
      final initialDataVisible =
          await StencilDetailTestActions.verifyStencilDetails(
        $,
        expectedTitle: initialTitle,
        expectedDescription: initialDescription,
      );

      expect(initialDataVisible, isTrue,
          reason: 'Initial stencil data should be visible');

      // Update the stencil and verify changes
      final updateSuccess =
          await StencilDetailTestActions.updateAndVerifyStencil(
        $,
        title: updatedTitle,
        description: updatedDescription,
        tagName: 'updatedTag',
        setFeatured: true,
      );

      expect(updateSuccess, isTrue,
          reason:
              'Stencil update should complete successfully and changes should be visible');

      // Delete the stencil
      final deleteSuccess = await StencilDetailTestActions.deleteStencil($);

      expect(deleteSuccess, isTrue,
          reason: 'Stencil deletion should complete successfully');

      // Desactivar el modo de prueba al finalizar
      disableTestMode();
    },
  );
}
