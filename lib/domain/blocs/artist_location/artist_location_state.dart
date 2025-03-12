part of 'artist_location_bloc.dart';

@freezed
class ArtistLocationState with _$ArtistLocationState {
  const factory ArtistLocationState.initial() = _Initial;
  const factory ArtistLocationState.loading() = _Loading;
  const factory ArtistLocationState.loaded(List<ArtistLocation> locations) = _Loaded;
  const factory ArtistLocationState.error(String message) = _Error;
}