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
}
