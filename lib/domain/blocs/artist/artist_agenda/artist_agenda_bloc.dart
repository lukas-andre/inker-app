import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'artist_agenda_event.dart';
part 'artist_agenda_state.dart';
part 'artist_agenda_bloc.freezed.dart';

class ArtistAgendaBloc extends Bloc<ArtistAgendaEvent, ArtistAgendaState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;

  ArtistAgendaBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ArtistAgendaStateInitial()) {
    on<ArtistAgendaEvent>((event, emit) async {
      event.when(
        started: () => _started(emit),
        addEvent: (ArtistAgendaEventDetails eventDetails) =>
            _addEvent(emit, eventDetails),
        deleteEvent: (eventId) => _deleteEvent(emit, eventId),
        updateEvent: (ArtistAgendaEventDetails eventDetails) =>
            _updateEvent(emit, eventDetails),
        loadEvents: () => _loadEvents(emit),
        loadEventsSuccess: (events) => _loadEventsSuccess(emit, events),
        loadEventsError: (message) => _loadEventsError(emit, message),
      );
    });
  }

  void _started(Emitter<ArtistAgendaState> emit) {
    emit(const ArtistAgendaStateInitial());
    add(const ArtistAgendaEvent.loadEvents());
  }

  Future<void> _addEvent(Emitter<ArtistAgendaState> emit,
      ArtistAgendaEventDetails eventDetails) async {
    emit(const ArtistAgendaStateLoading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      // await _agendaService.addEvent(eventDetails, token ?? '');
      add(const ArtistAgendaEvent.loadEvents());
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaEvent.loadEventsError(e.toString()));
    }
  }

  Future<void> _deleteEvent(
      Emitter<ArtistAgendaState> emit, String eventId) async {
    emit(const ArtistAgendaStateLoading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      // await _agendaService.deleteEvent(eventId, token ?? '');
      add(const ArtistAgendaEvent.loadEvents());
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaEvent.loadEventsError(e.toString()));
    }
  }

  Future<void> _updateEvent(Emitter<ArtistAgendaState> emit,
      ArtistAgendaEventDetails eventDetails) async {
    emit(const ArtistAgendaStateLoading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      // await _agendaService.updateEvent(eventDetails, token ?? '');
      add(const ArtistAgendaEvent.loadEvents());
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaEvent.loadEventsError(e.toString()));
    }
  }

  Future<void> _loadEvents(Emitter<ArtistAgendaState> emit) async {
    emit(const ArtistAgendaStateLoading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      final events = await _agendaService.getEvents(token ?? '') ?? [];
      add(ArtistAgendaEvent.loadEventsSuccess(events));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaEvent.loadEventsError(e.toString()));
    }
  }

  void _loadEventsSuccess(
      Emitter<ArtistAgendaState> emit, List<ArtistAgendaEventDetails> events) {
    emit(ArtistAgendaStateLoaded(events: events));
  }

  void _loadEventsError(Emitter<ArtistAgendaState> emit, String message) {
    emit(ArtistAgendaStateError(message: message));
  }
}
