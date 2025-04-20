import 'package:flutter/foundation.dart';

class RegisterKeys {
  final onboarding = OnboardingKeys();
  final customerRegistration = CustomerRegistrationKeys();
  final artistRegistration = ArtistRegistrationKeys();
  final registrationCommon = RegistrationCommonKeys();
  final login = LoginKeys();
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

final registerKeys = RegisterKeys();


