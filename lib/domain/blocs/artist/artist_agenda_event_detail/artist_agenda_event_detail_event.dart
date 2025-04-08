part of 'artist_agenda_event_detail_bloc.dart';

@freezed
class ArtistAgendaEventDetailEvent with _$ArtistAgendaEventDetailEvent {
  const factory ArtistAgendaEventDetailEvent.started(String eventId) = _Started;
  const factory ArtistAgendaEventDetailEvent.updateNotes({
    required String agendaId, 
    required String eventId, 
    required String notes
  }) = _UpdateNotes;
  const factory ArtistAgendaEventDetailEvent.rescheduleEvent({
    required String agendaId,
    required String eventId,
    required DateTime newStartDate,
    required DateTime newEndDate,
    String? reason,
  }) = _RescheduleEvent;
}
