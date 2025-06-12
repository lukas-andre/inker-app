part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.started() = _Started;
  const factory AppointmentEvent.loadAppointments() = _LoadAppointments;
  const factory AppointmentEvent.getAppointmentById(String id) = _GetAppointmentById;
  const factory AppointmentEvent.markAsRead(String appointmentId) = _MarkAsRead;

  // Actions for the detail page
  const factory AppointmentEvent.refreshAppointmentDetail(String id) = _RefreshAppointmentDetail;
  const factory AppointmentEvent.confirmAppointment({
    required String appointmentId,
    required String agendaId,
  }) = _ConfirmAppointment;
  const factory AppointmentEvent.cancelAppointment({
    required String appointmentId,
    required String reason,
  }) = _CancelAppointment;
  const factory AppointmentEvent.rejectAppointment({
    required String appointmentId,
    required String agendaId,
    String? reason,
  }) = _RejectAppointment;
  const factory AppointmentEvent.reviewAppointment({
    required String appointmentId,
    required String agendaId,
    required int rating,
    String? displayName,
    String? comment,
    String? header,
  }) = _ReviewAppointment;
  const factory AppointmentEvent.appealAppointment({
    required String appointmentId,
    required String agendaId,
    required String reason,
  }) = _AppealAppointment;
}