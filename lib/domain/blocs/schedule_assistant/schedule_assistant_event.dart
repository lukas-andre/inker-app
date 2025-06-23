part of 'schedule_assistant_bloc.dart';

@freezed
class ScheduleAssistantEvent with _$ScheduleAssistantEvent {
  const factory ScheduleAssistantEvent.started(String artistId) = _Started;
  const factory ScheduleAssistantEvent.dateRangeChanged(
      DateTime start, DateTime end) = _DateRangeChanged;
  const factory ScheduleAssistantEvent.timeSlotSelected(
      DateTime start, DateTime end) = _TimeSlotSelected;
  const factory ScheduleAssistantEvent.eventCreated(EventDetails event) =
      _EventCreated;
  
  // New events for enhanced schedule assistant
  const factory ScheduleAssistantEvent.scheduleDataRequested({
    required String artistId,
    required DateTime fromDate,
    required DateTime toDate,
  }) = _ScheduleDataRequested;
  
  const factory ScheduleAssistantEvent.quotationSelected(String quotationId) = 
      _QuotationSelected;
  
  const factory ScheduleAssistantEvent.timeSlotSuggestionSelected(
      SuggestedSlot slot) = _TimeSlotSuggestionSelected;
  
  const factory ScheduleAssistantEvent.availabilityDensityToggled(bool show) = 
      _AvailabilityDensityToggled;
  
  const factory ScheduleAssistantEvent.quotationActionTriggered({
    required String quotationId,
    required QuotationAction action,
  }) = _QuotationActionTriggered;
  
  const factory ScheduleAssistantEvent.createEventFromQuotation({
    required String quotationId,
    required DateTime startTime,
    required DateTime endTime,
  }) = _CreateEventFromQuotation;
  
  const factory ScheduleAssistantEvent.durationChanged(int duration) = 
      _DurationChanged;
}

enum QuotationAction {
  accept,
  reject,
  respond,
  submitOffer,
}
