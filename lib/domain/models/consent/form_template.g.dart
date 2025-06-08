// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormTemplateImpl _$$FormTemplateImplFromJson(Map json) => _$FormTemplateImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: FormSchema.fromJson(
          Map<String, dynamic>.from(json['content'] as Map)),
      version: (json['version'] as num).toInt(),
      consentType: $enumDecode(_$ConsentTypeEnumMap, json['consentType']),
      artistId: json['artistId'] as String,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FormTemplateImplToJson(_$FormTemplateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content.toJson(),
      'version': instance.version,
      'consentType': _$ConsentTypeEnumMap[instance.consentType]!,
      'artistId': instance.artistId,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ConsentTypeEnumMap = {
  ConsentType.generalTerms: 'GENERAL_TERMS',
  ConsentType.tattooConsent: 'TATTOO_CONSENT',
  ConsentType.imageRelease: 'IMAGE_RELEASE',
  ConsentType.other: 'OTHER',
};

_$CreateFormTemplateDtoImpl _$$CreateFormTemplateDtoImplFromJson(Map json) =>
    _$CreateFormTemplateDtoImpl(
      title: json['title'] as String,
      content: FormSchema.fromJson(
          Map<String, dynamic>.from(json['content'] as Map)),
      version: (json['version'] as num).toInt(),
      consentType: $enumDecode(_$ConsentTypeEnumMap, json['consentType']),
      artistId: json['artistId'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$CreateFormTemplateDtoImplToJson(
    _$CreateFormTemplateDtoImpl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
    'content': instance.content.toJson(),
    'version': instance.version,
    'consentType': _$ConsentTypeEnumMap[instance.consentType]!,
    'artistId': instance.artistId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isActive', instance.isActive);
  return val;
}
