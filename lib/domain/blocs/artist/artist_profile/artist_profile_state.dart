part of 'artist_profile_bloc.dart';

@freezed
class ArtistProfileState with _$ArtistProfileState {
  const factory ArtistProfileState.initial({
    @Default(null) Artist? artist,
    @Default(null) GetArtistWorksResponse? works,
  }) = ArtistProfileStateInitial;

  const factory ArtistProfileState.configured({
    required Artist? artist,
    @Default(null) GetArtistWorksResponse? works,
  }) = ArtistProfileStateConfigured;

  const factory ArtistProfileState.loadingWorks({
    required Artist? artist,
    @Default(null) GetArtistWorksResponse? works,
  }) = ArtistProfileStateLoadingWorks;

  const factory ArtistProfileState.loadedWorks({
    required Artist? artist,
    required GetArtistWorksResponse? works,
  }) = ArtistProfileStateLoadedWorks;

  const factory ArtistProfileState.loadWorksError({
    required Artist? artist,
    required GetArtistWorksResponse? works,
    required String message,
  }) = ArtistProfileStateLoadWorksError;

  const factory ArtistProfileState.followed({
    required Artist? artist,
    required GetArtistWorksResponse? works,
  }) = ArtistProfileStateFollowed;

  const factory ArtistProfileState.unFollowed({
    required Artist? artist,
    required GetArtistWorksResponse? works,
  }) = ArtistProfileStateUnFollowed;
}
