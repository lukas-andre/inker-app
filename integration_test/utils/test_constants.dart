class TestConstants {
  // API Endpoints
  static const String apiEndpoint = 'f7f1-190-22-36-179.ngrok-free.app';
  static const String activateUserEndpoint = '/users/activate-by-email';
  static const String apiSecretKey = 'c31bd447-6054-4111-a881-7301e0b31ef3';
  
  // Timeouts
  static const int defaultTimeoutSeconds = 10;
  static const int defaultWaitDelay = 2;
  
  // Messages
  static const String verificationCodeSentMessage = 
      'Se ha enviado un código de verificación a tu celular';
      
  // Button texts
  static const String nextButtonText = 'Siguiente';
  static const String registerButtonText = 'Registrarme';
  
  // Form field translations
  static const String passwordLabel = 'Contraseña';
  static const String confirmPasswordLabel = 'Confirmar contraseña';
} 