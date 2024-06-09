part of 'artist_agenda_event_detail_bloc.dart';

@freezed
class ArtistAgendaEventDetailEvent with _$ArtistAgendaEventDetailEvent {
  const factory ArtistAgendaEventDetailEvent.started(int eventId) = _Started;
}
