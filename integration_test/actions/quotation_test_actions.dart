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
    // await $(InkerProgressIndicator).

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
              // Asegurarse de seleccionar el día correcto y no uno deshabilitado
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
    // Find quotation by description
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();

    // Tap reject button
    await $(K.quotationRejectButton).tap();

    await $(K.quotationRejectReasonField).tap();

    await $(Text).which<Text>((widget) => widget.data == rejectionReason).tap();

    // Fill additional details
    await $(K.quotationAdditionalDetailsField).enterText(additionalDetails);

    // // Submit rejection
    await $(K.quotationActionSubmitButton).tap();

    // Verify rejection success message
    await $(SuccessAnimationPage).waitUntilVisible();
    await $(K.successAnimationPageDoneButton).tap();
    // Verify we are back in the quotations list
    await $(QuotationListPage).waitUntilVisible();
  }

  static Future<void> acceptQuotationByDescription(
    PatrolIntegrationTester $, {
    required String description,
    required String estimatedCost,
    required String additionalDetails,
    DateTime? startTime,
  }) async {
    // Find and wait for quotation with description
    await $(Text)
        .which<Text>((widget) => widget.data?.contains(description) ?? false)
        .waitUntilVisible();

    // Tap reply button
    await $(K.quotationReplyButton).tap();

    // Fill estimated cost
    await $(K.estimatedCostField).enterText(estimatedCost);

    // Handle schedule assistant
    await _handleScheduleAssistant($, startTime: startTime ?? DateTime.now());

    // Add additional details
    await $(K.quotationAdditionalDetailsField).enterText(additionalDetails);

    // Submit response
    await $(K.quotationActionSubmitButton).tap();

    // Verify success and return to list
    await $(SuccessAnimationPage).waitUntilVisible();
    await $(K.successAnimationPageDoneButton).tap();
    await $(QuotationListPage).waitUntilVisible();
  }

  static Future<void> _handleScheduleAssistant(
    PatrolIntegrationTester $, {
    required DateTime startTime,
  }) async {
    // Abrir schedule assistant
    await $(K.dateTimeRangeSelector).tap();
    await $(K.scheduleAssistantView).waitUntilVisible();

    // Primero seleccionar el día en el calendario
    await _selectCalendarDate($, startTime);

    // Luego seleccionar la hora en la grilla
    await _selectTimeInGrid($, startTime);

    // Confirmar la selección
    await $(K.scheduleAssistantConfirmButton).tap();
  }

  static Future<void> _selectCalendarDate(
    PatrolIntegrationTester $,
    DateTime targetDate,
  ) async {
    // El formato es "mes del año" (e.g. "diciembre del 2024")
    final targetMonthString =
        DateFormat("MMMM 'del' y", 'es').format(targetDate);

    // Esperar a que el calendario sea visible
    await $(TableCalendar).waitUntilVisible();

    // Primero verificar si el día que queremos ya está visible y seleccionable
    final isTargetDayVisible = $(targetDate.day.toString()).visible;

    if (isTargetDayVisible) {
      // Si el día ya está visible, simplemente hacemos tap
      await $(targetDate.day.toString()).tap();
      return;
    }

    // Si no está visible, navegamos hasta encontrarlo
    int attempts = 0;
    const maxAttempts = 5;

    while (attempts < maxAttempts) {
      // Verificar si estamos en el mes correcto
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
          // Verificar que realmente se seleccionó el día
          await Future.delayed(const Duration(milliseconds: 300));
          if (dayFinder.visible) {
            return; // Salimos de la función si el día se seleccionó correctamente
          }
        }
      }

      // Solo navegamos si no hemos encontrado el día
      if (targetDate.isAfter(DateTime.now())) {
        await $(Icons.chevron_right).tap();
      } else {
        await $(Icons.chevron_left).tap();
      }

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

    print('${time.hour}:${time.minute}');
    // Tap on time cell
    await $(K.gridEventList)
        .containing(
            '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}')
        .scrollTo(view: $(K.gridEventList))
        .tap();

    // Wait for wheel picker
    await $(K.scheduleWheelPicker).waitUntilVisible();

    // Wait for wheels to be visible
    await $(K.timeWheelHourWheel).waitUntilVisible();
    await $(K.timeWheelMinuteWheel).waitUntilVisible();

    await Future.delayed(const Duration(milliseconds: 300));

    await $(K.scheduleWheelConfirmButton).tap();

    // Verify time was set
    await $(Text)
        .which<Text>((widget) =>
            widget.data?.contains(
                '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}') ??
            false)
        .waitUntilVisible();
  }
}
