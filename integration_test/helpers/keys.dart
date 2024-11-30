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
  static const createQuotationDescriptionField = Key('createQuotationDescriptionField');
  static const createQuotationDateField = Key('createQuotationDateField');
  static const createQuotationSubmitButton= Key('createQuotationSubmitButton');

  // Success animation page keys
  static const successAnimationPageDoneButton = Key('successAnimationPageDoneButton');
}
