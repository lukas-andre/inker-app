part of 'artist_my_profile_bloc.dart';

@freezed
class ArtistProfileEvent with _$ArtistProfileEvent {
  const factory ArtistProfileEvent.loadProfile() = _LoadProfile;
  const factory ArtistProfileEvent.updateProfile(Artist artist) =
      _UpdateProfile;
}
