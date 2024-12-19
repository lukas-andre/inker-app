
part of 'account_reactivation_bloc.dart';

enum VerificationMethod {
  sms,
  email,
  none
}

enum ReactivationStatus {
  initial,
  methodSelected,
  sendingCode,
  codeSent,
  verifyingCode,
  reactivationSuccess,
  reactivationFailed,
  error
}

@freezed
class AccountReactivationState with _$AccountReactivationState {
  const factory AccountReactivationState({
    @Default(VerificationMethod.none) VerificationMethod selectedMethod,
    @Default(ReactivationStatus.initial) ReactivationStatus status,
    @Default('') String identifier,
    String? identifierError,
    String? errorMessage,
    String? verificationCode,
    String? validatedUserId,
    @Default(false) bool isLoading,
  }) = _AccountReactivationState;

  const AccountReactivationState._();

  bool get isValidIdentifier {
    if (identifier.isEmpty) return false;
    
    switch (selectedMethod) {
      case VerificationMethod.email:
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        return emailRegex.hasMatch(identifier);
      case VerificationMethod.sms:
        return identifier.length >= 10 && int.tryParse(identifier.replaceAll(RegExp(r'[^0-9]'), '')) != null;
      case VerificationMethod.none:
        return false;
    }
  }
}