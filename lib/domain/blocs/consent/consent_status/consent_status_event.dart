import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_status_event.freezed.dart';

@freezed
class ConsentStatusEvent with _$ConsentStatusEvent {
  const factory ConsentStatusEvent.checkStatus(String eventId) = _CheckStatus;
  const factory ConsentStatusEvent.acceptTerms(String eventId, String digitalSignature) = _AcceptTerms;
} 