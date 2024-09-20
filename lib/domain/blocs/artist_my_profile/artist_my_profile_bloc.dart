import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';

part 'artist_my_profile_event.dart';
part 'artist_my_profile_state.dart';

part 'artist_my_profile_bloc.freezed.dart';

class ArtistProfileBloc extends Bloc<ArtistProfileEvent, ArtistProfileState> {
  final ArtistService _artistService;

  ArtistProfileBloc(this._artistService)
      : super(const ArtistProfileState.initial()) {
    on<ArtistProfileEvent>((event, emit) async {
      await event.when(
        loadProfile: () => _loadProfile(emit),
        updateProfile: (artist) => _updateProfile(artist, emit),
      );
    });
  }

  Future<void> _loadProfile(Emitter<ArtistProfileState> emit) async {
    emit(const ArtistProfileState.loading());
    try {
      final artist = await _artistService.getArtistProfile();
      emit(ArtistProfileState.loaded(artist));
    } catch (e) {
      emit(ArtistProfileState.error(e.toString()));
    }
  }

  Future<void> _updateProfile(
      Artist artist, Emitter<ArtistProfileState> emit) async {
    emit(const ArtistProfileState.loading());
    try {
      await _artistService.updateArtistProfile(artist);
      emit(ArtistProfileState.loaded(artist));
    } catch (e) {
      emit(ArtistProfileState.error(e.toString()));
    }
  }
}
