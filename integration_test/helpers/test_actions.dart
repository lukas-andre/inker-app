import 'package:inker_studio/ui/customer/explore/gps_access_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:patrol/patrol.dart';

import 'keys.dart';

class TestActions {
  static Future<void> skipOnboarding(PatrolIntegrationTester $) async {
    await $.pumpAndSettle();

    await $(OnBoardingPage).waitUntilVisible();

    await $('Saltar').tap();
  }

  static Future<void> performLogin(
    PatrolIntegrationTester $, {
    required String email,
    required String password,
  }) async {
    await $(K.signInButton).tap();

    await $(K.usernameField).enterText(email);
    await $(K.passwordField).enterText(password);

    await $(K.loginButton).tap();
    await $.pumpAndSettle();
  }

  static Future<void> verifyProfileElements(PatrolIntegrationTester $) async {
    await $(K.artistProfileContent).waitUntilVisible();
    await $(K.artistProfileHeader).waitUntilVisible();
    await $(K.artistProfileContactInfo).waitUntilVisible();

    await $(K.artistProfileDetails).scrollTo();
    await $(K.artistProfileDetails).waitUntilVisible();
    await $(K.artistProfileStudioPhoto).scrollTo();
    await $(K.artistProfileStudioPhoto).waitUntilVisible();
  }

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
