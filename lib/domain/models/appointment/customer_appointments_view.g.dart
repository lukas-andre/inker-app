// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_appointments_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerAppointmentsViewImpl _$$CustomerAppointmentsViewImplFromJson(
        Map json) =>
    _$CustomerAppointmentsViewImpl(
      heroAppointment: json['heroAppointment'] == null
          ? null
          : CustomerAppointmentDto.fromJson(
              Map<String, dynamic>.from(json['heroAppointment'] as Map)),
      appointments: GroupedAppointments.fromJson(
          Map<String, dynamic>.from(json['appointments'] as Map)),
    );

Map<String, dynamic> _$$CustomerAppointmentsViewImplToJson(
    _$CustomerAppointmentsViewImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('heroAppointment', instance.heroAppointment?.toJson());
  val['appointments'] = instance.appointments.toJson();
  return val;
}

_$GroupedAppointmentsImpl _$$GroupedAppointmentsImplFromJson(Map json) =>
    _$GroupedAppointmentsImpl(
      requiringAction: (json['requiringAction'] as List<dynamic>?)
              ?.map((e) => CustomerAppointmentDto.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      today: (json['today'] as List<dynamic>?)
              ?.map((e) => CustomerAppointmentDto.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      thisWeek: (json['thisWeek'] as List<dynamic>?)
              ?.map((e) => CustomerAppointmentDto.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      upcoming: (json['upcoming'] as List<dynamic>?)
              ?.map((e) => CustomerAppointmentDto.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => CustomerAppointmentDto.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GroupedAppointmentsImplToJson(
        _$GroupedAppointmentsImpl instance) =>
    <String, dynamic>{
      'requiringAction':
          instance.requiringAction.map((e) => e.toJson()).toList(),
      'today': instance.today.map((e) => e.toJson()).toList(),
      'thisWeek': instance.thisWeek.map((e) => e.toJson()).toList(),
      'upcoming': instance.upcoming.map((e) => e.toJson()).toList(),
      'history': instance.history.map((e) => e.toJson()).toList(),
    };
