part of 'artist_agenda_event_detail_bloc.dart';

@freezed
class ArtistAgendaEventDetailEvent with _$ArtistAgendaEventDetailEvent {
  const factory ArtistAgendaEventDetailEvent.started(int eventId) = _Started;
  const factory ArtistAgendaEventDetailEvent.updateNotes({
    required int agendaId, 
    required int eventId, 
    required String notes
  }) = _UpdateNotes;
  const factory ArtistAgendaEventDetailEvent.rescheduleEvent({
    required int agendaId,
    required int eventId,
    required DateTime newStartDate,
    required DateTime newEndDate,
    String? reason,
  }) = _RescheduleEvent;
}
