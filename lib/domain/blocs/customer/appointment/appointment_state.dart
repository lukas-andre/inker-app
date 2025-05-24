part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;
  
  const factory AppointmentState.loading() = _Loading;
  
  const factory AppointmentState.loaded({
    required List<Appointment> appointments,
    required int currentPage,
    @Default(1) int totalPages,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isRefreshing,
    String? currentFilter,
    AppointmentDetailDto? selectedAppointment,
  }) = _Loaded;
  
  const factory AppointmentState.loadingMoreFailed({
    required List<Appointment> appointments,
    required int currentPage,
    @Default(1) int totalPages,
    String? currentFilter,
    String? errorMessage,
  }) = _LoadingMoreFailed;
  
  const factory AppointmentState.actionInProgress() = _ActionInProgress;
  
  const factory AppointmentState.actionSuccess() = _ActionSuccess;
  
  const factory AppointmentState.actionFailed(String message) = _ActionFailed;
  
  const factory AppointmentState.error(String message, {String? preservedFilter}) = _Error;
}