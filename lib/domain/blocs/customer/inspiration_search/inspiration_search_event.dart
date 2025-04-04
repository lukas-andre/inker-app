part of 'inspiration_search_bloc.dart';

@freezed
class InspirationSearchEvent with _$InspirationSearchEvent {
  const factory InspirationSearchEvent.searchWorks({
    String? query,
    List<int>? tagIds,
    SortType? sortBy,
    @Default(false) bool skipCache,
  }) = InspirationSearchEventSearchWorks;
  
  const factory InspirationSearchEvent.searchStencils({
    String? query,
    List<int>? tagIds,
    SortType? sortBy,
    @Default(false) bool skipCache,
  }) = InspirationSearchEventSearchStencils;
  
  const factory InspirationSearchEvent.searchBoth({
    String? query,
    List<int>? tagIds,
    SortType? sortBy,
    @Default(false) bool skipCache,
  }) = InspirationSearchEventSearchBoth;
  
  const factory InspirationSearchEvent.loadMoreWorks() = InspirationSearchEventLoadMoreWorks;
  
  const factory InspirationSearchEvent.loadMoreStencils() = InspirationSearchEventLoadMoreStencils;
  
  const factory InspirationSearchEvent.changeContentType({
    required ContentType contentType,
  }) = InspirationSearchEventChangeContentType;
  
  const factory InspirationSearchEvent.changeSortType({
    required SortType sortType,
  }) = InspirationSearchEventChangeSortType;
  
  const factory InspirationSearchEvent.getPopularTags() = InspirationSearchEventGetPopularTags;
  
  const factory InspirationSearchEvent.searchTags({
    required String query,
  }) = InspirationSearchEventSearchTags;
  
  const factory InspirationSearchEvent.filterByTags({
    required List<int> tagIds,
  }) = InspirationSearchEventFilterByTags;
  
  const factory InspirationSearchEvent.clearFilters() = InspirationSearchEventClearFilters;
  
  const factory InspirationSearchEvent.reset() = InspirationSearchEventReset;
}