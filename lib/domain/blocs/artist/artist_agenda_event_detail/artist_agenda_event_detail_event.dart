part of 'artist_agenda_event_detail_bloc.dart';

@freezed
class ArtistAgendaEventDetailEvent with _$ArtistAgendaEventDetailEvent {
  const factory ArtistAgendaEventDetailEvent.started(String eventId) = _Started;
  const factory ArtistAgendaEventDetailEvent.updateNotes(
      String agendaId, String eventId, String notes) = _UpdateNotes;
  const factory ArtistAgendaEventDetailEvent.rescheduleEvent(
      String agendaId,
      String eventId,
      DateTime newStartDate,
      DateTime newEndDate,
      String? reason) = _RescheduleEvent;
  const factory ArtistAgendaEventDetailEvent.cancelEvent(
      String agendaId, String eventId, String reason) = _CancelEvent;
  const factory ArtistAgendaEventDetailEvent.confirmEvent(
      String agendaId, String eventId) = _ConfirmEvent;
  const factory ArtistAgendaEventDetailEvent.rejectEvent(
      String agendaId, String eventId, String? reason) = _RejectEvent;
  const factory ArtistAgendaEventDetailEvent.markEventAsDone(
          String agendaId, String eventId, List<String>? workEvidenceFiles) =
      _MarkEventAsDone;
  const factory ArtistAgendaEventDetailEvent.addWorkEvidence(
      String eventId, List<XFile> imageFiles) = _AddWorkEvidence;
  const factory ArtistAgendaEventDetailEvent.deleteWorkEvidence(
      String eventId) = _DeleteWorkEvidence;
  const factory ArtistAgendaEventDetailEvent.reviewEvent(
      String agendaId,
      String eventId,
      int rating,
      String comment,
      bool isAnonymous) = _ReviewEvent;
  const factory ArtistAgendaEventDetailEvent.changeEventStatus(
          String agendaId, String eventId, String status, String? reason) =
      _ChangeEventStatus;
  const factory ArtistAgendaEventDetailEvent.startSession(
      String agendaId, String eventId) = _StartSession;
  const factory ArtistAgendaEventDetailEvent.finishSession(
      String agendaId, String eventId) = _FinishSession;
}
