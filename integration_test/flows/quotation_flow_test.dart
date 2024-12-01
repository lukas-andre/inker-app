import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:patrol/patrol.dart';
import 'package:inker_studio/main.dart' as app;

import '../actions/auth_test_actions.dart';
import '../actions/permission_test_action.dart';
import '../actions/quotation_test_actions.dart';
import '../config/test_config.dart';
import '../data/auth_test_data.dart';
import '../data/customer_quotation_test_data.dart';

void main() {
  group('Customer Quotation Creation Flow Tests', () {
    setUp(() async {
      await TestConfig.initializeTests(resetDatabase: true);
    });

    tearDown(() async {
      await TestConfig.tearDownTests();
    });
    // patrolTest(
    //   'Create quotation flow - happy path',
    //   config: TestConfig.defaultConfig,
    //   ($) async {
    //     // Setup
    //     await app.main();
    //     await AuthTestActions.skipOnboarding($);
    //     await AuthTestActions.performLogin(
    //       $,
    //       email: AuthTestData.validCustomerCredentials['email']!,
    //       password: AuthTestData.validCustomerCredentials['password']!,
    //     );

    //     await $(CustomerAppPage).waitUntilVisible();
    //     await PermissionTestActions.handleGpsPermission($);

    //     // Navigate to artist profile
    //     await QuotationTestActions.navigateToArtistProfile(
    //       $,
    //       CustomerQuotationTestData.artistName,
    //     );

    //     // Create quotation
    //     final tomorrow = DateTime.now().add(const Duration(days: 1));
    //     await QuotationTestActions.createQuotation(
    //       $,
    //       description: CustomerQuotationTestData.quotationDescription,
    //       date: tomorrow,
    //     );

    //     // Verify success
    //     await QuotationTestActions.verifySuccessAndReturn($);
    //   },
    // );

    // patrolTest(
    //   'Create and cancel quotation flow',
    //   config: TestConfig.defaultConfig,
    //   ($) async {
    //     // Setup & Create Quotation
    //     await app.main();
    //     await AuthTestActions.skipOnboarding($);
    //     await AuthTestActions.performLogin(
    //       $,
    //       email: AuthTestData.validCustomerCredentials['email']!,
    //       password: AuthTestData.validCustomerCredentials['password']!,
    //     );

    //     await $(CustomerAppPage).waitUntilVisible();
    //     await PermissionTestActions.handleGpsPermission($);

    //     // Create the quotation
    //     await QuotationTestActions.navigateToArtistProfile(
    //       $,
    //       CustomerQuotationTestData.artistName,
    //     );

    //     final validDate = CustomerQuotationTestData.getValidQuotationDate();
    //     await QuotationTestActions.createQuotation(
    //       $,
    //       description: CustomerQuotationTestData.quotationDescription,
    //       date: validDate,
    //     );

    //     await QuotationTestActions.verifySuccessAndReturn($);

    //     await $.native.pressBack();

    //     // Navigate to quotations and cancel
    //     await QuotationTestActions.navigateToQuotations($);

    //     await QuotationTestActions.cancelQuotationByDescription(
    //       $,
    //       artistName: CustomerQuotationTestData.artistName,
    //       description: CustomerQuotationTestData.quotationDescription,
    //     );
    //   },
    // );
  //   patrolTest(
  //     'Create quotation as customer and reject as artist flow',
  //     config: TestConfig.defaultConfig,
  //     ($) async {
  //       // 1. Customer Flow
  //       await app.main();
  //       await AuthTestActions.skipOnboarding($);
  //       await AuthTestActions.performLogin(
  //         $,
  //         email: AuthTestData.validCustomerCredentials['email']!,
  //         password: AuthTestData.validCustomerCredentials['password']!,
  //       );

  //       await $(CustomerAppPage).waitUntilVisible();
  //       await PermissionTestActions.handleGpsPermission($);

  //       // Create quotation
  //       await QuotationTestActions.navigateToArtistProfile(
  //         $,
  //         CustomerQuotationTestData.artistName,
  //       );

  //       final validDate = CustomerQuotationTestData.getValidQuotationDate();
  //       await QuotationTestActions.createQuotation(
  //         $,
  //         description: CustomerQuotationTestData.quotationDescription,
  //         date: validDate,
  //       );

  //       await QuotationTestActions.verifySuccessAndReturn($);

  //       // Return to customer app
  //       await $.native.pressBack();

  //       // Logout customer
  //       await AuthTestActions.customerLogout($);

  //       // 2. Artist Flow
  //       await AuthTestActions.performLogin(
  //         $,
  //         email: AuthTestData.validArtistCredentials['email']!,
  //         password: AuthTestData.validArtistCredentials['password']!,
  //       );

  //       await $(ArtistAppPage).waitUntilVisible();
  //       await $(QuotationListPage).waitUntilVisible();

  //       // Verify and reject quotation
  //       await QuotationTestActions.rejectQuotationByDescription(
  //         $,
  //         description: CustomerQuotationTestData.quotationDescription,
  //         rejectionReason: 'Otro',
  //         additionalDetails: 'Test additional details',
  //       );
  //     },
  //   );
  // });

  patrolTest(
    'Create quotation as customer and accept as artist flow',
    config: TestConfig.defaultConfig,
    ($) async {
      // 1. Customer Flow
      await app.main();
      await AuthTestActions.skipOnboarding($);
      await AuthTestActions.performLogin(
        $,
        email: AuthTestData.validCustomerCredentials['email']!,
        password: AuthTestData.validCustomerCredentials['password']!,
      );

      await $(CustomerAppPage).waitUntilVisible();
      await PermissionTestActions.handleGpsPermission($);

      // Create quotation
      await QuotationTestActions.navigateToArtistProfile(
        $,
        CustomerQuotationTestData.artistName,
      );

      final validDate = CustomerQuotationTestData.getValidQuotationDate();
      await QuotationTestActions.createQuotation(
        $,
        description: CustomerQuotationTestData.quotationDescription,
        date: validDate,
      );

      await QuotationTestActions.verifySuccessAndReturn($);
      await $.native.pressBack();
      await AuthTestActions.customerLogout($);

      // 2. Artist Flow
      await AuthTestActions.performLogin(
        $,
        email: AuthTestData.validArtistCredentials['email']!,
        password: AuthTestData.validArtistCredentials['password']!,
      );

      await $(ArtistAppPage).waitUntilVisible();
      await $(QuotationListPage).waitUntilVisible();

      // Accept quotation with all details
      final appointmentTime = DateTime(
        validDate.year,
        validDate.month,
        validDate.day,
        10, // 10 AM
        0, // 0 minutes
      );

      await QuotationTestActions.acceptQuotationByDescription(
        $,
        description: CustomerQuotationTestData.quotationDescription,
        estimatedCost: '150000',
        additionalDetails: 'Sesión de 2 horas para tatuaje de dragón japonés',
        startTime: appointmentTime,
      );
    },
    );
  });
}
