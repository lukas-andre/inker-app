part of 'schedule_assistant_bloc.dart';

@freezed
class ScheduleAssistantState with _$ScheduleAssistantState {
  const factory ScheduleAssistantState.initial() = _Initial;
  const factory ScheduleAssistantState.loading() = _Loading;
  const factory ScheduleAssistantState.loaded({
    required List<EventDetails> events,
    required DateTime rangeStart,
    required DateTime rangeEnd,
    DateTime? selectedStart,
    DateTime? selectedEnd,
  }) = _Loaded;
  const factory ScheduleAssistantState.error(String message) = _Error;
}
