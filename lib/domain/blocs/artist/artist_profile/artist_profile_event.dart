part of 'artist_profile_bloc.dart';

@freezed
class ArtistProfileEvent with _$ArtistProfileEvent {
  const factory ArtistProfileEvent.started() = _Started;

  const factory ArtistProfileEvent.setArtist(Artist artist) = _SetArtist;

  const factory ArtistProfileEvent.loadingWorks() = _LoadingWorks;

  const factory ArtistProfileEvent.loadedWorks(GetArtistWorksResponse works) =
      _LoadedWorks;

  const factory ArtistProfileEvent.loadWorksError(String message) =
      _LoadWorksError;

  const factory ArtistProfileEvent.follow() = _Follow;

  const factory ArtistProfileEvent.unFollow() = _UnFollow;
}
