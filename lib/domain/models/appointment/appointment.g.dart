// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map json) => _$AppointmentImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      customerId: json['customerId'] as String,
      artistId: json['artistId'] as String,
      title: json['title'] as String,
      info: json['info'] as String,
      startDate: _dateTimeFromJson(json['startDate'] as String),
      endDate: _dateTimeFromJson(json['endDate'] as String),
      status: $enumDecode(_$AppointmentStatusEnumMap, json['status']),
      artist: Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      color: json['color'] as String,
      notification: json['notification'] as bool,
      done: json['done'] as bool,
      quotationId: json['quotationId'] as String?,
      cancelationReason: json['cancelationReason'] as String?,
      workEvidence: json['workEvidence'] == null
          ? null
          : WorkEvidence.fromJson(
              Map<String, dynamic>.from(json['workEvidence'] as Map)),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      readByCustomer: json['readByCustomer'] as bool?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'eventId': instance.eventId,
    'customerId': instance.customerId,
    'artistId': instance.artistId,
    'title': instance.title,
    'info': instance.info,
    'startDate': _dateTimeToJson(instance.startDate),
    'endDate': _dateTimeToJson(instance.endDate),
    'status': _$AppointmentStatusEnumMap[instance.status]!,
    'artist': instance.artist.toJson(),
    'location': instance.location.toJson(),
    'color': instance.color,
    'notification': instance.notification,
    'done': instance.done,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quotationId', instance.quotationId);
  writeNotNull('cancelationReason', instance.cancelationReason);
  writeNotNull('workEvidence', instance.workEvidence?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('readByCustomer', instance.readByCustomer);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  return val;
}

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.pending: 'pending',
  AppointmentStatus.confirmed: 'confirmed',
  AppointmentStatus.scheduled: 'scheduled',
  AppointmentStatus.inProgress: 'inProgress',
  AppointmentStatus.completed: 'completed',
  AppointmentStatus.rescheduled: 'rescheduled',
  AppointmentStatus.waitingForPhotos: 'waitingForPhotos',
  AppointmentStatus.waitingForReview: 'waitingForReview',
  AppointmentStatus.reviewed: 'reviewed',
  AppointmentStatus.canceled: 'canceled',
};

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
