part of 'verification_bloc.dart';

abstract class VerificationEvent extends Equatable {
  const VerificationEvent();

  @override
  List<Object?> get props => [];
}

class VerificationSetContactInfoEvent extends VerificationEvent {
  const VerificationSetContactInfoEvent();

  @override
  List<Object?> get props => [];
}

class VerificationClearEvent extends VerificationEvent {
  const VerificationClearEvent();

  @override
  List<Object?> get props => [];
}

class VerificationSendSMSEvent extends VerificationEvent {
  const VerificationSendSMSEvent();

  @override
  List<Object?> get props => [];
}

class VerificationSendEmailEvent extends VerificationEvent {
  const VerificationSendEmailEvent();

  @override
  List<Object?> get props => [];
}

class VerificationPinCompletedEvent extends VerificationEvent {
  final String pin;

  const VerificationPinCompletedEvent(this.pin);

  @override
  List<Object?> get props => [pin];
}

class VerificationPinChangedEvent extends VerificationEvent {
  final String code;

  const VerificationPinChangedEvent(this.code);

  @override
  List<Object?> get props => [code];
}

class VerificationButtonPressedEvent extends VerificationEvent {
  const VerificationButtonPressedEvent();

  @override
  List<Object?> get props => [];
}
