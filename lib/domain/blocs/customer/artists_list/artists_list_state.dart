part of 'artists_list_bloc.dart';

@freezed
class ArtistsListState with _$ArtistsListState {
  const factory ArtistsListState.initial({@Default([]) List<Artist> artists}) =
      ArtistsListStateInitial;
  const factory ArtistsListState.loaded({@Default([]) List<Artist> artists}) =
      ArtistsListStateLoaded;
}
