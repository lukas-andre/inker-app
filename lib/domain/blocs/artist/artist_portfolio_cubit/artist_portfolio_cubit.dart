import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_query_params.dart';
import 'package:inker_studio/data/api/work/dtos/work_query_params.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';

part 'artist_portfolio_state.dart';
part 'artist_portfolio_cubit.freezed.dart';

class ArtistPortfolioCubit extends Cubit<ArtistPortfolioState> {
  final StencilService _stencilService;
  final WorkService _workService;
  final LocalSessionService _sessionService;

  ArtistPortfolioCubit({
    required StencilService stencilService,
    required WorkService workService,
    required LocalSessionService sessionService,
  }) :
    _stencilService = stencilService,
    _workService = workService,
    _sessionService = sessionService,
    super(const ArtistPortfolioState.initial());

  /// Carga el portfolio completo del artista (stenciles y trabajos individuales)
  Future<void> loadArtistPortfolio(int artistId) async {
    emit(const ArtistPortfolioState.loading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistPortfolioState.error(message: 'No se pudo obtener el token de sesión'));
        return;
      }
      
      // Cargar stenciles del artista
      List<Stencil> stencils = [];
      try {
        final params = StencilQueryParams(
          limit: 20,
          page: 1,
          includeHidden: false,
        );
        stencils = await _stencilService.getStencilsByArtistId(
          artistId, 
          params, 
          token,
        );
      } catch (e) {
        debugPrint('Error al cargar stenciles: $e');
        // Continuamos con los demás datos
      }
      
      // Cargar trabajos individuales del artista
      List<Work> works = [];
      try {
        final params = WorkQueryParams(
          limit: 20,
          page: 1,
          includeHidden: false,
        );
        works = await _workService.getWorksByArtistId(
          artistId, 
          params, 
          token,
        );
      } catch (e) {
        debugPrint('Error al cargar trabajos: $e');
        // Continuamos con los demás datos
      }
      
      emit(ArtistPortfolioState.loaded(
        stencils: stencils,
        works: works,
      ));
    } catch (e) {
      emit(ArtistPortfolioState.error(message: e.toString()));
    }
  }
  
  // Método para recargar el portfolio
  void refresh(int artistId) {
    loadArtistPortfolio(artistId);
  }
  
  // Método para actualizar las listas de trabajos y stencils
  void updatePortfolioItems({
    List<Work>? works,
    List<Stencil>? stencils,
  }) {
    final currentState = state;
    if (currentState is _Loaded) {
      // Si hay trabajos actualizados, usarlos; de lo contrario, usar los actuales
      final updatedWorks = works ?? currentState.works;
      // Si hay stencils actualizados, usarlos; de lo contrario, usar los actuales
      final updatedStencils = stencils ?? currentState.stencils;
      
      // Emitir un nuevo estado con las listas actualizadas
      emit(ArtistPortfolioState.loaded(
        stencils: updatedStencils,
        works: updatedWorks,
      ));
    }
  }
}