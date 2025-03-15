import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_query_params.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';

part 'artist_stencil_event.dart';
part 'artist_stencil_state.dart';
part 'artist_stencil_bloc.freezed.dart';

class ArtistStencilBloc extends Bloc<ArtistStencilEvent, ArtistStencilState> {
  final StencilService _stencilService;
  final LocalSessionService _sessionService;

  ArtistStencilBloc(this._stencilService, this._sessionService)
      : super(const ArtistStencilState.initial()) {
    on<ArtistStencilEvent>((event, emit) async {
      await event.when(
        loadStencils: (includeHidden) => _loadStencils(includeHidden, emit),
        loadStencilDetail: (stencilId) => _loadStencilDetail(stencilId, emit),
        createStencil: (title, description, source, isFeatured, isHidden,
                tagIds, imageFile) =>
            _createStencil(title, description, source, isFeatured, isHidden,
                tagIds, imageFile, emit),
        updateStencil: (stencilId, title, description, isFeatured, isHidden,
                tagIds, imageFile) =>
            _updateStencil(stencilId, title, description, isFeatured, isHidden,
                tagIds, imageFile, emit),
        deleteStencil: (stencilId) => _deleteStencil(stencilId, emit),
        toggleFeatured: (stencil) => _toggleFeatured(stencil, emit),
        toggleVisibility: (stencil) => _toggleVisibility(stencil, emit),
        recordView: (stencilId) => _recordView(stencilId, emit),
        likeStencil: (stencilId) => _likeStencil(stencilId, emit),
        getTagSuggestions: (prefix) => _getTagSuggestions(prefix, emit),
        getPopularTags: () => _getPopularTags(emit),
      );
    });
  }

  Future<void> _loadStencils(
      bool includeHidden, Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.loading());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final artistId = session.user!.userTypeId;
      if (artistId == null) {
        emit(const ArtistStencilState.error('No artist ID found in session'));
        return;
      }

      final params = StencilQueryParams(
        includeHidden: includeHidden,
        limit: 50, // Load a significant number to show in the gallery
      );

      final stencils = await _stencilService.getStencilsByArtistId(
          artistId, params, session.accessToken);
      emit(ArtistStencilState.loaded(stencils));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _loadStencilDetail(
      int stencilId, Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.detailLoading());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final stencil =
          await _stencilService.getStencilById(stencilId, session.accessToken);
      emit(ArtistStencilState.detailLoaded(stencil));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _createStencil(
      String title,
      String? description,
      StencilSource source,
      bool isFeatured,
      bool isHidden,
      List<int>? tagIds,
      XFile? imageFile,
      Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final createDto = CreateStencilDto(
        title: title,
        description: description,
        source: source,
        isFeatured: isFeatured,
        isHidden: isHidden,
        tagIds: tagIds,
      );

      final createdStencil = await _stencilService.createStencil(
          createDto, imageFile, session.accessToken);
      emit(ArtistStencilState.stencilCreated(createdStencil));

      // Reload stencils to update the list
      add(const ArtistStencilEvent.loadStencils(true));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _updateStencil(
      int stencilId,
      String? title,
      String? description,
      bool? isFeatured,
      bool? isHidden,
      List<int>? tagIds,
      XFile? imageFile,
      Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final updateDto = UpdateStencilDto(
        title: title,
        description: description,
        isFeatured: isFeatured,
        isHidden: isHidden,
        tagIds: tagIds,
      );

      final updatedStencil = await _stencilService.updateStencil(
          stencilId, updateDto, imageFile, session.accessToken);
      emit(ArtistStencilState.stencilUpdated(updatedStencil));

      // Reload stencils to update the list
      add(const ArtistStencilEvent.loadStencils(true));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _deleteStencil(
      int stencilId, Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      await _stencilService.deleteStencil(stencilId, session.accessToken);
      emit(const ArtistStencilState.stencilDeleted());

      // Reload stencils to update the list
      add(const ArtistStencilEvent.loadStencils(true));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _toggleFeatured(
      Stencil stencil, Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final updateDto = UpdateStencilDto(
        isFeatured: !stencil.isFeatured,
      );

      final updatedStencil = await _stencilService.updateStencil(
          stencil.id, updateDto, null, session.accessToken);
      emit(ArtistStencilState.stencilUpdated(updatedStencil));

      // Reload stencils to update the list
      add(const ArtistStencilEvent.loadStencils(true));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _toggleVisibility(
      Stencil stencil, Emitter<ArtistStencilState> emit) async {
    emit(const ArtistStencilState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final updateDto = UpdateStencilDto(
        isHidden: !stencil.isHidden,
      );

      final updatedStencil = await _stencilService.updateStencil(
          stencil.id, updateDto, null, session.accessToken);
      emit(ArtistStencilState.stencilUpdated(updatedStencil));

      // Reload stencils to update the list
      add(const ArtistStencilEvent.loadStencils(true));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _recordView(
      int stencilId, Emitter<ArtistStencilState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final viewCount = await _stencilService.recordStencilView(
          stencilId, session.accessToken);
      emit(ArtistStencilState.viewRecorded(stencilId, viewCount));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _likeStencil(
      int stencilId, Emitter<ArtistStencilState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final likeCount =
          await _stencilService.likeStencil(stencilId, session.accessToken);
      emit(ArtistStencilState.stencilLiked(stencilId, likeCount));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _getTagSuggestions(
      String prefix, Emitter<ArtistStencilState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final suggestions = await _stencilService.getTagSuggestions(
          prefix, 10, session.accessToken);
      emit(ArtistStencilState.tagSuggestionsLoaded(suggestions));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }

  Future<void> _getPopularTags(Emitter<ArtistStencilState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistStencilState.error('No session found'));
        return;
      }

      final popularTags =
          await _stencilService.getPopularTags(20, session.accessToken);
      emit(ArtistStencilState.popularTagsLoaded(popularTags));
    } catch (e) {
      emit(ArtistStencilState.error(e.toString()));
    }
  }
}
