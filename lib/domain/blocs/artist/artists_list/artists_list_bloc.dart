import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';

part 'artists_list_event.dart';
part 'artists_list_state.dart';
part 'artists_list_bloc.freezed.dart';

class ArtistsListBloc extends Bloc<ArtistsListEvent, ArtistsListState> {
  ArtistsListBloc() : super(const ArtistsListStateInitial()) {
    on<ArtistsListEvent>((event, emit) {
      event.when(
        started: () {
          emit(const ArtistsListState.initial());
        },
        addArtists: (List<Artist> artists) {
          emit(ArtistsListState.loaded(artists: artists));
        },
        clearArtists: () {
          emit(const ArtistsListState.initial());
        },
      );
    });
  }

  void updateArtist(Artist updatedArtist) {
    final updatedArtists = state.artists.map((artist) {
      if (artist.id == updatedArtist.id) {
        return updatedArtist;
      }
      return artist;
    }).toList();

    add(ArtistsListEvent.addArtists(artists: updatedArtists));
  }
}
