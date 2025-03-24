part of 'inspiration_search_bloc.dart';

enum ContentType { works, stencils, both }

enum SortType { 
  relevance, 
  newest, 
  oldest, 
  price_low, 
  price_high,
  popularity,
  position,
}

extension SortTypeExtension on SortType {
  String get name {
    switch (this) {
      case SortType.relevance:
        return 'relevance';
      case SortType.newest:
        return 'newest';
      case SortType.oldest:
        return 'oldest';
      case SortType.price_low:
        return 'price_low';
      case SortType.price_high:
        return 'price_high';
      case SortType.popularity:
        return 'popularity';
      case SortType.position:
        return 'position';
    }
  }
  
  String get displayName {
    switch (this) {
      case SortType.relevance:
        return 'Relevancia';
      case SortType.newest:
        return 'Más recientes';
      case SortType.oldest:
        return 'Más antiguos';
      case SortType.price_low:
        return 'Precio menor';
      case SortType.price_high:
        return 'Precio mayor';
      case SortType.popularity:
        return 'Popularidad';
      case SortType.position:
        return 'Posición';
    }
  }
}

@freezed
class InspirationSearchState with _$InspirationSearchState {
  const factory InspirationSearchState.initial() = InspirationSearchState_Initial;
  
  const factory InspirationSearchState.loading() = InspirationSearchState_Loading;
  
  const factory InspirationSearchState.loaded({
    required List<Work> works,
    required List<Stencil> stencils,
    required ContentType contentType,
    required List<int> selectedTagIds,
    required String searchQuery,
    required SortType sortType,
    required int currentWorkPage,
    required bool hasMoreWorks,
    required int currentStencilPage,
    required bool hasMoreStencils,
    @Default([]) List<TagSuggestionResponseDto> popularTags,
    @Default([]) List<TagSuggestionResponseDto> searchedTags,
  }) = InspirationSearchState_Loaded;
  
  const factory InspirationSearchState.error({
    required String message,
  }) = InspirationSearchState_Error;
}