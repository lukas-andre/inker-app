part of 'artist_profile_bloc.dart';

@freezed
class ArtistProfileState with _$ArtistProfileState {
  const factory ArtistProfileState.initial() = ArtistProfileStateInitial;

  const factory ArtistProfileState.configured({required Artist artist}) =
      ArtistProfileStateConfigured;
}
