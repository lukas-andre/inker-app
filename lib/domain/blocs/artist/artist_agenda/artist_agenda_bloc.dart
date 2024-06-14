import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:intl/intl.dart';
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
        refreshed: () async => _loadEvents(emit),
      );
    });
  }

  Future<void> _started(Emitter<ArtistAgendaState> emit) async {
    // ignore: await_only_futures
    await state.whenOrNull(
      initial: () async => await _loadEvents(emit),
      error: (message) => emit(ArtistAgendaStateError(message)),
    );
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
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      final now = DateTime.now();
      final format = state is ArtistAgendaStateLoaded
          ? (state as ArtistAgendaStateLoaded).format
          : CalendarFormat.month;

      final agendaViewType = format == CalendarFormat.month ? 'month' : 'week';
      final formattedDate = DateFormat('yyyy-MM-ddTHH:mm:ss').format(now);

      final response = await _agendaService.getEvents(
        token: token,
        agendaViewType: agendaViewType,
        date: formattedDate,
      );

      final events = response.map((event) {
        return ArtistAgendaEventDetails(
          id: event.id.toString(),
          title: event.title,
          description: event.info,
          startDate: event.start,
          endDate: event.end,
          location: '',
        );
      }).toList();

      emit(ArtistAgendaStateLoaded(
        events: events,
        focusedDay: now,
        format: format,
      ));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ArtistAgendaStateLoaded(
        events: [],
        focusedDay: DateTime.now(),
        format: state is ArtistAgendaStateLoaded
            ? (state as ArtistAgendaStateLoaded).format
            : CalendarFormat.week,
      ));
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
