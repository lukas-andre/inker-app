// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgendaEventResponseImpl _$$AgendaEventResponseImplFromJson(Map json) =>
    _$AgendaEventResponseImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String,
      title: json['title'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      color: json['color'] as String,
      info: json['info'] as String,
      notification: json['notification'] as bool,
      done: json['done'] as bool,
      status: json['status'] as String,
      workEvidence: (json['workEvidence'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      cancelationReason: json['cancelationReason'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      quotationId: json['quotationId'] as String?,
      agenda: (json['agenda'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      artist: (json['artist'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      location: (json['location'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
    );

Map<String, dynamic> _$$AgendaEventResponseImplToJson(
    _$AgendaEventResponseImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'customerId': instance.customerId,
    'title': instance.title,
    'startDate': instance.startDate.toIso8601String(),
    'endDate': instance.endDate.toIso8601String(),
    'color': instance.color,
    'info': instance.info,
    'notification': instance.notification,
    'done': instance.done,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('workEvidence', instance.workEvidence);
  writeNotNull('cancelationReason', instance.cancelationReason);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('quotationId', instance.quotationId);
  writeNotNull('agenda', instance.agenda);
  writeNotNull('artist', instance.artist);
  writeNotNull('location', instance.location);
  return val;
}
