part of 'schedule_assistant_bloc.dart';

@freezed
class ScheduleAssistantEvent with _$ScheduleAssistantEvent {
  const factory ScheduleAssistantEvent.started(int agendaId) = _Started;
  const factory ScheduleAssistantEvent.dateRangeChanged(
      DateTime start, DateTime end) = _DateRangeChanged;
  const factory ScheduleAssistantEvent.timeSlotSelected(
      DateTime start, DateTime end) = _TimeSlotSelected;
  const factory ScheduleAssistantEvent.eventCreated(EventDetails event) =
      _EventCreated;
}
