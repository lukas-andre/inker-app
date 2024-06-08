import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:table_calendar/table_calendar.dart';

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
      await event.when(
        started: () async => _started(emit),
        addEvent: (ArtistAgendaEventDetails eventDetails) async =>
            _addEvent(emit, eventDetails),
        deleteEvent: (eventId) async => _deleteEvent(emit, eventId),
        updateEvent: (ArtistAgendaEventDetails eventDetails) async =>
            _updateEvent(emit, eventDetails),
        loadEvents: () async => _loadEvents(emit),
        loadEventsSuccess: (events) async => _loadEventsSuccess(emit, events),
        loadEventsError: (message) async => _loadEventsError(emit, message),
        daySelected: (selectedDay, focusedDay) async =>
            _daySelected(emit, selectedDay, focusedDay),
        formatChanged: (format) async => _formatChanged(emit, format),
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
      add(const ArtistAgendaEvent.loadEvents());
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaEvent.loadEventsError(e.toString()));
    }
  }

  Future<void> _loadEvents(Emitter<ArtistAgendaState> emit) async {
    print('Loading events');
    emit(const ArtistAgendaStateLoading());

    try {
      final now = DateTime.now();
      final daysInMonth = DateUtils.getDaysInMonth(now.year, now.month);
      final fakeEvents =
          List<ArtistAgendaEventDetails>.generate(daysInMonth, (index) {
        final date = DateTime(now.year, now.month, index + 1);
        return ArtistAgendaEventDetails(
          id: 'event_$index',
          title: 'Event $index',
          description: 'This is event number $index',
          startDate: date,
          endDate: date.add(const Duration(hours: 1)),
          location: 'Location $index',
        );
      });

      await Future.delayed(const Duration(seconds: 1));

      // Obtén el formato actual si está disponible
      final format = state is ArtistAgendaStateLoaded
          ? (state as ArtistAgendaStateLoaded).format
          : CalendarFormat.month;

      emit(ArtistAgendaStateLoaded(
        events: fakeEvents,
        focusedDay: now,
        format: format, // Mantén el formato actual
      ));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaEvent.loadEventsError(e.toString()));
    }
  }

  void _loadEventsSuccess(
      Emitter<ArtistAgendaState> emit, List<ArtistAgendaEventDetails> events) {
    if (state is ArtistAgendaStateLoaded) {
      final currentState = state as ArtistAgendaStateLoaded;
      emit(ArtistAgendaStateLoaded(
        events: events,
        focusedDay: currentState.focusedDay,
        selectedDay: currentState.selectedDay,
        format: currentState.format,
      ));
    }
  }

  void _loadEventsError(Emitter<ArtistAgendaState> emit, String message) {
    emit(ArtistAgendaStateError(message));
  }

  void _daySelected(Emitter<ArtistAgendaState> emit, DateTime selectedDay,
      DateTime focusedDay) {
    if (state is ArtistAgendaStateLoaded) {
      final currentState = state as ArtistAgendaStateLoaded;
      emit(currentState.copyWith(
        selectedDay: selectedDay,
        focusedDay: focusedDay,
      ));
    }
  }

  void _formatChanged(Emitter<ArtistAgendaState> emit, CalendarFormat format) {
    if (state is ArtistAgendaStateLoaded) {
      final currentState = state as ArtistAgendaStateLoaded;
      emit(currentState.copyWith(format: format));
    }
  }
}
