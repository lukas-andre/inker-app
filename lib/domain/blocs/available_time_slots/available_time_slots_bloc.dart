import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'available_time_slots_event.dart';
part 'available_time_slots_state.dart';
part 'available_time_slots_bloc.freezed.dart';

class AvailableTimeSlotsBloc
    extends Bloc<AvailableTimeSlotsEvent, AvailableTimeSlotsState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;

  AvailableTimeSlotsBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const AvailableTimeSlotsState.initial()) {
    on<AvailableTimeSlotsEvent>((event, emit) async {
      await event.when(
        getAvailableTimeSlots: (artistId, date, durationMinutes) async {
          print('Bloc: Getting available slots for date: ${date.toIso8601String()}');
          await _getAvailableTimeSlots(emit, artistId, date, durationMinutes);
        },
        resetState: () async {
          print('Bloc: Resetting state to initial');
          emit(const AvailableTimeSlotsState.initial());
        },
      );
    });
  }

  Future<void> _getAvailableTimeSlots(
    Emitter<AvailableTimeSlotsState> emit,
    String artistId,
    DateTime date,
    int durationMinutes,
  ) async {
    emit(const AvailableTimeSlotsState.loading());
    print('Fetching available time slots for: ${date.toIso8601String()}');

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const AvailableTimeSlotsState.error('No authentication token found'));
        return;
      }

      final availableTimeSlots = await _agendaService.getArtistAvailableTimeSlots(
        token: token,
        artistId: artistId,
        date: date,
        durationMinutes: durationMinutes,
      );

      if (availableTimeSlots.isEmpty) {
        print('No time slots found for date: ${date.toIso8601String()}');
        emit(const AvailableTimeSlotsState.empty());
      } else {
        print('Loaded ${availableTimeSlots.length} time slots for date: ${date.toIso8601String()}');
        emit(AvailableTimeSlotsState.loaded(availableTimeSlots));
      }
    } catch (e) {
      print('Error fetching time slots: $e');
      emit(AvailableTimeSlotsState.error(e.toString()));
    }
  }
}