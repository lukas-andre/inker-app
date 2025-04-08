import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/models/event_details.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'schedule_assistant_event.dart';
part 'schedule_assistant_state.dart';
part 'schedule_assistant_bloc.freezed.dart';

class ScheduleAssistantBloc
    extends Bloc<ScheduleAssistantEvent, ScheduleAssistantState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;

  ScheduleAssistantBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ScheduleAssistantState.initial()) {
    on<ScheduleAssistantEvent>((event, emit) async {
      await event.when(
        started: (artistId) async => _fetchEvents(emit, artistId),
        dateRangeChanged: (start, end) async =>
            _updateDateRange(emit, start, end),
        timeSlotSelected: (start, end) async =>
            _selectTimeSlot(emit, start, end),
        eventCreated: (event) {},
      );
    });
  }

  Future<void> _fetchEvents(
      Emitter<ScheduleAssistantState> emit, String artistId) async {
    emit(const ScheduleAssistantState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      final now = DateTime.now();
      final endOfWeek = now.add(const Duration(days: 7));
      final response = await _agendaService.getArtistEvents(
        token: token,
        artistId: artistId,
        startDate: now,
        endDate: endOfWeek,
      );

      final events = response.map((event) {
        return EventDetails(
          id: event.id.toString(),
          title: event.title,
          description: event.info ?? '',
          startDate: event.start,
          endDate: event.end,
          location: '',
        );
      }).toList();

      emit(ScheduleAssistantState.loaded(
        events: events,
        rangeStart: now,
        rangeEnd: endOfWeek,
      ));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ScheduleAssistantState.error(e.toString()));
    }
  }

  Future<void> _updateDateRange(Emitter<ScheduleAssistantState> emit,
      DateTime start, DateTime end) async {
    // Implementation for updating date range
  }

  Future<void> _selectTimeSlot(Emitter<ScheduleAssistantState> emit,
      DateTime start, DateTime end) async {
    // Implementation for selecting a time slot
  }
}
