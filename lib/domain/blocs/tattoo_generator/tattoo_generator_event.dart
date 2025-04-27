part of 'tattoo_generator_bloc.dart';

@freezed
class TattooGeneratorEvent with _$TattooGeneratorEvent {
  const factory TattooGeneratorEvent.started() = _Started;
  const factory TattooGeneratorEvent.generateTattoo({
    required String prompt,
    required TattooStyle style,
  }) = _GenerateTattoo;
  const factory TattooGeneratorEvent.resetState() = _ResetState;
  const factory TattooGeneratorEvent.updatePrompt(String prompt) = _UpdatePrompt;
  const factory TattooGeneratorEvent.updateStyle(TattooStyle style) = _UpdateStyle;
  
  // New events for history and favorites
  const factory TattooGeneratorEvent.loadHistory() = _LoadHistory;
  const factory TattooGeneratorEvent.loadFavorites() = _LoadFavorites;
  const factory TattooGeneratorEvent.refreshHistory() = _RefreshHistory;
  const factory TattooGeneratorEvent.refreshFavorites() = _RefreshFavorites;
  const factory TattooGeneratorEvent.toggleFavorite({required String designId, required bool isFavorite}) = _ToggleFavorite;
} 