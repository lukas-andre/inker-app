part of 'available_time_slots_bloc.dart';

@freezed
class AvailableTimeSlotsEvent with _$AvailableTimeSlotsEvent {
  const factory AvailableTimeSlotsEvent.getAvailableTimeSlots({
    required String artistId,
    required DateTime date,
    required int durationMinutes,
  }) = _GetAvailableTimeSlots;
  
  const factory AvailableTimeSlotsEvent.resetState() = _ResetState;
}