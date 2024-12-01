import 'package:inker_studio/ui/customer/explore/gps_access_page.dart';
import 'package:patrol/patrol.dart';

class PermissionTestActions {
  static Future<void> handleGpsPermission(PatrolIntegrationTester $) async {
    if ($(AccessButton.accessButtonText).visible) {
      await $(AccessButton.accessButtonText).tap();
      await $(GpsAccessScreen).waitUntilVisible();

      if (await $.native
          .isPermissionDialogVisible(timeout: const Duration(seconds: 5))) {
        await $.native.selectFineLocation();
        await $.native.grantPermissionWhenInUse();
      }
    }
  }
}