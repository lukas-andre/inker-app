part of 'artist_my_profile_bloc.dart';

@freezed
class ArtistProfileEvent with _$ArtistProfileEvent {
  const factory ArtistProfileEvent.loadProfile() = _LoadProfile;
  const factory ArtistProfileEvent.updateProfile(Artist artist) =
      _UpdateProfile;
  const factory ArtistProfileEvent.updateName(
      {required String firstName, required String lastName}) = _UpdateName;
  const factory ArtistProfileEvent.updateUsername(String username) =
      _UpdateUsername;
  const factory ArtistProfileEvent.updateDescription(String description) =
      _UpdateDescription;
  const factory ArtistProfileEvent.updateGenres(List<String> genres) =
      _UpdateGenres;
  const factory ArtistProfileEvent.updateTags(List<String> tags) = _UpdateTags;
  const factory ArtistProfileEvent.updateProfileImage(File image) =
      _UpdateProfileImage;
  const factory ArtistProfileEvent.updateStudioPhoto(File image) =
      _UpdateStudioPhoto;
}
