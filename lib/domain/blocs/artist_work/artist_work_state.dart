part of 'artist_work_bloc.dart';

@freezed
class ArtistWorkState with _$ArtistWorkState {
  const factory ArtistWorkState.initial() = _Initial;
  const factory ArtistWorkState.loading() = _Loading;
  const factory ArtistWorkState.loaded(List<Work> works) = _Loaded;
  const factory ArtistWorkState.detailLoading() = _DetailLoading;
  const factory ArtistWorkState.detailLoaded(Work work) = _DetailLoaded;
  const factory ArtistWorkState.submitting() = _Submitting;
  const factory ArtistWorkState.workCreated(Work work) = _WorkCreated;
  const factory ArtistWorkState.workUpdated(Work work) = _WorkUpdated;
  const factory ArtistWorkState.workDeleted() = _WorkDeleted;
  const factory ArtistWorkState.viewRecorded(String workId, int viewCount) = _ViewRecorded;
  const factory ArtistWorkState.workLiked(String workId, int likeCount) = _WorkLiked;
  const factory ArtistWorkState.tagSuggestionsLoaded(List<TagSuggestionResponseDto> suggestions) = _TagSuggestionsLoaded;
  const factory ArtistWorkState.popularTagsLoaded(List<TagSuggestionResponseDto> popularTags) = _PopularTagsLoaded;
  const factory ArtistWorkState.tagCreated(TagSuggestionResponseDto tag) = _TagCreated;
  const factory ArtistWorkState.filteredByTag(List<Work> works, String tagId) = _FilteredByTag;
  const factory ArtistWorkState.error(String message) = _Error;
}