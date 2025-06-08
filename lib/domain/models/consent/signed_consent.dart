import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';

part 'signed_consent.freezed.dart';
part 'signed_consent.g.dart';

@freezed
class SignedConsent with _$SignedConsent {
  const factory SignedConsent({
    required String id,
    required String eventId,
    String? formTemplateId,
    FormTemplate? formTemplate,
    required Map<String, dynamic> signedData,
    required String digitalSignature,
    required DateTime signedAt,
    required String userId,
    String? ipAddress,
    String? userAgent,
  }) = _SignedConsent;

  factory SignedConsent.fromJson(Map<String, dynamic> json) => 
      _$SignedConsentFromJson(json);
}

@freezed
class SignConsentDto with _$SignConsentDto {
  const factory SignConsentDto({
    required String eventId,
    String? formTemplateId,
    required Map<String, dynamic> signedData,
    required String digitalSignature,
  }) = _SignConsentDto;

  factory SignConsentDto.fromJson(Map<String, dynamic> json) => 
      _$SignConsentDtoFromJson(json);
} 