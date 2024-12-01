import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:intl/intl.dart';
import 'package:patrol/patrol.dart';
import 'package:table_calendar/table_calendar.dart';

class QuotationTestActions {
  static Future<void> navigateToArtistProfile(
    PatrolIntegrationTester $,
    String artistName,
  ) async {
    await $(ExplorerListView).waitUntilVisible();
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(artistName) ?? false)
        .tap();
    await $(ArtistProfilePage).waitUntilVisible();
  }

  static Future<void> createQuotation(
    PatrolIntegrationTester $, {
    required String description,
    required DateTime date,
  }) async {
    await $(K.createQuotationButton).tap();
    await $(CreateQuotationPage).waitUntilVisible();
    await $(K.createQuotationDescriptionField).enterText(description);
    await _selectDate($, date);
    await $(K.createQuotationSubmitButton).tap();
  }

  static Future<void> _selectDate(
      PatrolIntegrationTester $, DateTime date) async {
    await $(K.createQuotationDateField).tap();
    final currentMonth = DateTime.now();

    if (date.month != currentMonth.month || date.year != currentMonth.year) {
      if (date.isAfter(currentMonth)) {
        await $(Icons.chevron_right).tap();
      }
    }

    await $(Text)
        .which<Text>(
          (widget) =>
              widget.data == date.day.toString() &&
              widget.style?.color != const Color(0x61000000),
        )
        .tap();

    await $(Text)
        .which<Text>((widget) => widget.data?.toLowerCase() == 'aceptar')
        .tap();

    await $(K.createQuotationDateField).waitUntilVisible();
  }

  static Future<void> verifySuccessAndReturn(PatrolIntegrationTester $) async {
    await $(SuccessAnimationPage).waitUntilVisible();
    await $('¡Cotización Enviada!').waitUntilVisible();
    await $(K.successAnimationPageDoneButton).tap();
    await $(ArtistProfilePage).waitUntilVisible();
  }

  static Future<void> navigateToQuotations(PatrolIntegrationTester $) async {
    await $(K.quotationsTab).tap();
    await $(QuotationListPage).waitUntilVisible();
  }

  static Future<void> cancelQuotationByDescription(
    PatrolIntegrationTester $, {
    required String artistName,
    required String description,
  }) async {
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();
    await $(K.quotationCancelButton).first.tap();
    await $(K.quotationConfirmCancelButton).tap();
    await $(K.quotationCancelSuccessMessage).waitUntilVisible();
  }

  static Future<void> cancelQuotationButPressNo(
    PatrolIntegrationTester $, {
    required String description,
  }) async {
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();

    await $(ElevatedButton)
        .which((widget) =>
            widget is ElevatedButton &&
            widget.child is Row &&
            (widget.child as Row)
                .children
                .any((child) => child is Text && child.data == 'Cancelar'))
        .tap();

    await $(K.quotationCancelDialogTitle).waitUntilVisible();
    await $(K.quotationNoCancelButton).tap();
    await $(QuotationListPage).waitUntilVisible();
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();
  }

  static Future<void> rejectQuotationByDescription(
    PatrolIntegrationTester $, {
    required String description,
    required String rejectionReason,
    required String additionalDetails,
  }) async {
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();
    await $(K.quotationRejectButton).tap();
    await $(K.quotationRejectReasonField).tap();
    await $(Text).which<Text>((widget) => widget.data == rejectionReason).tap();
    await $(K.quotationAdditionalDetailsField).enterText(additionalDetails);
    await $(K.quotationActionSubmitButton).tap();
    await $(SuccessAnimationPage).waitUntilVisible();
    await $(K.successAnimationPageDoneButton).tap();
    await $(QuotationListPage).waitUntilVisible();
  }

  static Future<void> acceptQuotationByDescription(
    PatrolIntegrationTester $, {
    required String description,
    required String estimatedCost,
    required String additionalDetails,
    DateTime? startTime,
  }) async {
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();
    await $(K.quotationReplyButton).tap();
    await $(K.estimatedCostField).enterText(estimatedCost);
    await _handleScheduleAssistant($, startTime: startTime ?? DateTime.now());
    await $(K.quotationAdditionalDetailsField).enterText(additionalDetails);
    await $(K.quotationActionSubmitButton).tap();
    await $(SuccessAnimationPage).waitUntilVisible();
    await $(K.successAnimationPageDoneButton).tap();
    await $(QuotationListPage).waitUntilVisible();
  }

  static Future<void> _handleScheduleAssistant(
    PatrolIntegrationTester $, {
    required DateTime startTime,
  }) async {
    await $(K.dateTimeRangeSelector).tap();
    await $(K.scheduleAssistantView).waitUntilVisible();
    await _selectCalendarDate($, startTime);
    await _selectTimeInGrid($, startTime);
    await $(K.scheduleAssistantConfirmButton).tap();
  }

  static Future<void> _selectCalendarDate(
    PatrolIntegrationTester $,
    DateTime targetDate,
  ) async {
    final targetMonthString =
        DateFormat("MMMM 'del' y", 'es').format(targetDate);
    await $(TableCalendar).waitUntilVisible();

    if ($(targetDate.day.toString()).visible) {
      await $(targetDate.day.toString()).tap();
      return;
    }

    int attempts = 0;
    const maxAttempts = 5;

    while (attempts < maxAttempts) {
      final isCorrectMonth = $(Text)
          .which<Text>(
            (text) =>
                text.data?.toLowerCase() == targetMonthString.toLowerCase(),
          )
          .visible;

      if (isCorrectMonth) {
        final dayFinder = $(Text)
            .which<Text>((text) => text.data == targetDate.day.toString());

        if (dayFinder.visible) {
          await dayFinder.tap();
          await Future.delayed(const Duration(milliseconds: 300));
          if (dayFinder.visible) return;
        }
      }

      await $(targetDate.isAfter(DateTime.now())
              ? Icons.chevron_right
              : Icons.chevron_left)
          .tap();
      await Future.delayed(const Duration(milliseconds: 300));
      attempts++;
    }

    throw Exception(
      'No se pudo encontrar o seleccionar el día ${targetDate.day} después de $maxAttempts intentos',
    );
  }

  static Future<void> _selectTimeInGrid(
    PatrolIntegrationTester $,
    DateTime time,
  ) async {
    await $(GridView).waitUntilVisible();
    final formattedTime =
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';

    await $(K.gridEventList)
        .containing(formattedTime)
        .scrollTo(view: $(K.gridEventList))
        .tap();

    await $(K.scheduleWheelPicker).waitUntilVisible();
    await $(K.timeWheelHourWheel).waitUntilVisible();
    await $(K.timeWheelMinuteWheel).waitUntilVisible();
    await Future.delayed(const Duration(milliseconds: 300));
    await $(K.scheduleWheelConfirmButton).tap();
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(formattedTime) ?? false)
        .waitUntilVisible();
  }
}
