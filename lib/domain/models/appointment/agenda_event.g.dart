// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgendaEventImpl _$$AgendaEventImplFromJson(Map json) => _$AgendaEventImpl(
      id: json['id'] as String,
      createdAt: _dateTimeFromJsonNullable(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJsonNullable(json['updatedAt'] as String?),
      customerId: json['customerId'] as String,
      title: json['title'] as String,
      startDate: _dateTimeFromJson(json['startDate'] as String),
      endDate: _dateTimeFromJson(json['endDate'] as String),
      color: json['color'] as String?,
      info: json['info'] as String?,
      notification: json['notification'] as bool? ?? false,
      done: json['done'] as bool? ?? false,
      status: json['status'] as String,
      workEvidence: json['workEvidence'],
      notes: json['notes'],
      preparationTime: (json['preparationTime'] as num?)?.toInt(),
      cleanupTime: (json['cleanupTime'] as num?)?.toInt(),
      customerNotified: json['customerNotified'] as bool? ?? false,
      deletedAt: _dateTimeFromJsonNullable(json['deletedAt'] as String?),
      statusLog: (json['statusLog'] as List<dynamic>?)
              ?.map((e) =>
                  StatusLogEntry.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      quotationId: json['quotationId'] as String?,
      reviewId: json['reviewId'] as String?,
      rescheduleLog: json['rescheduleLog'],
      messages: json['messages'] as List<dynamic>? ?? const [],
      agenda: json['agenda'] == null
          ? null
          : Agenda.fromJson(Map<String, dynamic>.from(json['agenda'] as Map)),
    );

Map<String, dynamic> _$$AgendaEventImplToJson(_$AgendaEventImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', _dateTimeToJsonNullable(instance.createdAt));
  writeNotNull('updatedAt', _dateTimeToJsonNullable(instance.updatedAt));
  val['customerId'] = instance.customerId;
  val['title'] = instance.title;
  val['startDate'] = _dateTimeToJson(instance.startDate);
  val['endDate'] = _dateTimeToJson(instance.endDate);
  writeNotNull('color', instance.color);
  writeNotNull('info', instance.info);
  val['notification'] = instance.notification;
  val['done'] = instance.done;
  val['status'] = instance.status;
  writeNotNull('workEvidence', instance.workEvidence);
  writeNotNull('notes', instance.notes);
  writeNotNull('preparationTime', instance.preparationTime);
  writeNotNull('cleanupTime', instance.cleanupTime);
  val['customerNotified'] = instance.customerNotified;
  writeNotNull('deletedAt', _dateTimeToJsonNullable(instance.deletedAt));
  val['statusLog'] = instance.statusLog.map((e) => e.toJson()).toList();
  writeNotNull('quotationId', instance.quotationId);
  writeNotNull('reviewId', instance.reviewId);
  writeNotNull('rescheduleLog', instance.rescheduleLog);
  val['messages'] = instance.messages;
  writeNotNull('agenda', instance.agenda?.toJson());
  return val;
}

_$StatusLogEntryImpl _$$StatusLogEntryImplFromJson(Map json) =>
    _$StatusLogEntryImpl(
      actor: Actor.fromJson(Map<String, dynamic>.from(json['actor'] as Map)),
      notes: json['notes'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      timestamp: _dateTimeFromJson(json['timestamp'] as String),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$StatusLogEntryImplToJson(
    _$StatusLogEntryImpl instance) {
  final val = <String, dynamic>{
    'actor': instance.actor.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  writeNotNull('reason', instance.reason);
  val['status'] = instance.status;
  val['timestamp'] = _dateTimeToJson(instance.timestamp);
  writeNotNull('action', instance.action);
  return val;
}

_$ActorImpl _$$ActorImplFromJson(Map json) => _$ActorImpl(
      role: json['role'] as String,
      roleId: json['roleId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ActorImplToJson(_$ActorImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'roleId': instance.roleId,
      'userId': instance.userId,
    };

_$AgendaImpl _$$AgendaImplFromJson(Map json) => _$AgendaImpl(
      id: json['id'] as String,
      createdAt: _dateTimeFromJsonNullable(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJsonNullable(json['updatedAt'] as String?),
      userId: json['userId'] as String,
      artistId: json['artistId'] as String,
      workingDays: (json['workingDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      workingHoursStart: json['workingHoursStart'] as String?,
      workingHoursEnd: json['workingHoursEnd'] as String?,
      public: json['public'] as bool? ?? true,
      open: json['open'] as bool? ?? true,
      deletedAt: _dateTimeFromJsonNullable(json['deletedAt'] as String?),
    );

Map<String, dynamic> _$$AgendaImplToJson(_$AgendaImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', _dateTimeToJsonNullable(instance.createdAt));
  writeNotNull('updatedAt', _dateTimeToJsonNullable(instance.updatedAt));
  val['userId'] = instance.userId;
  val['artistId'] = instance.artistId;
  val['workingDays'] = instance.workingDays;
  writeNotNull('workingHoursStart', instance.workingHoursStart);
  writeNotNull('workingHoursEnd', instance.workingHoursEnd);
  val['public'] = instance.public;
  val['open'] = instance.open;
  writeNotNull('deletedAt', _dateTimeToJsonNullable(instance.deletedAt));
  return val;
}
