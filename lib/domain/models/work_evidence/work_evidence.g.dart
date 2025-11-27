// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_evidence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkEvidenceImpl _$$WorkEvidenceImplFromJson(Map json) => _$WorkEvidenceImpl(
      count: (json['count'] as num).toInt(),
      metadata: (json['metadata'] as List<dynamic>)
          .map((e) => WorkEvidenceMetadata.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$WorkEvidenceImplToJson(_$WorkEvidenceImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'metadata': instance.metadata.map((e) => e.toJson()).toList(),
    };

_$WorkEvidenceMetadataImpl _$$WorkEvidenceMetadataImplFromJson(Map json) =>
    _$WorkEvidenceMetadataImpl(
      url: json['url'] as String,
      size: (json['size'] as num).toInt(),
      type: json['type'] as String,
      encoding: json['encoding'] as String,
      position: (json['position'] as num).toInt(),
      fieldname: json['fieldname'] as String,
      originalname: json['originalname'] as String,
    );

Map<String, dynamic> _$$WorkEvidenceMetadataImplToJson(
        _$WorkEvidenceMetadataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'size': instance.size,
      'type': instance.type,
      'encoding': instance.encoding,
      'position': instance.position,
      'fieldname': instance.fieldname,
      'originalname': instance.originalname,
    };
