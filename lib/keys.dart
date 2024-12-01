import 'package:flutter/foundation.dart';

typedef K = Keys;

class Keys {
  const Keys();

  // OnBoarding
  static const skipButton = Key('skip_button');
  static const signInButton = Key('onboarding_signin_button');

  // Login
  static const usernameField = Key('loginForm_usernameInput_textField');
  static const passwordField = Key('loginForm_passwordInput_textField');
  static const loginButton = Key('loginForm_signin_button');

  // Navigation keys
  static const profileTab = Key('profileTab');
  static const quotationsTab = Key('quotationsTab');
  static const exploreTab = Key('exploreTab');
  static const agendaTab = Key('agendaTab');
  static const settingsButton = Key('settingsButton');

  // Settings page keys
  static const logoutButton = Key('logoutButton');
  static const cancelLogoutButton = Key('cancelLogoutButton');
  static const confirmLogoutButton = Key('confirmLogoutButton');

  // Profile section keys
  static const artistProfileContent = Key('artistProfileContent');
  static const artistProfileHeader = Key('artistProfileHeader');
  static const artistProfileContactInfo = Key('artistProfileContactInfo');
  static const artistProfileDetails = Key('artistProfileDetails');
  static const artistProfileStudioPhoto = Key('artistProfileStudioPhoto');

  // Explorer list view keys
  static const artistGridView = Key('artistGridView');

  // Artist profile keys
  static const createQuotationButton = Key('createQuotationButton');

  // Quotation keys
  static const createQuotationDescriptionField =
      Key('createQuotationDescriptionField');
  static const createQuotationDateField = Key('createQuotationDateField');
  static const createQuotationSubmitButton = Key('createQuotationSubmitButton');

  // Success animation page keys
  static const successAnimationPageDoneButton =
      Key('successAnimationPageDoneButton');

  // Quotation list page keys
  static const quotationCancelButton = Key('quotation_cancel_button');
  static const quotationRejectButton = Key('quotation_reject_button');
  static const quotationReplyButton = Key('quotation_reply_button');
  static const quotationAcceptButton = Key('quotation_accept_button');
  static const quotationAppealButton = Key('quotation_appeal_button');
  static const quotationActionsList = Key('quotation_actions');

  // Quotation cancel keys
  static Key quotationConfirmCancelButton =
      const Key('quotation_confirm_cancel_button');
  static Key quotationNoCancelButton = const Key('quotation_no_cancel_button');
  static Key quotationCancelDialogTitle =
      const Key('quotation_cancel_dialog_title');
  static const quotationCancelSuccessMessage = Key('quotation_cancel_success_message');

  // Response Quotation by artist keys
  static const quotationRejectReasonField = Key('quotation_reject_reason_field');
  static const quotationAdditionalDetailsField =
      Key('quotation_additional_details_field');
  static const estimatedCostField = Key('estimated_cost_field');
  static const dateTimeRangeSelector = Key('date_time_range_selector');
    static const quotationActionSubmitButton =
      Key('quotation_action_submit_button');

  // Schedule Assistant Keys
  static const scheduleAssistantView = Key('schedule_assistant_view');
  static const timeCell = Key('schedule_assistant_time_cell');
  static const timeCellModal = Key('schedule_assistant_time_cell_modal');
  static const scheduleAssistantConfirmButton =
      Key('schedule_assistant_confirm_button');
  static const scheduleWheelConfirmButton =
      Key('schedule_wheel_confirm_button');
  static const scheduleWheelPicker = Key('schedule_wheel_picker');
  static const gridEventList = Key('grid_event_list');

  static const timeWheelHourWheel = Key('time_wheel_hour_wheel');
  static const timeWheelMinuteWheel = Key('time_wheel_minute_wheel');
}
