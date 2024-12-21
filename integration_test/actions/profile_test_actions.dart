// profile_test_actions.dart
import 'package:inker_studio/keys.dart';
import 'package:patrol/patrol.dart';


class ProfileTestActions {
  static Future<void> verifyArtistProfileElements(PatrolIntegrationTester $) async {
    await $(K.artistProfileContent).waitUntilVisible();
    await $(K.artistProfileHeader).waitUntilVisible();
    await $(K.artistProfileContactInfo).waitUntilVisible();

    await $(K.artistProfileDetails).scrollTo();
    await $(K.artistProfileDetails).waitUntilVisible();
    await $(K.artistProfileStudioPhoto).scrollTo();
    await $(K.artistProfileStudioPhoto).waitUntilVisible();
  }

  static Future<void> navigateToProfile(PatrolIntegrationTester $) async {
    await $(K.profileTab).tap();
  }
}