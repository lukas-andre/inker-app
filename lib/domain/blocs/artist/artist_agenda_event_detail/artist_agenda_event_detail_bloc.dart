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
      );
    });
  }

  Future<void> _fetchEventDetails(
      Emitter<ArtistAgendaEventDetailState> emit, String eventId) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final EventDetailResponse response = await _agendaService.getEventDetails(eventId);
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
}
