
part of 'account_reactivation_bloc.dart';

@freezed
class AccountReactivationEvent with _$AccountReactivationEvent {
  const factory AccountReactivationEvent.selectMethod(VerificationMethod method) = SelectVerificationMethodEvent;
  const factory AccountReactivationEvent.updateIdentifier(String identifier) = UpdateIdentifierEvent;
  const factory AccountReactivationEvent.sendCode() = SendVerificationCodeEvent;
  const factory AccountReactivationEvent.verifyCode(String code) = VerifyCodeEvent;
  const factory AccountReactivationEvent.reset() = ResetReactivationEvent;
}
