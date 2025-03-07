part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.started() = _Started;
  
  const factory AppointmentEvent.loadAppointments({
    String? status,
    @Default(false) bool isRefresh,
  }) = _LoadAppointments;
  
  const factory AppointmentEvent.loadMoreAppointments() = _LoadMoreAppointments;
  
  const factory AppointmentEvent.getAppointmentById(int id) = _GetAppointmentById;
  
  const factory AppointmentEvent.requestAppointmentChange({
    required int appointmentId,
    DateTime? newStartDate,
    DateTime? newEndDate,
    String? reason,
  }) = _RequestAppointmentChange;
  
  const factory AppointmentEvent.cancelAppointment({
    required int appointmentId,
    required String reason,
  }) = _CancelAppointment;
  
  const factory AppointmentEvent.markAsRead(int appointmentId) = _MarkAsRead;
  
  const factory AppointmentEvent.filterByStatus(String status) = _FilterByStatus;
  
  const factory AppointmentEvent.rsvpForAppointment({
    required int appointmentId,
    required int agendaId,
    required bool willAttend,
  }) = _RsvpForAppointment;
}