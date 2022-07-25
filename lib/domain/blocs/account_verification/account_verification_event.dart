part of 'account_verification_bloc.dart';

abstract class AccountVerificationEvent extends Equatable {
  const AccountVerificationEvent();

  @override
  List<Object?> get props => [];
}

class VerificationSetContactInfoEvent extends AccountVerificationEvent {
  const VerificationSetContactInfoEvent();

  @override
  List<Object?> get props => [];
}

class VerificationClearEvent extends AccountVerificationEvent {
  const VerificationClearEvent();

  @override
  List<Object?> get props => [];
}

class VerificationResetEvent extends AccountVerificationEvent {
  const VerificationResetEvent();

  @override
  List<Object?> get props => [];
}

class VerificationSendSMSEvent extends AccountVerificationEvent {
  const VerificationSendSMSEvent();

  @override
  List<Object?> get props => [];
}

class VerificationSendEmailEvent extends AccountVerificationEvent {
  const VerificationSendEmailEvent();

  @override
  List<Object?> get props => [];
}

class VerificationPinCompletedEvent extends AccountVerificationEvent {
  final String pin;

  const VerificationPinCompletedEvent(this.pin);

  @override
  List<Object?> get props => [pin];
}

class VerificationPinChangedEvent extends AccountVerificationEvent {
  final String code;

  const VerificationPinChangedEvent(this.code);

  @override
  List<Object?> get props => [code];
}

class VerificationButtonPressedEvent extends AccountVerificationEvent {
  const VerificationButtonPressedEvent();

  @override
  List<Object?> get props => [];
}
