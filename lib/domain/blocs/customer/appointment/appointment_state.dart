part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;
  
  const factory AppointmentState.loading() = _Loading;
  
  const factory AppointmentState.loaded({
    required CustomerAppointmentsView appointmentsView,
    AppointmentDetailDto? selectedAppointment,
  }) = _Loaded;
  
  const factory AppointmentState.actionInProgress() = _ActionInProgress;
  
  const factory AppointmentState.actionSuccess() = _ActionSuccess;
  
  const factory AppointmentState.actionFailed(String message) = _ActionFailed;
  
  const factory AppointmentState.error(String message) = _Error;
}