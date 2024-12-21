part of 'search_artists_bloc.dart';

@freezed
class SearchArtistsEvent with _$SearchArtistsEvent {
  const factory SearchArtistsEvent.search({
    required String query,
    @Default(1) int page,
    @Default(0) double minRating,
  }) = _Search;
  
  const factory SearchArtistsEvent.clear() = _Clear;
}
