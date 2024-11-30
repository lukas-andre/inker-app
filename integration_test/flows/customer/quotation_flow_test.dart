import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../data/auth_test_data.dart';
import '../../data/customer_quotation_test_data.dart';
import '../../helpers/keys.dart';
import '../../helpers/test_actions.dart';
import '../../helpers/test_config.dart';

void main() {
  group('Customer Quotation Creation Flow Tests', () {
    setUp(() async {
      await TestConfig.initializeTests(resetDatabase: true);
    });

    tearDown(() async {
      await TestConfig.tearDownTests();
    });

    patrolTest(
      'Create quotation flow - happy path',
      config: TestConfig.defaultConfig,
      ($) async {
        await app.main();
        await TestActions.skipOnboarding($);

        await TestActions.performLogin(
          $,
          email: AuthTestData.validCustomerCredentials['email']!,
          password: AuthTestData.validCustomerCredentials['password']!,
        );

        await $(CustomerAppPage).waitUntilVisible();

        await TestActions.handleGpsPermission($);

        await $(InkerProgressIndicator).waitUntilVisible();
        await $(ExplorerListView).waitUntilVisible();

        await $(Text)
            .which<Text>((widget) => widget.data?.contains(CustomerQuotationTestData.artistName) ?? false)
            .tap();

        await $(ArtistProfilePage).waitUntilVisible();

        await $(K.createQuotationButton).tap();
        await $(CreateQuotationPage).waitUntilVisible();

        await $(K.createQuotationDescriptionField).enterText(
            CustomerQuotationTestData.quotationDescription);

        await $(K.createQuotationDateField).tap();
        final tomorrow = DateTime.now().add(const Duration(days: 1));
        await $(tomorrow.day.toString()).tap();
        await $('ACEPTAR').tap();

        await $(K.createQuotationDateField).waitUntilVisible();

        await $(K.createQuotationSubmitButton).tap();

        await $(SuccessAnimationPage).waitUntilVisible();
        await $('¡Cotización Enviada!').waitUntilVisible();
        await $(K.successAnimationPageDoneButton).tap();

        await $(ArtistProfilePage).waitUntilVisible();
      },
    );
  });
}
