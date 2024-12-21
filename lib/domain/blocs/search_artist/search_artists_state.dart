part of 'search_artists_bloc.dart';

@freezed
class SearchArtistsState with _$SearchArtistsState {
  const factory SearchArtistsState.initial() = _Initial;
  const factory SearchArtistsState.loading() = _Loading;
  const factory SearchArtistsState.success({
    required List<Artist> artists,
    required MetadataDto metadata,
    required String currentQuery,
  }) = _Success;
  const factory SearchArtistsState.error({
    required String message,
  }) = _Error;
}
