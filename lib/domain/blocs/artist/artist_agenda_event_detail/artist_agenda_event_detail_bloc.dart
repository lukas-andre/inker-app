import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  String? _currentEventId;

  ArtistAgendaEventDetailBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ArtistAgendaEventDetailState.initial()) {
    on<ArtistAgendaEventDetailEvent>((event, emit) async {
      await event.when(
        started: (eventId) async {
          _currentEventId = eventId;
          await _fetchEventDetails(emit, eventId);
        },
        updateNotes: (agendaId, eventId, notes) async => 
            _updateEventNotes(emit, agendaId, eventId, notes),
        rescheduleEvent: (agendaId, eventId, newStartDate, newEndDate, reason) async => 
            _rescheduleEvent(emit, agendaId, eventId, newStartDate, newEndDate, reason),
        cancelEvent: (agendaId, eventId, reason) async =>
            _cancelEvent(emit, agendaId, eventId, reason),
        confirmEvent: (agendaId, eventId) async =>
            _confirmEvent(emit, agendaId, eventId),
        rejectEvent: (agendaId, eventId, reason) async =>
            _rejectEvent(emit, agendaId, eventId, reason),
        markEventAsDone: (agendaId, eventId, workEvidenceFiles) async =>
            _markEventAsDone(emit, agendaId, eventId, workEvidenceFiles),
        addWorkEvidence: (agendaId, eventId, imageFiles) async =>
            _addWorkEvidence(emit, agendaId, eventId, imageFiles),
        reviewEvent: (agendaId, eventId, rating, comment, isAnonymous) async =>
            _reviewEvent(emit, agendaId, eventId, rating, comment, isAnonymous),
        changeEventStatus: (agendaId, eventId, status, reason) async =>
            _changeEventStatus(emit, agendaId, eventId, status, reason),
        startSession: (agendaId, eventId) async =>
            _startSession(emit, agendaId, eventId),
        finishSession: (agendaId, eventId) async =>
            _finishSession(emit, agendaId, eventId),
      );
    });
  }

  Future<void> _fetchEventDetails(
      Emitter<ArtistAgendaEventDetailState> emit, String eventId) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }
      final EventDetailResponse response = await _agendaService.getEventDetails(eventId, token);
      emit(ArtistAgendaEventDetailState.loaded(response));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }
  
  Future<void> _updateEventNotes(
      Emitter<ArtistAgendaEventDetailState> emit, 
      String agendaId, 
      String eventId, 
      String notes) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.updateEventNotes(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        notes: notes,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }
  
  Future<void> _rescheduleEvent(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      DateTime newStartDate,
      DateTime newEndDate,
      String? reason) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.rescheduleEvent(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        newStartDate: newStartDate,
        newEndDate: newEndDate,
        reason: reason,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _cancelEvent(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      String reason) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.cancelEvent(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        reason: reason,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _confirmEvent(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.confirmEvent(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _rejectEvent(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      String? reason) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.rejectEvent(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _markEventAsDone(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      List<String>? workEvidenceFiles) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.markEventAsDone(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        workEvidenceFiles: workEvidenceFiles,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _addWorkEvidence(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      List<String> imageFiles) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      // For now, we'll use markEventAsDone with files
      // TODO: Create a dedicated endpoint for adding work evidence
      await _agendaService.markEventAsDone(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        workEvidenceFiles: imageFiles,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _reviewEvent(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      int rating,
      String comment,
      bool isAnonymous) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.reviewEvent(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        rating: rating,
        comment: comment,
        isAnonymous: isAnonymous,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _changeEventStatus(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId,
      String status,
      String? reason) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      await _agendaService.changeEventStatus(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        status: status,
        reason: reason,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _startSession(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      // Usar el endpoint PUT /api/agenda/:agendaId/event/:eventId/status con eventAction: "start_session"
      await _agendaService.changeEventStatus(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        status: 'start_session', // Este parámetro se usa como eventAction en el backend
        reason: null,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }

  Future<void> _finishSession(
      Emitter<ArtistAgendaEventDetailState> emit,
      String agendaId,
      String eventId) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistAgendaEventDetailState.error('Authentication token not found.'));
        return;
      }

      // Usar el endpoint PUT /api/agenda/:agendaId/event/:eventId/status con eventAction: "complete_session"
      await _agendaService.changeEventStatus(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        status: 'complete_session', // Este parámetro se usa como eventAction en el backend
        reason: null,
      );
      
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      } else {
        emit(const ArtistAgendaEventDetailState.error('Current event ID not available for refresh.'));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }
}
