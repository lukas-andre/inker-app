// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventActionReasonsImpl _$$EventActionReasonsImplFromJson(Map json) =>
    _$EventActionReasonsImpl(
      canEdit: json['canEdit'] as String?,
      canCancel: json['canCancel'] as String?,
      canReschedule: json['canReschedule'] as String?,
      canSendMessage: json['canSendMessage'] as String?,
      canAddWorkEvidence: json['canAddWorkEvidence'] as String?,
      canLeaveReview: json['canLeaveReview'] as String?,
      canConfirmEvent: json['canConfirmEvent'] as String?,
      canRejectEvent: json['canRejectEvent'] as String?,
      canAppeal: json['canAppeal'] as String?,
    );

Map<String, dynamic> _$$EventActionReasonsImplToJson(
    _$EventActionReasonsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('canEdit', instance.canEdit);
  writeNotNull('canCancel', instance.canCancel);
  writeNotNull('canReschedule', instance.canReschedule);
  writeNotNull('canSendMessage', instance.canSendMessage);
  writeNotNull('canAddWorkEvidence', instance.canAddWorkEvidence);
  writeNotNull('canLeaveReview', instance.canLeaveReview);
  writeNotNull('canConfirmEvent', instance.canConfirmEvent);
  writeNotNull('canRejectEvent', instance.canRejectEvent);
  writeNotNull('canAppeal', instance.canAppeal);
  return val;
}

_$EventActionsImpl _$$EventActionsImplFromJson(Map json) => _$EventActionsImpl(
      canEdit: json['canEdit'] as bool,
      canCancel: json['canCancel'] as bool,
      canReschedule: json['canReschedule'] as bool,
      canSendMessage: json['canSendMessage'] as bool,
      canAddWorkEvidence: json['canAddWorkEvidence'] as bool,
      canLeaveReview: json['canLeaveReview'] as bool,
      canConfirmEvent: json['canConfirmEvent'] as bool,
      canRejectEvent: json['canRejectEvent'] as bool,
      canAppeal: json['canAppeal'] as bool,
      reasons: EventActionReasons.fromJson(
          Map<String, dynamic>.from(json['reasons'] as Map)),
    );

Map<String, dynamic> _$$EventActionsImplToJson(_$EventActionsImpl instance) =>
    <String, dynamic>{
      'canEdit': instance.canEdit,
      'canCancel': instance.canCancel,
      'canReschedule': instance.canReschedule,
      'canSendMessage': instance.canSendMessage,
      'canAddWorkEvidence': instance.canAddWorkEvidence,
      'canLeaveReview': instance.canLeaveReview,
      'canConfirmEvent': instance.canConfirmEvent,
      'canRejectEvent': instance.canRejectEvent,
      'canAppeal': instance.canAppeal,
      'reasons': instance.reasons.toJson(),
    };
