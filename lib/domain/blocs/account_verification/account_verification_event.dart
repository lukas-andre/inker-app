part of 'account_verification_bloc.dart';

abstract class AccountVerificationEvent extends Equatable {
  const AccountVerificationEvent();

  @override
  List<Object?> get props => [];
}

class AccountVerificationCreationSuccedEvent extends AccountVerificationEvent {
  const AccountVerificationCreationSuccedEvent();

  @override
  List<Object?> get props => [];
}

class AccountVerificationSendSMS extends AccountVerificationEvent {
  const AccountVerificationSendSMS();

  @override
  List<Object?> get props => [];
}

class AccountVerificationSendEmail extends AccountVerificationEvent {
  const AccountVerificationSendEmail();

  @override
  List<Object?> get props => [];
}

class AccountVerificationSuccessEvent extends AccountVerificationEvent {
  const AccountVerificationSuccessEvent();

  @override
  List<Object?> get props => [];
}

class AccountVerificationFailedEvent extends AccountVerificationEvent {
  const AccountVerificationFailedEvent();

  @override
  List<Object?> get props => [];
}
