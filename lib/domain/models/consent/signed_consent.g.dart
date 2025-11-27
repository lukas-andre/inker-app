// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedConsentImpl _$$SignedConsentImplFromJson(Map json) =>
    _$SignedConsentImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      formTemplateId: json['formTemplateId'] as String?,
      formTemplate: json['formTemplate'] == null
          ? null
          : FormTemplate.fromJson(
              Map<String, dynamic>.from(json['formTemplate'] as Map)),
      signedData: Map<String, dynamic>.from(json['signedData'] as Map),
      digitalSignature: json['digitalSignature'] as String,
      signedAt: DateTime.parse(json['signedAt'] as String),
      userId: json['userId'] as String,
      ipAddress: json['ipAddress'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$$SignedConsentImplToJson(_$SignedConsentImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'eventId': instance.eventId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formTemplateId', instance.formTemplateId);
  writeNotNull('formTemplate', instance.formTemplate?.toJson());
  val['signedData'] = instance.signedData;
  val['digitalSignature'] = instance.digitalSignature;
  val['signedAt'] = instance.signedAt.toIso8601String();
  val['userId'] = instance.userId;
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('userAgent', instance.userAgent);
  return val;
}

_$SignConsentDtoImpl _$$SignConsentDtoImplFromJson(Map json) =>
    _$SignConsentDtoImpl(
      eventId: json['eventId'] as String,
      formTemplateId: json['formTemplateId'] as String?,
      signedData: Map<String, dynamic>.from(json['signedData'] as Map),
      digitalSignature: json['digitalSignature'] as String,
    );

Map<String, dynamic> _$$SignConsentDtoImplToJson(
    _$SignConsentDtoImpl instance) {
  final val = <String, dynamic>{
    'eventId': instance.eventId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formTemplateId', instance.formTemplateId);
  val['signedData'] = instance.signedData;
  val['digitalSignature'] = instance.digitalSignature;
  return val;
}
