// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentDetailDtoImpl _$$AppointmentDetailDtoImplFromJson(Map json) =>
    _$AppointmentDetailDtoImpl(
      event: AppointmentEventDto.fromJson(
          Map<String, dynamic>.from(json['event'] as Map)),
      artist: Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      quotation: Quotation.fromJson(
          Map<String, dynamic>.from(json['quotation'] as Map)),
      actions: EventActions.fromJson(
          Map<String, dynamic>.from(json['actions'] as Map)),
    );

Map<String, dynamic> _$$AppointmentDetailDtoImplToJson(
        _$AppointmentDetailDtoImpl instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'artist': instance.artist.toJson(),
      'location': instance.location.toJson(),
      'quotation': instance.quotation.toJson(),
      'actions': instance.actions.toJson(),
    };

_$AppointmentEventDtoImpl _$$AppointmentEventDtoImplFromJson(Map json) =>
    _$AppointmentEventDtoImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String,
      title: json['title'] as String,
      startDate: _dateTimeFromJson(json['startDate'] as String),
      endDate: _dateTimeFromJson(json['endDate'] as String),
      color: json['color'] as String,
      info: json['info'] as String,
      notification: json['notification'] as bool,
      done: json['done'] as bool,
      status: json['status'] as String,
      workEvidence: json['workEvidence'],
      cancelationReason: json['cancelationReason'] as String?,
      rescheduleReason: json['rescheduleReason'] as String?,
      notes: json['notes'] as String?,
      preparationTime: (json['preparationTime'] as num?)?.toInt(),
      cleanupTime: (json['cleanupTime'] as num?)?.toInt(),
      lastStatusChange: json['lastStatusChange'] == null
          ? null
          : DateTime.parse(json['lastStatusChange'] as String),
      customerNotified: json['customerNotified'] as bool?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      quotationId: json['quotationId'] as String?,
      agenda:
          AgendaDto.fromJson(Map<String, dynamic>.from(json['agenda'] as Map)),
      statusLog: (json['statusLog'] as List<dynamic>?)
          ?.map((e) =>
              StatusLogEntry.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$AppointmentEventDtoImplToJson(
    _$AppointmentEventDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'customerId': instance.customerId,
    'title': instance.title,
    'startDate': _dateTimeToJson(instance.startDate),
    'endDate': _dateTimeToJson(instance.endDate),
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
  writeNotNull('rescheduleReason', instance.rescheduleReason);
  writeNotNull('notes', instance.notes);
  writeNotNull('preparationTime', instance.preparationTime);
  writeNotNull('cleanupTime', instance.cleanupTime);
  writeNotNull(
      'lastStatusChange', instance.lastStatusChange?.toIso8601String());
  writeNotNull('customerNotified', instance.customerNotified);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('quotationId', instance.quotationId);
  val['agenda'] = instance.agenda.toJson();
  writeNotNull(
      'statusLog', instance.statusLog?.map((e) => e.toJson()).toList());
  return val;
}

_$AgendaDtoImpl _$$AgendaDtoImplFromJson(Map json) => _$AgendaDtoImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as String,
      artistId: json['artistId'] as String,
      workingDays: (json['workingDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      workingHoursStart: json['workingHoursStart'] as String?,
      workingHoursEnd: json['workingHoursEnd'] as String?,
      public: json['public'] as bool,
      open: json['open'] as bool,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$AgendaDtoImplToJson(_$AgendaDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'userId': instance.userId,
    'artistId': instance.artistId,
    'workingDays': instance.workingDays,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('workingHoursStart', instance.workingHoursStart);
  writeNotNull('workingHoursEnd', instance.workingHoursEnd);
  val['public'] = instance.public;
  val['open'] = instance.open;
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  return val;
}
