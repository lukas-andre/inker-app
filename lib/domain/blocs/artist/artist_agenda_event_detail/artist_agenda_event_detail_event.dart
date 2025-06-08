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
  const factory ArtistAgendaEventDetailEvent.cancelEvent({
    required String agendaId,
    required String eventId,
    required String reason,
  }) = _CancelEvent;
  const factory ArtistAgendaEventDetailEvent.confirmEvent({
    required String agendaId,
    required String eventId,
  }) = _ConfirmEvent;
  const factory ArtistAgendaEventDetailEvent.rejectEvent({
    required String agendaId,
    required String eventId,
    String? reason,
  }) = _RejectEvent;
  const factory ArtistAgendaEventDetailEvent.markEventAsDone({
    required String agendaId,
    required String eventId,
    List<String>? workEvidenceFiles,
  }) = _MarkEventAsDone;
  const factory ArtistAgendaEventDetailEvent.addWorkEvidence({
    required String agendaId,
    required String eventId,
    required List<String> imageFiles,
  }) = _AddWorkEvidence;
  const factory ArtistAgendaEventDetailEvent.reviewEvent({
    required String agendaId,
    required String eventId,
    required int rating,
    required String comment,
    required bool isAnonymous,
  }) = _ReviewEvent;
  const factory ArtistAgendaEventDetailEvent.changeEventStatus({
    required String agendaId,
    required String eventId,
    required String status,
    String? reason,
  }) = _ChangeEventStatus;
}
