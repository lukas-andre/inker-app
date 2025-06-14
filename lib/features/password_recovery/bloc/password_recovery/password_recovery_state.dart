part of 'password_recovery_bloc.dart';

enum PasswordRecoveryStatus {
  initial,
  sendingCode,
  codeSent,
  verifyingCode,
  recoverySuccess,
  error,
}

@freezed
class PasswordRecoveryState with _$PasswordRecoveryState {
  const PasswordRecoveryState._();
  
  const factory PasswordRecoveryState({
    @Default(PasswordRecoveryStatus.initial) PasswordRecoveryStatus status,
    @Default('') String email,
    String? emailError,
    @Default('') String code,
    String? codeError,
    @Default('') String password,
    String? passwordError,
    @Default('') String confirmPassword,
    String? confirmPasswordError,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _PasswordRecoveryState;

  bool get isValidEmail => email.isNotEmpty && emailError == null;
  bool get isValidCode => code.length == 5 && codeError == null;
  bool get isValidPasswords => 
      password.isNotEmpty && 
      confirmPassword.isNotEmpty &&
      passwordError == null &&
      confirmPasswordError == null;
}