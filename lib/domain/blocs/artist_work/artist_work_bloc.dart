import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_query_params.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';

part 'artist_work_event.dart';
part 'artist_work_state.dart';
part 'artist_work_bloc.freezed.dart';

class ArtistWorkBloc extends Bloc<ArtistWorkEvent, ArtistWorkState> {
  final WorkService _workService;
  final LocalSessionService _sessionService;

  ArtistWorkBloc(this._workService, this._sessionService)
      : super(const ArtistWorkState.initial()) {
    on<ArtistWorkEvent>((event, emit) async {
      await event.when(
        loadWorks: (includeHidden) => _loadWorks(includeHidden, emit),
        loadWorkDetail: (workId) => _loadWorkDetail(workId, emit),
        createWork: (title, description, isFeatured, isHidden,
                tagIds, imageFile, source) =>
            _createWork(title, description, isFeatured, isHidden,
                tagIds, imageFile, source, emit),
        updateWork: (workId, title, description, isFeatured, isHidden,
                tagIds, imageFile, source) =>
            _updateWork(workId, title, description, isFeatured, isHidden,
                tagIds, imageFile, source, emit),
        deleteWork: (workId) => _deleteWork(workId, emit),
        toggleFeatured: (work) => _toggleFeatured(work, emit),
        toggleVisibility: (work) => _toggleVisibility(work, emit),
        recordView: (workId) => _recordView(workId, emit),
        likeWork: (workId) => _likeWork(workId, emit),
        getTagSuggestions: (prefix) => _getTagSuggestions(prefix, emit),
        getPopularTags: () => _getPopularTags(emit),
        createTag: (name) => _createTag(name, emit),
        filterWorksByTag: (tagId) => _filterWorksByTag(tagId, emit),
      );
    });
  }

  Future<void> _loadWorks(
      bool includeHidden, Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.loading());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final artistId = session.user!.userTypeId;
      if (artistId == null) {
        emit(const ArtistWorkState.error('No artist ID found in session'));
        return;
      }

      final params = WorkQueryParams(
        includeHidden: includeHidden,
        limit: 50, // Load a significant number to show in the gallery
      );

      final works = await _workService.getWorksByArtistId(
          artistId, params, session.accessToken);
      emit(ArtistWorkState.loaded(works));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _loadWorkDetail(
      int workId, Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.detailLoading());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final work =
          await _workService.getWorkById(workId, session.accessToken);
      emit(ArtistWorkState.detailLoaded(work));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _createWork(
      String title,
      String? description,
      bool isFeatured,
      bool isHidden,
      List<int>? tagIds,
      XFile? imageFile,
      WorkSource source,
      Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final createDto = CreateWorkDto(
        title: title,
        description: description,
        isFeatured: isFeatured,
        isHidden: isHidden,
        tagIds: tagIds,
        source: source,
      );

      final createdWork = await _workService.createWork(
          createDto, imageFile, session.accessToken);
      emit(ArtistWorkState.workCreated(createdWork));

      // Reload works to update the list
      add(const ArtistWorkEvent.loadWorks(true));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _updateWork(
      int workId,
      String? title,
      String? description,
      bool? isFeatured,
      bool? isHidden,
      List<int>? tagIds,
      XFile? imageFile,
      WorkSource? source,
      Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final updateDto = UpdateWorkDto(
        title: title,
        description: description,
        isFeatured: isFeatured,
        isHidden: isHidden,
        tagIds: tagIds,
        source: source,
      );

      final updatedWork = await _workService.updateWork(
          workId, updateDto, imageFile, session.accessToken);
      emit(ArtistWorkState.workUpdated(updatedWork));

      // Reload works to update the list
      add(const ArtistWorkEvent.loadWorks(true));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _deleteWork(
      int workId, Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      await _workService.deleteWork(workId, session.accessToken);
      emit(const ArtistWorkState.workDeleted());

      // Reload works to update the list
      add(const ArtistWorkEvent.loadWorks(true));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _toggleFeatured(
      Work work, Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final updateDto = UpdateWorkDto(
        isFeatured: !work.isFeatured,
      );

      final updatedWork = await _workService.updateWork(
          work.id, updateDto, null, session.accessToken);
      emit(ArtistWorkState.workUpdated(updatedWork));

      // Reload works to update the list
      add(const ArtistWorkEvent.loadWorks(true));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _toggleVisibility(
      Work work, Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.submitting());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final updateDto = UpdateWorkDto(
        isHidden: !work.isHidden,
      );

      final updatedWork = await _workService.updateWork(
          work.id, updateDto, null, session.accessToken);
      emit(ArtistWorkState.workUpdated(updatedWork));

      // Reload works to update the list
      add(const ArtistWorkEvent.loadWorks(true));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _recordView(
      int workId, Emitter<ArtistWorkState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final viewCount = await _workService.recordWorkView(
          workId, session.accessToken);
      emit(ArtistWorkState.viewRecorded(workId, viewCount));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _likeWork(
      int workId, Emitter<ArtistWorkState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final likeCount =
          await _workService.likeWork(workId, session.accessToken);
      emit(ArtistWorkState.workLiked(workId, likeCount));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _getTagSuggestions(
      String prefix, Emitter<ArtistWorkState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final suggestions = await _workService.getTagSuggestions(
          prefix, 10, session.accessToken);
      emit(ArtistWorkState.tagSuggestionsLoaded(suggestions));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }

  Future<void> _getPopularTags(Emitter<ArtistWorkState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final popularTags =
          await _workService.getPopularTags(20, session.accessToken);
      emit(ArtistWorkState.popularTagsLoaded(popularTags));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }
  
  Future<void> _createTag(
      String name, Emitter<ArtistWorkState> emit) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final createdTag = await _workService.createTag(
          name, session.accessToken);
      emit(ArtistWorkState.tagCreated(createdTag));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }
  
  Future<void> _filterWorksByTag(
      int tagId, Emitter<ArtistWorkState> emit) async {
    emit(const ArtistWorkState.loading());
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const ArtistWorkState.error('No session found'));
        return;
      }

      final artistId = session.user!.userTypeId;
      if (artistId == null) {
        emit(const ArtistWorkState.error('No artist ID found in session'));
        return;
      }

      final params = WorkQueryParams(
        includeHidden: true,
        limit: 50,
        tagIds: [tagId],
      );

      final works = await _workService.getWorksByArtistId(
          artistId, params, session.accessToken);
      emit(ArtistWorkState.filteredByTag(works, tagId));
    } catch (e) {
      emit(ArtistWorkState.error(e.toString()));
    }
  }
}