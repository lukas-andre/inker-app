import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
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
} 