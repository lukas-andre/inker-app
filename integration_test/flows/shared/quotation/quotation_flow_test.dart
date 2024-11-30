import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';


import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../../../data/auth_test_data.dart';
import '../../../data/customer_quotation_test_data.dart';
import '../../../helpers/test_actions.dart';
import '../../../helpers/test_config.dart';
import 'quotation_test_actions.dart';

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
        // Setup
        await app.main();
        await TestActions.skipOnboarding($);
        await TestActions.performLogin(
          $,
          email: AuthTestData.validCustomerCredentials['email']!,
          password: AuthTestData.validCustomerCredentials['password']!,
        );

        await $(CustomerAppPage).waitUntilVisible();
        await TestActions.handleGpsPermission($);

        // Navigate to artist profile
        await QuotationTestActions.navigateToArtistProfile(
          $,
          CustomerQuotationTestData.artistName,
        );

        // Create quotation
        final tomorrow = DateTime.now().add(const Duration(days: 1));
        await QuotationTestActions.createQuotation(
          $,
          description: CustomerQuotationTestData.quotationDescription,
          date: tomorrow,
        );

        // Verify success
        await QuotationTestActions.verifySuccessAndReturn($);
      },
    );
  });
}
