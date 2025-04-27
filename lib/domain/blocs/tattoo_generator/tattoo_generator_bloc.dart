import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/generated/l10n.dart';

part 'tattoo_generator_event.dart';
part 'tattoo_generator_state.dart';
part 'tattoo_generator_bloc.freezed.dart';

class TattooGeneratorBloc extends Bloc<TattooGeneratorEvent, TattooGeneratorState> {
  final TattooGeneratorService _tattooGeneratorService;
  final LocalSessionService _sessionService;
  
  // Cache for previously loaded designs
  List<UserTattooDesignDto> _cachedDesigns = [];
  List<UserTattooDesignDto> _cachedFavorites = [];
  bool _hasLoadedHistory = false;
  bool _hasLoadedFavorites = false;

  TattooGeneratorBloc({
    required TattooGeneratorService tattooGeneratorService,
    required LocalSessionService sessionService,
  })  : _tattooGeneratorService = tattooGeneratorService,
        _sessionService = sessionService,
        super(const TattooGeneratorState.initial()) {
    on<TattooGeneratorEvent>((event, emit) async {
      await event.when(
        started: () {
          emit(const TattooGeneratorState.initial());
        },
        generateTattoo: (prompt, style) async {
          await _generateTattoo(emit, prompt, style);
        },
        resetState: () {
          emit(const TattooGeneratorState.initial());
        },
        updatePrompt: (prompt) {
          emit(TattooGeneratorState.promptUpdated(prompt: prompt));
        },
        updateStyle: (style) {
          emit(TattooGeneratorState.styleUpdated(style: style));
        },
        loadHistory: () async {
          // Only load from API if not already cached or being forced to refresh
          if (_hasLoadedHistory && _cachedDesigns.isNotEmpty) {
            emit(TattooGeneratorState.historyLoaded(
              designs: _cachedDesigns,
              favoritesOnly: false,
            ));
          } else {
            await _loadHistory(emit, false);
          }
        },
        loadFavorites: () async {
          // Only load from API if not already cached or being forced to refresh
          if (_hasLoadedFavorites && _cachedFavorites.isNotEmpty) {
            emit(TattooGeneratorState.historyLoaded(
              designs: _cachedFavorites,
              favoritesOnly: true,
            ));
          } else {
            await _loadHistory(emit, true);
          }
        },
        refreshHistory: () async {
          await _loadHistory(emit, false, forceRefresh: true);
        },
        refreshFavorites: () async {
          await _loadHistory(emit, true, forceRefresh: true);
        },
        toggleFavorite: (designId, isFavorite) async {
          await _toggleFavorite(emit, designId, isFavorite);
        },
      );
    });
  }

  Future<void> _generateTattoo(
    Emitter<TattooGeneratorState> emit,
    String prompt,
    TattooStyle style,
  ) async {
    try {
      emit(const TattooGeneratorState.loading());

      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(TattooGeneratorState.error(S.current.noActiveSession));
        return;
      }

      final images = await _tattooGeneratorService.generateTattoo(
        prompt: prompt,
        style: style,
        token: session.accessToken,
      );

      if (images.isEmpty) {
        emit(TattooGeneratorState.error(S.current.noImagesGenerated));
        return;
      }

      emit(TattooGeneratorState.loaded(
        images: images,
        prompt: prompt,
        style: style,
      ));
      
      // After successful generation, invalidate history cache
      // so the next time user views history they'll see the new design
      _hasLoadedHistory = false;
    } catch (e) {
      emit(TattooGeneratorState.error(e.toString()));
    }
  }
  
  Future<void> _loadHistory(
    Emitter<TattooGeneratorState> emit,
    bool favoritesOnly, {
    bool forceRefresh = false,
  }) async {
    try {
      emit(const TattooGeneratorState.historyLoading());

      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(TattooGeneratorState.error(S.current.noActiveSession));
        return;
      }

      final history = await _tattooGeneratorService.getUserTattooHistory(
        token: session.accessToken,
        favoritesOnly: favoritesOnly,
        limit: 50, // Increased limit to show more designs
      );

      // Update appropriate cache based on which tab we're loading
      if (favoritesOnly) {
        _cachedFavorites = history.designs;
        _hasLoadedFavorites = true;
      } else {
        _cachedDesigns = history.designs;
        _hasLoadedHistory = true;
      }

      emit(TattooGeneratorState.historyLoaded(
        designs: history.designs,
        favoritesOnly: favoritesOnly,
      ));
    } catch (e) {
      emit(TattooGeneratorState.error(e.toString()));
    }
  }
  
  Future<void> _toggleFavorite(
    Emitter<TattooGeneratorState> emit,
    String designId,
    bool isFavorite,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        return; // Silent failure for toggle to maintain UI responsiveness
      }
      
      // First emit the toggle event to update UI immediately
      emit(TattooGeneratorState.favoriteToggled(
        designId: designId, 
        isFavorite: isFavorite,
      ));
      
      // Update cached designs to reflect the change
      _updateDesignFavoriteStatus(designId, isFavorite);
      
      // Then make the API call in the background
      await _tattooGeneratorService.updateTattooFavorite(
        designId: designId,
        isFavorite: isFavorite,
        token: session.accessToken,
      );
    } catch (e) {
      // Silent failure for optimistic UI updates
    }
  }
  
  // Helper method to update cache when toggling favorites
  void _updateDesignFavoriteStatus(String designId, bool isFavorite) {
    // Update in the all designs cache
    for (int i = 0; i < _cachedDesigns.length; i++) {
      if (_cachedDesigns[i].id == designId) {
        final updatedDesign = UserTattooDesignDto(
          id: _cachedDesigns[i].id,
          userQuery: _cachedDesigns[i].userQuery,
          style: _cachedDesigns[i].style,
          imageUrls: _cachedDesigns[i].imageUrls,
          isFavorite: isFavorite,
          metadata: _cachedDesigns[i].metadata,
          createdAt: _cachedDesigns[i].createdAt,
        );
        _cachedDesigns[i] = updatedDesign;
        break;
      }
    }
    
    // Add to or remove from favorites cache
    if (isFavorite) {
      // Find in all designs and add to favorites if not already there
      final designToAdd = _cachedDesigns.firstWhere(
        (design) => design.id == designId,
        orElse: () => _cachedFavorites.firstWhere(
          (design) => design.id == designId,
          orElse: () => _cachedDesigns.isEmpty ? UserTattooDesignDto(
            id: designId,
            userQuery: '',
            style: 'blackwork',
            imageUrls: [],
            isFavorite: true,
          ) : _cachedDesigns[0], // Fallback - shouldn't happen
        ),
      );
      
      if (!_cachedFavorites.any((design) => design.id == designId)) {
        final updatedDesign = UserTattooDesignDto(
          id: designToAdd.id,
          userQuery: designToAdd.userQuery,
          style: designToAdd.style,
          imageUrls: designToAdd.imageUrls,
          isFavorite: true,
          metadata: designToAdd.metadata,
          createdAt: designToAdd.createdAt,
        );
        _cachedFavorites = [..._cachedFavorites, updatedDesign];
      }
    } else {
      // Remove from favorites cache
      _cachedFavorites = _cachedFavorites.where((design) => design.id != designId).toList();
    }
  }
} 