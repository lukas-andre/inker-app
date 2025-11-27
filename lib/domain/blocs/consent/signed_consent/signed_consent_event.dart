part of 'signed_consent_bloc.dart';

@freezed
class SignedConsentEvent with _$SignedConsentEvent {
  const factory SignedConsentEvent.started() = _Started;
  const factory SignedConsentEvent.loaded() = _Loaded;
  const factory SignedConsentEvent.loadRequiredConsentsForEvent(String eventId, String userId) = _LoadRequiredConsentsForEvent;
  const factory SignedConsentEvent.loadSignedConsentsForEvent(String eventId, {String? userId}) = _LoadSignedConsentsForEvent;
  const factory SignedConsentEvent.signConsent(SignConsentDto dto) = _SignConsent;
  const factory SignedConsentEvent.checkConsentStatus(String eventId, String userId) = _CheckConsentStatus;
} 