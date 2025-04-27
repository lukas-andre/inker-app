part of 'tattoo_generator_bloc.dart';

@freezed
class TattooGeneratorState with _$TattooGeneratorState {
  const factory TattooGeneratorState.initial() = _Initial;
  const factory TattooGeneratorState.loading() = _Loading;
  const factory TattooGeneratorState.loaded({
    required List<GeneratedTattooImage> images,
    required String prompt,
    required TattooStyle style,
    String? designId,
  }) = _Loaded;
  const factory TattooGeneratorState.error(String message) = _Error;
  const factory TattooGeneratorState.promptUpdated({required String prompt}) = _PromptUpdated;
  const factory TattooGeneratorState.styleUpdated({required TattooStyle style}) = _StyleUpdated;
  
  // New states for history and favorites
  const factory TattooGeneratorState.historyLoading() = _HistoryLoading;
  const factory TattooGeneratorState.historyLoaded({
    required List<UserTattooDesignDto> designs,
    required bool favoritesOnly,
  }) = _HistoryLoaded;
  const factory TattooGeneratorState.favoriteToggled({
    required String designId, 
    required bool isFavorite
  }) = _FavoriteToggled;
} 