part of 'password_recovery_bloc.dart';

@freezed
class PasswordRecoveryEvent with _$PasswordRecoveryEvent {
  const factory PasswordRecoveryEvent.updateEmail(String email) = _UpdateEmail;
  const factory PasswordRecoveryEvent.sendCode() = _SendCode;
  const factory PasswordRecoveryEvent.updateCode(String code) = _UpdateCode;
  const factory PasswordRecoveryEvent.updatePassword(String password) = _UpdatePassword;
  const factory PasswordRecoveryEvent.updateConfirmPassword(String password) = _UpdateConfirmPassword;
  const factory PasswordRecoveryEvent.resetPassword() = _ResetPassword;
  const factory PasswordRecoveryEvent.reset() = _Reset;
}