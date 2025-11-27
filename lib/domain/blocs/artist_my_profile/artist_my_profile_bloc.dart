import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/update_artist_dto.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_bloc.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_status.dart';

part 'artist_my_profile_event.dart';
part 'artist_my_profile_state.dart';
part 'artist_my_profile_bloc.freezed.dart';

class ArtistMyProfileBloc extends Bloc<ArtistProfileEvent, ArtistProfileState> {
  final ArtistService _artistService;
  final AuthBloc _authBloc;

  ArtistMyProfileBloc(this._artistService, this._authBloc)
      : super(const ArtistProfileState.initial()) {
    on<ArtistProfileEvent>((event, emit) async {
      await event.when(
        loadProfile: () => _loadProfile(emit),
        updateProfile: (artist) async => await _updateProfile(artist, emit),
        updateName: (firstName, lastName) =>
            _updateName(firstName, lastName, emit),
        updateUsername: (username) => _updateUsername(username, emit),
        updateDescription: (description) =>
            _updateDescription(description, emit),
        updateGenres: (genres) => _updateGenres(genres, emit),
        updateTags: (tags) => _updateTags(tags, emit),
        updateProfileImage: (image) async =>
            await _updateProfileImage(image, emit),
        updateStudioPhoto: (image) async =>
            await _updateStudioPhoto(image, emit),
        updateEmail: (email) => _updateEmail(email, emit),
        updatePhone: (phone) => _updatePhone(phone, emit),
        updateRequiresBasicConsent: (requiresConsent) =>
            _updateRequiresBasicConsent(requiresConsent, emit),
      );
    });
  }

  Future<void> _loadProfile(Emitter<ArtistProfileState> emit) async {
    emit(const ArtistProfileState.loading());
    try {
      final artist = await _artistService.getArtistProfile();
      print('artist: $artist');
      if (artist == null) {
        throw Exception('Artist is null');
      }
      emit(ArtistProfileState.loaded(artist));
      
    } catch (e) {
      emit(ArtistProfileState.error(e.toString()));
      
      // Si falla la carga del perfil, hacer logout
      if (_authBloc.state.status == AuthStatus.authenticated) {
        _authBloc.add(AuthLogoutRequested(_authBloc.state.session));
      }
    }
  }

  Future<void> _updateProfile(
      Artist artist, Emitter<ArtistProfileState> emit) async {
    emit(const ArtistProfileState.loading());
    try {
      await _artistService.updateArtistProfile(UpdateArtistDto(
        firstName: artist.firstName,
        lastName: artist.lastName,
        shortDescription: artist.shortDescription,
        requiresBasicConsent: artist.requiresBasicConsent,
        contact: UpdateContactDto(
          email: artist.contact?.email,
          phone: artist.contact?.phone,
          phoneDialCode: artist.contact?.phoneDialCode,
          phoneCountryIsoCode: artist.contact?.phoneCountryIsoCode,
        ),
      ));
      emit(ArtistProfileState.loaded(artist));
    } catch (e) {
      emit(ArtistProfileState.error(e.toString()));
    }
  }

  Future<void> _updateName(String firstName, String lastName,
      Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist = artist.copyWith(
          firstName: firstName,
          lastName: lastName,
        );
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar el nombre porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateUsername(
      String username, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist = artist.copyWith(username: username);
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar el nombre de usuario porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateDescription(
      String description, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist = artist.copyWith(shortDescription: description);
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar la descripción porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateGenres(
      List<String> genres, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist = artist.copyWith(genres: genres);
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar los géneros porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateTags(
      List<String> tags, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist = artist.copyWith(tags: tags);
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar las etiquetas porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateProfileImage(
      XFile image, Emitter<ArtistProfileState> emit) async {
    await state.maybeWhen(
      loaded: (artist) async {
        emit(const ArtistProfileState.loading());
        try {
          final updatedArtist =
              await _artistService.updateProfilePicture(artist.id, image);
          emit(ArtistProfileState.loaded(artist.copyWith(
              profileThumbnail: updatedArtist.profileThumbnail)));
        } catch (e) {
          emit(ArtistProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar la imagen de perfil porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateStudioPhoto(
      XFile image, Emitter<ArtistProfileState> emit) async {
    await state.maybeWhen(
      loaded: (artist) async {
        emit(const ArtistProfileState.loading());
        try {
          final updatedArtist =
              await _artistService.updateStudioPhoto(artist.id, image);
          emit(ArtistProfileState.loaded(
              artist.copyWith(studioPhoto: updatedArtist.studioPhoto)));
        } catch (e) {
          emit(ArtistProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar la foto del estudio porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateEmail(
      String email, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist =
            artist.copyWith(contact: artist.contact?.copyWith(email: email));
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar el email porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updatePhone(
      String phone, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist =
            artist.copyWith(contact: artist.contact?.copyWith(phone: phone));
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'No se puede actualizar el teléfono porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateRequiresBasicConsent(
      bool requiresConsent, Emitter<ArtistProfileState> emit) async {
    state.maybeWhen(
      loaded: (artist) {
        final updatedArtist =
            artist.copyWith(requiresBasicConsent: requiresConsent);
        add(ArtistProfileEvent.updateProfile(updatedArtist));
      },
      orElse: () {
        emit(const ArtistProfileState.error(
            'Cannot update consent setting because profile is not loaded.'));
      },
    );
  }
}
