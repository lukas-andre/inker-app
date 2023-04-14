part of 'artist_profile_bloc.dart';

@freezed
class ArtistProfileEvent with _$ArtistProfileEvent {
  const factory ArtistProfileEvent.started() = _Started;

  const factory ArtistProfileEvent.setArtist(Artist artist) = _SetArtist;
}
