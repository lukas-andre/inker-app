import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';

part 'artist_my_profile_event.dart';
part 'artist_my_profile_state.dart';
part 'artist_my_profile_bloc.freezed.dart';

class ArtistMyProfileBloc extends Bloc<ArtistProfileEvent, ArtistProfileState> {
  final ArtistService _artistService;

  ArtistMyProfileBloc(this._artistService)
      : super(const ArtistProfileState.initial()) {
    on<ArtistProfileEvent>((event, emit) async {
      await event.when(
        loadProfile: () => _loadProfile(emit),
        updateProfile: (artist) => _updateProfile(artist, emit),
        updateName: (firstName, lastName) =>
            _updateName(firstName, lastName, emit),
        updateUsername: (username) => _updateUsername(username, emit),
        updateDescription: (description) =>
            _updateDescription(description, emit),
        updateGenres: (genres) => _updateGenres(genres, emit),
        updateProfileImage: (image) => _updateProfileImage(image, emit),
        updateStudioPhoto: (image) => _updateStudioPhoto(image, emit),
        updateTags: (tags) => _updateTags(tags, emit),
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

  Future<void> _updateName(String firstName, String lastName,
      Emitter<ArtistProfileState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedArtist = currentState.artist
          .copyWith(firstName: firstName, lastName: lastName);
      add(ArtistProfileEvent.updateProfile(updatedArtist));
    }
  }

  Future<void> _updateUsername(
      String username, Emitter<ArtistProfileState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedArtist = currentState.artist.copyWith(username: username);
      add(ArtistProfileEvent.updateProfile(updatedArtist));
    }
  }

  Future<void> _updateDescription(
      String description, Emitter<ArtistProfileState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedArtist =
          currentState.artist.copyWith(shortDescription: description);
      add(ArtistProfileEvent.updateProfile(updatedArtist));
    }
  }

  Future<void> _updateGenres(
      List<String> genres, Emitter<ArtistProfileState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedArtist = currentState.artist.copyWith(genres: genres);
      add(ArtistProfileEvent.updateProfile(updatedArtist));
    }
  }

  Future<void> _updateTags(
      List<String> tags, Emitter<ArtistProfileState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedArtist = currentState.artist.copyWith(tags: tags);
      add(ArtistProfileEvent.updateProfile(updatedArtist));
    }
  }

  Future<void> _updateProfileImage(
      File image, Emitter<ArtistProfileState> emit) async {
    // Implementa la lógica para subir la imagen y actualizar el perfil
  }

  Future<void> _updateStudioPhoto(
      File image, Emitter<ArtistProfileState> emit) async {
    // Implementa la lógica para subir la imagen y actualizar el perfil
  }
}
