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
          await _loadHistory(emit, false);
        },
        loadFavorites: () async {
          await _loadHistory(emit, true);
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
    } catch (e) {
      emit(TattooGeneratorState.error(e.toString()));
    }
  }
  
  Future<void> _loadHistory(
    Emitter<TattooGeneratorState> emit,
    bool favoritesOnly,
  ) async {
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
        limit: 20, // Reasonable limit for mobile display
      );

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
      
      // Then make the API call in the background
      await _tattooGeneratorService.updateTattooFavorite(
        designId: designId,
        isFavorite: isFavorite,
        token: session.accessToken,
      );
      
      // We don't reload the history here to maintain UI performance
      // The UI will reflect the change immediately, and the next time 
      // the history is loaded it will have the correct state
    } catch (e) {
      // Silent failure for optimistic UI updates
      // The next time history is loaded, it will have the correct state
    }
  }
} 