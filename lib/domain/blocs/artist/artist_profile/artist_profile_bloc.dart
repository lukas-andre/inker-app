import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';

part 'artist_profile_event.dart';
part 'artist_profile_state.dart';
part 'artist_profile_bloc.freezed.dart';

class ArtistProfileBloc extends Bloc<ArtistProfileEvent, ArtistProfileState> {
  ArtistProfileBloc() : super(const ArtistProfileStateInitial()) {
    on<ArtistProfileEvent>((event, emit) {
      event.when(
          started: () {},
          setArtist: (Artist artist) {
            emit(ArtistProfileState.configured(artist: artist));
          });
    });
  }
}
