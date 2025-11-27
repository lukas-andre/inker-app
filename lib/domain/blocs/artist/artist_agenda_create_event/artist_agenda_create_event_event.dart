part of 'artist_agenda_create_event_bloc.dart';

@freezed
class ArtistAgendaCreateEventEvent with _$ArtistAgendaCreateEventEvent {
  // Initialize a new empty form
  const factory ArtistAgendaCreateEventEvent.formInitialized() = _FormInitialized;
  
  // Initialize form with existing event data for editing
  const factory ArtistAgendaCreateEventEvent.formInitializedWithEvent(
    ArtistAgendaEventDetails event,
  ) = _FormInitializedWithEvent;
  
  // Field changes
  const factory ArtistAgendaCreateEventEvent.guestChanged(CustomerDTO? guest) = _GuestChanged;
  const factory ArtistAgendaCreateEventEvent.notesChanged(String notes) = _NotesChanged;
  const factory ArtistAgendaCreateEventEvent.dateChanged(String date) = _DateChanged;
  
  // Time selection
  const factory ArtistAgendaCreateEventEvent.timeChanged(
    String startTime,
    String endTime,
  ) = _TimeChanged;
  
  // Form submission
  const factory ArtistAgendaCreateEventEvent.formSubmitted() = _FormSubmitted;
  
  // Update an existing event
  const factory ArtistAgendaCreateEventEvent.eventUpdated() = _EventUpdated;
}