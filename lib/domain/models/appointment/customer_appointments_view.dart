import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointment_dto.dart';

part 'customer_appointments_view.freezed.dart';
part 'customer_appointments_view.g.dart';

@freezed
class CustomerAppointmentsView with _$CustomerAppointmentsView {
  const CustomerAppointmentsView._();
  @JsonSerializable(explicitToJson: true)
  const factory CustomerAppointmentsView({
    String? heroAppointmentId,
    required GroupedAppointments appointments,
  }) = _CustomerAppointmentsView;

  factory CustomerAppointmentsView.fromJson(Map<String, dynamic> json) =>
      _$CustomerAppointmentsViewFromJson(json);

  CustomerAppointmentDto? get heroAppointment {
    if (heroAppointmentId == null) {
      return null;
    }
    final allAppointments = [
      ...appointments.requiringAction,
      ...appointments.today,
      ...appointments.thisWeek,
      ...appointments.upcoming,
      ...appointments.history,
    ];
    try {
      return allAppointments
          .firstWhere((element) => element.event.id == heroAppointmentId);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class GroupedAppointments with _$GroupedAppointments {
  const factory GroupedAppointments({
    @Default([]) List<CustomerAppointmentDto> requiringAction,
    @Default([]) List<CustomerAppointmentDto> today,
    @Default([]) List<CustomerAppointmentDto> thisWeek,
    @Default([]) List<CustomerAppointmentDto> upcoming,
    @Default([]) List<CustomerAppointmentDto> history,
  }) = _GroupedAppointments;

  factory GroupedAppointments.fromJson(Map<String, dynamic> json) =>
      _$GroupedAppointmentsFromJson(json);
} 