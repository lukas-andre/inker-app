import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:patrol/patrol.dart';

import '../../../helpers/keys.dart';

class QuotationTestActions {
  static Future<void> navigateToArtistProfile(
    PatrolIntegrationTester $,
    String artistName,
  ) async {
    await $(InkerProgressIndicator).waitUntilVisible();
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
}
