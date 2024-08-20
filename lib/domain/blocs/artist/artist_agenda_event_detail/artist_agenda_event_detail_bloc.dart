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

  ArtistAgendaEventDetailBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ArtistAgendaEventDetailState.initial()) {
    on<ArtistAgendaEventDetailEvent>((event, emit) async {
      await event.when(
        started: (eventId) async => _fetchEventDetails(emit, eventId),
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
}
