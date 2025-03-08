import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
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
  int? _currentEventId;

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
      Emitter<ArtistAgendaEventDetailState> emit, int eventId) async {
    emit(const ArtistAgendaEventDetailState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      final response =
          await _agendaService.getEvent(token: token, eventId: eventId);
      emit(ArtistAgendaEventDetailState.loaded(response));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }
  
  Future<void> _updateEventNotes(
      Emitter<ArtistAgendaEventDetailState> emit, 
      int agendaId, 
      int eventId, 
      String notes) async {
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      await _agendaService.updateEventNotes(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        notes: notes,
      );
      
      // Refresh event details after updating notes
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }
  
  Future<void> _rescheduleEvent(
      Emitter<ArtistAgendaEventDetailState> emit,
      int agendaId,
      int eventId,
      DateTime newStartDate,
      DateTime newEndDate,
      String? reason) async {
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      await _agendaService.rescheduleEvent(
        token: token,
        agendaId: agendaId,
        eventId: eventId,
        newStartDate: newStartDate,
        newEndDate: newEndDate,
        reason: reason,
      );
      
      // Refresh event details after rescheduling
      if (_currentEventId != null) {
        await _fetchEventDetails(emit, _currentEventId!);
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaEventDetailState.error(e.toString()));
    }
  }
}
