// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableTimeSlotImpl _$$AvailableTimeSlotImplFromJson(Map json) =>
    _$AvailableTimeSlotImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      density: (json['density'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AvailableTimeSlotImplToJson(
    _$AvailableTimeSlotImpl instance) {
  final val = <String, dynamic>{
    'startTime': instance.startTime.toIso8601String(),
    'endTime': instance.endTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('density', instance.density);
  return val;
}

_$AvailabilityCalendarImpl _$$AvailabilityCalendarImplFromJson(Map json) =>
    _$AvailabilityCalendarImpl(
      date: json['date'] as String,
      slots: (json['slots'] as List<dynamic>)
          .map((e) =>
              AvailableTimeSlot.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$AvailabilityCalendarImplToJson(
        _$AvailabilityCalendarImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'slots': instance.slots.map((e) => e.toJson()).toList(),
    };
