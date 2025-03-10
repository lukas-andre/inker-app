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
          await _getAvailableTimeSlots(emit, artistId, date, durationMinutes);
        },
        resetState: () async {
          emit(const AvailableTimeSlotsState.initial());
        },
      );
    });
  }

  Future<void> _getAvailableTimeSlots(
    Emitter<AvailableTimeSlotsState> emit,
    int artistId,
    DateTime date,
    int durationMinutes,
  ) async {
    emit(const AvailableTimeSlotsState.loading());

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
        emit(const AvailableTimeSlotsState.empty());
      } else {
        emit(AvailableTimeSlotsState.loaded(availableTimeSlots));
      }
    } catch (e) {
      emit(AvailableTimeSlotsState.error(e.toString()));
    }
  }
}