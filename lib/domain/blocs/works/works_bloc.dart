import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'works_event.dart';
part 'works_state.dart';
part 'works_bloc.freezed.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;
  int? _currentArtistId;

  WorksBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const WorksState.initial()) {
    on<WorksEvent>((event, emit) async {
      await event.when(
        loadWorks: (artistId) async {
          // Prevent duplicate requests for same artist
          if (_currentArtistId == artistId) return;
          _currentArtistId = artistId;
          
          await _loadWorks(emit, artistId);
        },
        refresh: () async => await _refresh(emit),
      );
    });
  }

  Future<void> _loadWorks(Emitter<WorksState> emit, int artistId) async {
    emit(const WorksState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      final works = await _agendaService.getArtistWorks(
        artistId: artistId,
        page: 1,
        limit: 10,
        token: token ?? '',
      );
      
      emit(WorksState.loaded(works: works.items ?? []));
    } catch (e) {
      emit(WorksState.error(message: e.toString()));
    }
  }

  Future<void> _refresh(Emitter<WorksState> emit) async {
    emit(const WorksState.initial());
  }
}