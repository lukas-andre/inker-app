import 'package:flutter/foundation.dart';

class RegisterKeys {
  final onboarding = OnboardingKeys();
  final customerRegistration = CustomerRegistrationKeys();
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
  final closeButton = const Key('close_button');
  final dialogYesButton = const Key('dialog_yes_button');
  final dialogNoButton = const Key('dialog_no_button');
}

final registerKeys = RegisterKeys();
