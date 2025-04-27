part of 'tattoo_generator_bloc.dart';

@freezed
class TattooGeneratorState with _$TattooGeneratorState {
  const factory TattooGeneratorState.initial() = _Initial;
  const factory TattooGeneratorState.loading() = _Loading;
  const factory TattooGeneratorState.loaded({
    required List<TattooGeneratedImageURL> images,
    required String prompt,
    required TattooStyle style,
  }) = _Loaded;
  const factory TattooGeneratorState.error(String message) = _Error;
  const factory TattooGeneratorState.promptUpdated({required String prompt}) = _PromptUpdated;
  const factory TattooGeneratorState.styleUpdated({required TattooStyle style}) = _StyleUpdated;
} 