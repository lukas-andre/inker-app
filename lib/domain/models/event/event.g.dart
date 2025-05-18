// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map json) => _$EventImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String,
      title: json['title'] as String,
      startDateTime: DateTime.parse(json['startDate'] as String),
      endDateTime: DateTime.parse(json['endDate'] as String),
      color: json['color'] as String?,
      info: json['info'] as String?,
      notification: json['notification'] as bool? ?? false,
      done: json['done'] as bool? ?? false,
      status: $enumDecode(_$EventStatusEnumMap, json['status']),
      workEvidence: json['workEvidence'] == null
          ? null
          : WorkEvidence.fromJson(
              Map<String, dynamic>.from(json['workEvidence'] as Map)),
      notes: json['notes'] as String?,
      preparationTime: (json['preparationTime'] as num?)?.toInt(),
      cleanupTime: (json['cleanupTime'] as num?)?.toInt(),
      customerNotified: json['customerNotified'] as bool? ?? false,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      statusLog: json['statusLog'],
      quotationId: json['quotationId'] as String?,
      reviewId: json['reviewId'] as String?,
      rescheduleLog: json['rescheduleLog'],
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) =>
                  EventMessage.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      agenda: Agenda.fromJson(Map<String, dynamic>.from(json['agenda'] as Map)),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'customerId': instance.customerId,
    'title': instance.title,
    'startDate': instance.startDateTime.toIso8601String(),
    'endDate': instance.endDateTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color);
  writeNotNull('info', instance.info);
  val['notification'] = instance.notification;
  val['done'] = instance.done;
  val['status'] = _$EventStatusEnumMap[instance.status]!;
  writeNotNull('workEvidence', instance.workEvidence?.toJson());
  writeNotNull('notes', instance.notes);
  writeNotNull('preparationTime', instance.preparationTime);
  writeNotNull('cleanupTime', instance.cleanupTime);
  val['customerNotified'] = instance.customerNotified;
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('statusLog', instance.statusLog);
  writeNotNull('quotationId', instance.quotationId);
  writeNotNull('reviewId', instance.reviewId);
  writeNotNull('rescheduleLog', instance.rescheduleLog);
  val['messages'] = instance.messages.map((e) => e.toJson()).toList();
  val['agenda'] = instance.agenda.toJson();
  return val;
}

const _$EventStatusEnumMap = {
  EventStatus.pending: 'pending',
  EventStatus.scheduled: 'scheduled',
  EventStatus.confirmed: 'confirmed',
  EventStatus.canceled: 'canceled',
  EventStatus.rescheduledPendingApproval: 'rescheduled_pending_approval',
  EventStatus.rescheduled: 'rescheduled',
  EventStatus.completed: 'completed',
  EventStatus.doneStatus: 'done',
  EventStatus.awaitingPhotos: 'awaiting_photos',
  EventStatus.awaitingReview: 'awaiting_review',
};
