part of 'available_time_slots_bloc.dart';

@freezed
class AvailableTimeSlotsState with _$AvailableTimeSlotsState {
  const factory AvailableTimeSlotsState.initial() = _Initial;
  const factory AvailableTimeSlotsState.loading() = _Loading;
  const factory AvailableTimeSlotsState.loaded(List<dynamic> timeSlots) = _Loaded;
  const factory AvailableTimeSlotsState.empty() = _Empty;
  const factory AvailableTimeSlotsState.error(String message) = _Error;
}