part of 'artist_agenda_create_event_bloc.dart';

@freezed
class ArtistAgendaCreateEventEvent with _$ArtistAgendaCreateEventEvent {
  const factory ArtistAgendaCreateEventEvent.formInitialized() =
      _FormInitialized;
  const factory ArtistAgendaCreateEventEvent.guestChanged(CustomerDTO? guest) =
      _GuestChanged;
  const factory ArtistAgendaCreateEventEvent.notesChanged(String notes) =
      _NotesChanged;
  const factory ArtistAgendaCreateEventEvent.dateChanged(String date) =
      _DateChanged;
  const factory ArtistAgendaCreateEventEvent.timeChanged(String time) =
      _TimeChanged;
  const factory ArtistAgendaCreateEventEvent.formSubmitted() = _FormSubmitted;
}
