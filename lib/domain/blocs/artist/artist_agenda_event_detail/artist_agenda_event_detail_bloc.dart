import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/models/event/event_detail_response.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'artist_agenda_event_detail_event.dart';
part 'artist_agenda_event_detail_state.dart';
part 'artist_agenda_event_detail_bloc.freezed.dart';

class ArtistAgendaEventDetailBloc
    extends Bloc<ArtistAgendaEventDetailEvent, ArtistAgendaEventDetailState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;

  ArtistAgendaEventDetailBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ArtistAgendaEventDetailState.initial()) {
    on<_Started>(_onStarted);
    on<_UpdateNotes>(_onUpdateNotes);
    on<_RescheduleEvent>(_onRescheduleEvent);
    on<_CancelEvent>(_onCancelEvent);
    on<_ConfirmEvent>(_onConfirmEvent);
    on<_RejectEvent>(_onRejectEvent);
    on<_MarkEventAsDone>(_onMarkEventAsDone);
    on<_AddWorkEvidence>(_onAddWorkEvidence);
    on<_DeleteWorkEvidence>(_onDeleteWorkEvidence);
    on<_ReviewEvent>(_onReviewEvent);
    on<_ChangeEventStatus>(_onChangeEventStatus);
    on<_StartSession>(_onStartSession);
    on<_FinishSession>(_onFinishSession);
  }

  Future<String> _getToken() async {
    final token = await _sessionService.getActiveSessionToken();
    if (token == null) {
      throw Exception('No active session found');
    }
    return token;
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _getToken();
      final eventDetail =
          await _agendaService.getEventDetails(event.eventId, token);
      emit(ArtistAgendaEventDetailState.loaded(eventDetail));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onUpdateNotes(
    _UpdateNotes event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.updateEventNotes(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
        notes: event.notes,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onRescheduleEvent(
    _RescheduleEvent event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.rescheduleEvent(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
        newStartDate: event.newStartDate,
        newEndDate: event.newEndDate,
        reason: event.reason,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onCancelEvent(
    _CancelEvent event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.cancelEvent(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
        reason: event.reason,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onConfirmEvent(
    _ConfirmEvent event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.confirmEvent(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onRejectEvent(
    _RejectEvent event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.rejectEvent(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onMarkEventAsDone(
    _MarkEventAsDone event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.markEventAsDone(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
        workEvidenceFiles: event.workEvidenceFiles,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onAddWorkEvidence(
    _AddWorkEvidence event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded) return;

    emit(const ArtistAgendaEventDetailState.actionInProgress());

    try {
      final token = await _getToken();
      final files = event.imageFiles.map((xfile) => File(xfile.path)).toList();

      await _agendaService.uploadWorkEvidence(
        token: token,
        eventId: event.eventId,
        files: files,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onDeleteWorkEvidence(
    _DeleteWorkEvidence event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded) return;
    emit(const ArtistAgendaEventDetailState.actionInProgress());

    try {
      final token = await _getToken();
      await _agendaService.deleteWorkEvidence(
        token: token,
        eventId: event.eventId,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onReviewEvent(
    _ReviewEvent event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      final user = await _sessionService.getActiveSession();
      if (user == null || user.user == null) {
        emit(const ArtistAgendaEventDetailState.error('User not found.'));
        return;
      }

      // No anonymous reviews
      final displayName = user.user?.fullname ?? '';

      await _agendaService.reviewEvent(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
        rating: event.rating,
        displayName: displayName,
        comment: event.comment,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onChangeEventStatus(
    _ChangeEventStatus event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    emit(const ArtistAgendaEventDetailState.actionInProgress());
    try {
      final token = await _getToken();
      await _agendaService.changeEventStatus(
        token: token,
        agendaId: event.agendaId,
        eventId: event.eventId,
        status: event.status,
        reason: event.reason,
      );
      add(ArtistAgendaEventDetailEvent.started(event.eventId));
    } catch (e) {
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _onStartSession(
    _StartSession event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    dev.log('_onStartSession not implemented', '');
  }

  Future<void> _onFinishSession(
    _FinishSession event,
    Emitter<ArtistAgendaEventDetailState> emit,
  ) async {
    dev.log('_onFinishSession not implemented', '');
  }
}
