part of 'schedule_assistant_bloc.dart';

@freezed
class ScheduleAssistantState with _$ScheduleAssistantState {
  const factory ScheduleAssistantState.initial() = _Initial;
  const factory ScheduleAssistantState.loading() = _Loading;
  const factory ScheduleAssistantState.loaded({
    required List<ScheduleEvent> events,
    required List<ScheduleQuotation> quotations,
    required Map<String, List<AvailabilitySlot>> availability,
    required List<SuggestedSlot> suggestedSlots,
    required WorkingHours workingHours,
    required ScheduleSummary summary,
    required DateTime rangeStart,
    required DateTime rangeEnd,
    ScheduleQuotation? selectedQuotation,
    DateTime? selectedTimeSlot,
    @Default(false) bool showAvailabilityDensity,
    @Default(false) bool isCreatingEvent,
    @Default(60) int selectedDuration,
  }) = _Loaded;
  const factory ScheduleAssistantState.error(String message) = _Error;
}
