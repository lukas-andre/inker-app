import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/data/api/work/dtos/work_query_params.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/models/work_evidence/work_evidence.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';

part 'artist_works_state.dart';
part 'artist_works_cubit.freezed.dart';

class ArtistWorksCubit extends Cubit<ArtistWorksState> {
  final AgendaService _agendaService;
  final WorkService _workService;
  final LocalSessionService _sessionService;

  ArtistWorksCubit({
    required AgendaService agendaService, 
    required WorkService workService,
    required LocalSessionService sessionService,
  }) : 
    _agendaService = agendaService,
    _workService = workService,
    _sessionService = sessionService,
    super(const ArtistWorksState.initial());

  // Carga ambos tipos de trabajos del artista (agenda y trabajos independientes)
  Future<void> loadArtistWorks(String artistId) async {
    emit(const ArtistWorksState.loading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      
      // Cargar trabajos de la agenda
      final agendaWorks = await _agendaService.getArtistWorks(
        artistId: artistId,
        page: 1,
        limit: 10,
        token: token ?? '',
      );
      
      // Cargar trabajos independientes del artista
      List<Work> portfolioWorks = [];
      try {
        const params = WorkQueryParams(limit: 10, includeHidden: false);
        portfolioWorks = await _workService.getWorksByArtistId(
          artistId, 
          params, 
          token ?? ''
        );
      } catch (e) {
        // Si falla la carga de trabajos independientes, continuamos con los de agenda
        debugPrint('Error al cargar trabajos independientes: $e');
      }
      
      emit(ArtistWorksState.loaded(
        agendaWorks: agendaWorks.items ?? [], 
        portfolioWorks: portfolioWorks,
      ));
    } catch (e) {
      emit(ArtistWorksState.error(message: e.toString()));
    }
  }
  
  // Método para recargar los trabajos
  void refresh() {
    emit(const ArtistWorksState.initial());
  }
}