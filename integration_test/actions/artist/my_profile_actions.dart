import 'package:flutter/widgets.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:patrol/patrol.dart';

class MyProfileTestActions {
  static Future<void> navigateToMyProfile(PatrolIntegrationTester $) async {
    await $(K.profileTab).tap();
  }

  static Future<void> pullRefresh(PatrolIntegrationTester $) async {
      final scrollFinder = $(Scrollable).at(0);
      await scrollFinder.scrollTo();
      await $.tester
          .drag($(registerKeys.myProfile.myProfileTitle), const Offset(0, 500));
    await $.pumpAndSettle();
  }
}
