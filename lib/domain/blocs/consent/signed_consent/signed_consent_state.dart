part of 'signed_consent_bloc.dart';

@freezed
class SignedConsentState with _$SignedConsentState {
  const factory SignedConsentState.initial() = SignedConsentInitial;
  const factory SignedConsentState.loading() = SignedConsentLoading;
  const factory SignedConsentState.loaded({
    required String eventId,
    required String userId,
    required List<FormTemplate> requiredConsents,
    required List<SignedConsent> signedConsents,
    @Default(false) bool hasSignedAllRequired,
  }) = SignedConsentLoaded;
  const factory SignedConsentState.signingInProgress() = SignedConsentSigningInProgress;
  const factory SignedConsentState.signSuccess(String message) = SignedConsentSignSuccess;
  const factory SignedConsentState.error(String message) = SignedConsentError;
} 