// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agenda_events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventItemImpl _$$EventItemImplFromJson(Map json) => _$EventItemImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String,
      title: json['title'] as String,
      start: DateTime.parse(json['startDate'] as String),
      end: DateTime.parse(json['endDate'] as String),
      color: json['color'] as String,
      info: json['info'] as String?,
      notification: json['notification'] as bool,
      done: json['done'] as bool,
      workEvidence: json['workEvidence'] == null
          ? null
          : WorkEvidence.fromJson(
              Map<String, dynamic>.from(json['workEvidence'] as Map)),
      cancelationReason: json['cancelationReason'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      quotationId: json['quotationId'] as String?,
    );

Map<String, dynamic> _$$EventItemImplToJson(_$EventItemImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'customerId': instance.customerId,
    'title': instance.title,
    'startDate': instance.start.toIso8601String(),
    'endDate': instance.end.toIso8601String(),
    'color': instance.color,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('info', instance.info);
  val['notification'] = instance.notification;
  val['done'] = instance.done;
  writeNotNull('workEvidence', instance.workEvidence?.toJson());
  writeNotNull('cancelationReason', instance.cancelationReason);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('quotationId', instance.quotationId);
  return val;
}

_$WorkEvidenceImpl _$$WorkEvidenceImplFromJson(Map json) => _$WorkEvidenceImpl(
      count: (json['count'] as num).toInt(),
      metadata: (json['metadata'] as List<dynamic>)
          .map((e) => Metadata.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$WorkEvidenceImplToJson(_$WorkEvidenceImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'metadata': instance.metadata.map((e) => e.toJson()).toList(),
    };

_$MetadataImpl _$$MetadataImplFromJson(Map json) => _$MetadataImpl(
      url: json['url'] as String,
      size: (json['size'] as num).toInt(),
      type: json['type'] as String,
      encoding: json['encoding'] as String,
      position: (json['position'] as num).toInt(),
      fieldname: json['fieldname'] as String,
      originalname: json['originalname'] as String,
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'size': instance.size,
      'type': instance.type,
      'encoding': instance.encoding,
      'position': instance.position,
      'fieldname': instance.fieldname,
      'originalname': instance.originalname,
    };
