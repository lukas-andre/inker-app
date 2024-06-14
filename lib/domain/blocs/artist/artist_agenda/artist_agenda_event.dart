part of 'artist_agenda_bloc.dart';

@freezed
class ArtistAgendaEvent with _$ArtistAgendaEvent {
  const factory ArtistAgendaEvent.started() = _Started;
  const factory ArtistAgendaEvent.addEvent(
      ArtistAgendaEventDetails eventDetails) = _AddEvent;
  const factory ArtistAgendaEvent.deleteEvent(String eventId) = _DeleteEvent;
  const factory ArtistAgendaEvent.updateEvent(
      ArtistAgendaEventDetails eventDetails) = _UpdateEvent;
  const factory ArtistAgendaEvent.loadEvents() = _LoadEvents;
  const factory ArtistAgendaEvent.loadEventsSuccess(
      List<ArtistAgendaEventDetails> events) = _LoadEventsSuccess;
  const factory ArtistAgendaEvent.loadEventsError(String message) =
      _LoadEventsError;
  const factory ArtistAgendaEvent.daySelected(
      DateTime selectedDay, DateTime focusedDay) = _DaySelected;
  const factory ArtistAgendaEvent.formatChanged(CalendarFormat format) =
      _FormatChanged;
  const factory ArtistAgendaEvent.refreshed() = _Refreshed;
}
