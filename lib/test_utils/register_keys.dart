import 'package:flutter/foundation.dart';

class RegisterKeys {
  final onboarding = OnboardingKeys();
  final customerRegistration = CustomerRegistrationKeys();
  final artistRegistration = ArtistRegistrationKeys();
  final registrationCommon = RegistrationCommonKeys();
  final login = LoginKeys();
  final addStencil = AddStencilKeys();
  final workDetail = WorkDetailKeys();
  final myProfile = MyProfileKeys();
  final stencilDetail = StencilDetailKeys();
}

class MyProfileKeys {
  final myProfileTitle = const Key('myProfileTitle');
  final stencilsTitle = const Key('stencilsTitle');
  final worksTitle = const Key('worksTitle');
  final stencilItem = const Key('stencilItem');
}

class LoginKeys {
  final loginButton = const Key('login_button');
  final usernameField = const Key('loginForm_usernameInput_textField');
  final passwordField = const Key('loginForm_passwordInput_textField');
}

class OnboardingKeys {
  final registerButton = const Key('onboarding_register_button');
  final signInButton = const Key('onboarding_signin_button');
}

class CustomerRegistrationKeys {
  final customerTypeButton = const Key('customer_type_button');
  final firstNameField = const Key('first_name_field');
  final lastNameField = const Key('last_name_field');
  final emailField = const Key('email_field');
  final phoneField = const Key('phone_field');
  final passwordField = const Key('password_field');
  final confirmPasswordField = const Key('confirm_password_field');
  final nextButton = const Key('next_button');
  final createAccountButton = const Key('create_account_button');
}

class RegistrationCommonKeys {
  final closeButton = const Key('close_button');
  final dialogYesButton = const Key('dialog_yes_button');
  final dialogNoButton = const Key('dialog_no_button');
}

class ArtistRegistrationKeys {
  // Page 1 - Personal Data
  final nameInput = const Key('register_artist_name_input');
  final lastNameInput = const Key('register_artist_last_name_input');
  final usernameInput = const Key('register_artist_username_input');
  
  // Page 2 - Contact Information
  final phoneNumberInput = const Key('register_artist_phone_number_input');
  final emailInput = const Key('register_artist_email_input');
  
  // Page 3 - Password
  final passwordInput = const Key('register_artist_password_input');
  final confirmPasswordInput = const Key('register_artist_confirm_password_input');
  
  // Page 4 - Address
  final addressInput = const Key('register_artist_address_input');
  final addressTypeInput = const Key('register_artist_address_type_input');
  final addressExtraInput = const Key('register_artist_address_extra_input');
  final addressSuggestionItem = const Key('register_artist_address_suggestion_item');
  final addressSuggestionsList = const Key('register_artist_address_suggestions_list');
  
  // Address type options
  final addressTypeHome = const Key('register_artist_address_type_input-home');
  final addressTypeApartment = const Key('register_artist_address_type_input-apartment');
  final addressTypeOffice = const Key('register_artist_address_type_input-office');
  final addressTypeOther = const Key('register_artist_address_type_input-other');
  
  // Navigation buttons
  final nextButton = const Key('register_artist_next_button');
  final backButton = const Key('register_artist_back_button');
  final registerButton = const Key('register_artist_register_button');
  final artistTypeButton = const Key('register_artist_type_button');

}

class AddStencilKeys {
  final page = const Key('add_stencil_page');
  final imagePicker = const Key('add_stencil_image_picker');
  final titleField = const Key('add_stencil_title_field');
  final descriptionField = const Key('add_stencil_description_field');
  final tagField = const Key('add_stencil_tag_field');
  final tagSuggestionsList = const Key('add_stencil_tag_suggestions_list');
  final createNewTagButton = const Key('add_stencil_create_new_tag_button');
  final selectedTagsWrap = const Key('add_stencil_selected_tags_wrap');
  final featuredSwitch = const Key('add_stencil_featured_switch');
  final hiddenSwitch = const Key('add_stencil_hidden_switch');
  final submitButton = const Key('add_stencil_submit_button');
}

class WorkDetailKeys {
  // Detail page main screen
  final page = const Key('work_detail_page');
  final editButton = const Key('work_detail_edit_button');
  final saveButton = const Key('work_detail_save_button');
  final deleteButton = const Key('work_detail_delete_button');
  final imageViewer = const Key('work_detail_image_viewer');
  
  // Edit form
  final titleField = const Key('work_detail_title_field');
  final descriptionField = const Key('work_detail_description_field');
  final tagField = const Key('work_detail_tag_field');
  final createNewTagButton = const Key('work_detail_create_new_tag_button');
  final featuredSwitch = const Key('work_detail_featured_switch');
  final hiddenSwitch = const Key('work_detail_hidden_switch');
  
  // Delete confirmation dialog
  final deleteDialog = const Key('work_detail_delete_dialog');
  final confirmDeleteButton = const Key('work_detail_confirm_delete_button');
  final cancelDeleteButton = const Key('work_detail_cancel_delete_button');

  // Add work button
  final addWorkButton = const Key('add_work_button');
  final addStencilButton = const Key('add_stencil_button');
  final addLocationButton = const Key('add_location_button');
  final imagePicker = const Key('image_picker');
  final tagSuggestionsList = const Key('tag_suggestions_list');
  final selectedTagsWrap = const Key('selected_tags_wrap');
  final submitButton = const Key('submit_button');

  final sourceDropdown = const Key('source_dropdown');
}

class StencilDetailKeys {
  // Detail page main screen
  final page = const Key('stencil_detail_page');
  final editButton = const Key('stencil_detail_edit_button');
  final saveButton = const Key('stencil_detail_save_button');
  final deleteButton = const Key('stencil_detail_delete_button');
  final imageViewer = const Key('stencil_detail_image_viewer');
  
  // Edit form
  final titleField = const Key('stencil_detail_title_field');
  final descriptionField = const Key('stencil_detail_description_field');
  final tagField = const Key('stencil_detail_tag_field');
  final createNewTagButton = const Key('stencil_detail_create_new_tag_button');
  final featuredSwitch = const Key('stencil_detail_featured_switch');
  final hiddenSwitch = const Key('stencil_detail_hidden_switch');
  
  // Delete confirmation dialog
  final deleteDialog = const Key('stencil_detail_delete_dialog');
  final confirmDeleteButton = const Key('stencil_detail_confirm_delete_button');
  final cancelDeleteButton = const Key('stencil_detail_cancel_delete_button');

  // Tags
  final tagSuggestionsList = const Key('stencil_detail_tag_suggestions_list');
  final selectedTagsWrap = const Key('stencil_detail_selected_tags_wrap');
}

final registerKeys = RegisterKeys();


