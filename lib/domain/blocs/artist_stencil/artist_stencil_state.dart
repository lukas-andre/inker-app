part of 'artist_stencil_bloc.dart';

@freezed
class ArtistStencilState with _$ArtistStencilState {
  const factory ArtistStencilState.initial() = _Initial;
  const factory ArtistStencilState.loading() = _Loading;
  const factory ArtistStencilState.loaded(List<Stencil> stencils) = _Loaded;
  const factory ArtistStencilState.detailLoading() = _DetailLoading;
  const factory ArtistStencilState.detailLoaded(Stencil stencil) = _DetailLoaded;
  const factory ArtistStencilState.submitting() = _Submitting;
  const factory ArtistStencilState.stencilCreated(Stencil stencil) = _StencilCreated;
  const factory ArtistStencilState.stencilUpdated(Stencil stencil) = _StencilUpdated;
  const factory ArtistStencilState.stencilDeleted() = _StencilDeleted;
  const factory ArtistStencilState.viewRecorded(int stencilId, int viewCount) = _ViewRecorded;
  const factory ArtistStencilState.stencilLiked(int stencilId, int likeCount) = _StencilLiked;
  const factory ArtistStencilState.tagSuggestionsLoaded(List<TagSuggestionResponseDto> suggestions) = _TagSuggestionsLoaded;
  const factory ArtistStencilState.popularTagsLoaded(List<TagSuggestionResponseDto> popularTags) = _PopularTagsLoaded;
  const factory ArtistStencilState.error(String message) = _Error;
}