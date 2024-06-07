part of 'artists_list_bloc.dart';

@freezed
class ArtistsListEvent with _$ArtistsListEvent {
  const factory ArtistsListEvent.started() = _Started;
  const factory ArtistsListEvent.addArtists({required List<Artist> artists}) =
      _AddArtists;
  const factory ArtistsListEvent.clearArtists() = _ClearArtists;
}
