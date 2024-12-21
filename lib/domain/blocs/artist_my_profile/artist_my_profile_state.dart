part of 'artist_my_profile_bloc.dart';

@freezed
class ArtistProfileState with _$ArtistProfileState {
  const factory ArtistProfileState.initial() = _Initial;
  const factory ArtistProfileState.loading() = _Loading;
  const factory ArtistProfileState.loaded(Artist artist) = _Loaded;
  const factory ArtistProfileState.error(String message) = _Error;
}
