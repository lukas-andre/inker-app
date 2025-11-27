// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_appointment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerAppointmentDtoImpl _$$CustomerAppointmentDtoImplFromJson(Map json) =>
    _$CustomerAppointmentDtoImpl(
      event:
          AgendaEvent.fromJson(Map<String, dynamic>.from(json['event'] as Map)),
      artist: Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      urgency: $enumDecode(_$AppointmentUrgencyLevelEnumMap, json['urgency']),
      contextualInfo: AppointmentContextualInfo.fromJson(
          Map<String, dynamic>.from(json['contextualInfo'] as Map)),
      availableActions: (json['availableActions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AppointmentActionEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CustomerAppointmentDtoImplToJson(
        _$CustomerAppointmentDtoImpl instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'artist': instance.artist.toJson(),
      'location': instance.location.toJson(),
      'urgency': _$AppointmentUrgencyLevelEnumMap[instance.urgency]!,
      'contextualInfo': instance.contextualInfo.toJson(),
      'availableActions': instance.availableActions
          .map((e) => _$AppointmentActionEnumMap[e]!)
          .toList(),
    };

const _$AppointmentUrgencyLevelEnumMap = {
  AppointmentUrgencyLevel.critical: 'CRITICAL',
  AppointmentUrgencyLevel.urgent: 'URGENT',
  AppointmentUrgencyLevel.upcoming: 'UPCOMING',
  AppointmentUrgencyLevel.info: 'INFO',
  AppointmentUrgencyLevel.past: 'PAST',
  AppointmentUrgencyLevel.unknown: 'unknown',
};

const _$AppointmentActionEnumMap = {
  AppointmentAction.confirm: 'CONFIRM',
  AppointmentAction.leaveReview: 'LEAVE_REVIEW',
  AppointmentAction.viewDetails: 'VIEW_DETAILS',
  AppointmentAction.unknown: 'unknown',
};

_$AppointmentContextualInfoImpl _$$AppointmentContextualInfoImplFromJson(
        Map json) =>
    _$AppointmentContextualInfoImpl(
      title: json['title'] as String,
      message: json['message'] as String,
      tip: json['tip'] as String?,
    );

Map<String, dynamic> _$$AppointmentContextualInfoImplToJson(
    _$AppointmentContextualInfoImpl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tip', instance.tip);
  return val;
}
