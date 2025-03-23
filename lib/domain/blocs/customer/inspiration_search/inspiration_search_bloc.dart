import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_search_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_search_dto.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';

part 'inspiration_search_event.dart';
part 'inspiration_search_state.dart';
part 'inspiration_search_bloc.freezed.dart';

class InspirationSearchBloc extends Bloc<InspirationSearchEvent, InspirationSearchState> {
  final StencilService _stencilService;
  final WorkService _workService;
  final LocalSessionService _sessionService;

  InspirationSearchBloc({
    required StencilService stencilService,
    required WorkService workService,
    required LocalSessionService sessionService,
  })  : _stencilService = stencilService,
        _workService = workService,
        _sessionService = sessionService,
        super(const InspirationSearchState.initial()) {
    on<InspirationSearchEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
    InspirationSearchEvent event,
    Emitter<InspirationSearchState> emit,
  ) async {
    await event.map(
      searchWorks: (e) => _mapSearchWorksToState(e, emit),
      searchStencils: (e) => _mapSearchStencilsToState(e, emit),
      searchBoth: (e) => _mapSearchBothToState(e, emit),
      loadMoreWorks: (e) => _mapLoadMoreWorksToState(e, emit),
      loadMoreStencils: (e) => _mapLoadMoreStencilsToState(e, emit),
      changeContentType: (e) => _mapChangeContentTypeToState(e, emit),
      changeSortType: (e) => _mapChangeSortTypeToState(e, emit),
      getPopularTags: (e) => _mapGetPopularTagsToState(e, emit),
      filterByTags: (e) => _mapFilterByTagsToState(e, emit),
      clearFilters: (e) => _mapClearFiltersToState(e, emit),
      reset: (e) => _mapResetToState(e, emit),
    );
  }

  Future<void> _mapSearchWorksToState(
    InspirationSearchEventSearchWorks event,
    Emitter<InspirationSearchState> emit,
  ) async {
    try {
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      final queryParams = WorkSearchQueryDto(
        query: event.query,
        tagIds: event.tagIds,
        sortBy: event.sortBy?.name ?? 'relevance',
        page: 1,
        limit: 10,
      );
      
      final workResults = await _workService.searchWorks(queryParams, session.accessToken);
      
      emit(InspirationSearchState.loaded(
        works: workResults.items,
        stencils: const [],
        contentType: ContentType.works,
        selectedTagIds: event.tagIds ?? const [],
        searchQuery: event.query ?? '',
        sortType: event.sortBy ?? SortType.relevance,
        currentWorkPage: 1,
        hasMoreWorks: workResults.currentPage < workResults.totalPages,
        currentStencilPage: 0,
        hasMoreStencils: false,
        popularTags: state.maybeMap(
          loaded: (state) => state.popularTags,
          orElse: () => const [],
        ),
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to search works: $e'));
    }
  }

  Future<void> _mapSearchStencilsToState(
    InspirationSearchEventSearchStencils event,
    Emitter<InspirationSearchState> emit,
  ) async {
    try {
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      final queryParams = StencilSearchQueryDto(
        query: event.query,
        tagIds: event.tagIds,
        sortBy: event.sortBy?.name ?? 'relevance',
        page: 1,
        limit: 10,
      );
      
      final stencilResults = await _stencilService.searchStencils(queryParams, session.accessToken);
      
      emit(InspirationSearchState.loaded(
        works: const [],
        stencils: stencilResults.items,
        contentType: ContentType.stencils,
        selectedTagIds: event.tagIds ?? const [],
        searchQuery: event.query ?? '',
        sortType: event.sortBy ?? SortType.relevance,
        currentWorkPage: 0,
        hasMoreWorks: false,
        currentStencilPage: 1,
        hasMoreStencils: stencilResults.currentPage < stencilResults.totalPages,
        popularTags: state.maybeMap(
          loaded: (state) => state.popularTags,
          orElse: () => const [],
        ),
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to search stencils: $e'));
    }
  }

  Future<void> _mapSearchBothToState(
    InspirationSearchEventSearchBoth event,
    Emitter<InspirationSearchState> emit,
  ) async {
    try {
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      final workParams = WorkSearchQueryDto(
        query: event.query,
        tagIds: event.tagIds,
        sortBy: event.sortBy?.name ?? 'relevance',
        page: 1,
        limit: 5,
      );
      
      final stencilParams = StencilSearchQueryDto(
        query: event.query,
        tagIds: event.tagIds,
        sortBy: event.sortBy?.name ?? 'relevance',
        page: 1,
        limit: 5,
      );
      
      final workResults = await _workService.searchWorks(workParams, session.accessToken);
      final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
      
      emit(InspirationSearchState.loaded(
        works: workResults.items,
        stencils: stencilResults.items,
        contentType: ContentType.both,
        selectedTagIds: event.tagIds ?? const [],
        searchQuery: event.query ?? '',
        sortType: event.sortBy ?? SortType.relevance,
        currentWorkPage: 1,
        hasMoreWorks: workResults.currentPage < workResults.totalPages,
        currentStencilPage: 1,
        hasMoreStencils: stencilResults.currentPage < stencilResults.totalPages,
        popularTags: state.maybeMap(
          loaded: (state) => state.popularTags,
          orElse: () => const [],
        ),
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to search content: $e'));
    }
  }

  Future<void> _mapLoadMoreWorksToState(
    InspirationSearchEventLoadMoreWorks event,
    Emitter<InspirationSearchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      final nextPage = currentState.currentWorkPage + 1;
      
      final queryParams = WorkSearchQueryDto(
        query: currentState.searchQuery,
        tagIds: currentState.selectedTagIds,
        sortBy: currentState.sortType.name,
        page: nextPage,
        limit: 10,
      );
      
      final workResults = await _workService.searchWorks(queryParams, session.accessToken);
      
      emit(currentState.copyWith(
        works: [...currentState.works, ...workResults.items],
        currentWorkPage: nextPage,
        hasMoreWorks: workResults.currentPage < workResults.totalPages,
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to load more works: $e'));
    }
  }

  Future<void> _mapLoadMoreStencilsToState(
    InspirationSearchEventLoadMoreStencils event,
    Emitter<InspirationSearchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      final nextPage = currentState.currentStencilPage + 1;
      
      final queryParams = StencilSearchQueryDto(
        query: currentState.searchQuery,
        tagIds: currentState.selectedTagIds,
        sortBy: currentState.sortType.name,
        page: nextPage,
        limit: 10,
      );
      
      final stencilResults = await _stencilService.searchStencils(queryParams, session.accessToken);
      
      emit(currentState.copyWith(
        stencils: [...currentState.stencils, ...stencilResults.items],
        currentStencilPage: nextPage,
        hasMoreStencils: stencilResults.currentPage < stencilResults.totalPages,
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to load more stencils: $e'));
    }
  }

  Future<void> _mapChangeContentTypeToState(
    InspirationSearchEventChangeContentType event,
    Emitter<InspirationSearchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    if (event.contentType != currentState.contentType) {
      try {
        emit(const InspirationSearchState.loading());
        
        final session = await _sessionService.getActiveSession();
        if (session == null) {
          emit(const InspirationSearchState.error(message: 'No active session found'));
          return;
        }
        
        switch (event.contentType) {
          case ContentType.works:
            if (currentState.works.isEmpty) {
              final workParams = WorkSearchQueryDto(
                query: currentState.searchQuery,
                tagIds: currentState.selectedTagIds,
                sortBy: currentState.sortType.name,
                page: 1,
                limit: 10,
              );
              
              final workResults = await _workService.searchWorks(workParams, session.accessToken);
              
              emit(currentState.copyWith(
                contentType: ContentType.works,
                works: workResults.items,
                currentWorkPage: 1,
                hasMoreWorks: workResults.currentPage < workResults.totalPages,
              ));
            } else {
              emit(currentState.copyWith(contentType: ContentType.works));
            }
            break;
            
          case ContentType.stencils:
            if (currentState.stencils.isEmpty) {
              final stencilParams = StencilSearchQueryDto(
                query: currentState.searchQuery,
                tagIds: currentState.selectedTagIds,
                sortBy: currentState.sortType.name,
                page: 1,
                limit: 10,
              );
              
              final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
              
              emit(currentState.copyWith(
                contentType: ContentType.stencils,
                stencils: stencilResults.items,
                currentStencilPage: 1,
                hasMoreStencils: stencilResults.currentPage < stencilResults.totalPages,
              ));
            } else {
              emit(currentState.copyWith(contentType: ContentType.stencils));
            }
            break;
            
          case ContentType.both:
            // If either works or stencils are empty, fetch those
            if (currentState.works.isEmpty || currentState.stencils.isEmpty) {
              List<WorkWithRelevanceDto> works = currentState.works;
              List<StencilWithRelevanceDto> stencils = currentState.stencils;
              
              if (currentState.works.isEmpty) {
                final workParams = WorkSearchQueryDto(
                  query: currentState.searchQuery,
                  tagIds: currentState.selectedTagIds,
                  sortBy: currentState.sortType.name,
                  page: 1,
                  limit: 5,
                );
                
                final workResults = await _workService.searchWorks(workParams, session.accessToken);
                works = workResults.items;
              }
              
              if (currentState.stencils.isEmpty) {
                final stencilParams = StencilSearchQueryDto(
                  query: currentState.searchQuery,
                  tagIds: currentState.selectedTagIds,
                  sortBy: currentState.sortType.name,
                  page: 1,
                  limit: 5,
                );
                
                final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
                stencils = stencilResults.items;
              }
              
              emit(currentState.copyWith(
                contentType: ContentType.both,
                works: works,
                stencils: stencils,
                currentWorkPage: works.isEmpty ? 0 : 1,
                currentStencilPage: stencils.isEmpty ? 0 : 1,
              ));
            } else {
              emit(currentState.copyWith(contentType: ContentType.both));
            }
            break;
        }
      } catch (e) {
        emit(InspirationSearchState.error(message: 'Failed to change content type: $e'));
      }
    }
  }

  Future<void> _mapChangeSortTypeToState(
    InspirationSearchEventChangeSortType event,
    Emitter<InspirationSearchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    if (event.sortType != currentState.sortType) {
      try {
        emit(const InspirationSearchState.loading());
        
        final session = await _sessionService.getActiveSession();
        if (session == null) {
          emit(const InspirationSearchState.error(message: 'No active session found'));
          return;
        }
        
        List<WorkWithRelevanceDto> works = const [];
        List<StencilWithRelevanceDto> stencils = const [];
        int currentWorkPage = 0;
        int currentStencilPage = 0;
        bool hasMoreWorks = false;
        bool hasMoreStencils = false;
        
        switch (currentState.contentType) {
          case ContentType.works:
            final workParams = WorkSearchQueryDto(
              query: currentState.searchQuery,
              tagIds: currentState.selectedTagIds,
              sortBy: event.sortType.name,
              page: 1,
              limit: 10,
            );
            
            final workResults = await _workService.searchWorks(workParams, session.accessToken);
            
            works = workResults.items;
            currentWorkPage = 1;
            hasMoreWorks = workResults.currentPage < workResults.totalPages;
            break;
            
          case ContentType.stencils:
            final stencilParams = StencilSearchQueryDto(
              query: currentState.searchQuery,
              tagIds: currentState.selectedTagIds,
              sortBy: event.sortType.name,
              page: 1,
              limit: 10,
            );
            
            final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
            
            stencils = stencilResults.items;
            currentStencilPage = 1;
            hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
            break;
            
          case ContentType.both:
            final workParams = WorkSearchQueryDto(
              query: currentState.searchQuery,
              tagIds: currentState.selectedTagIds,
              sortBy: event.sortType.name,
              page: 1,
              limit: 5,
            );
            
            final stencilParams = StencilSearchQueryDto(
              query: currentState.searchQuery,
              tagIds: currentState.selectedTagIds,
              sortBy: event.sortType.name,
              page: 1,
              limit: 5,
            );
            
            final workResults = await _workService.searchWorks(workParams, session.accessToken);
            final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
            
            works = workResults.items;
            stencils = stencilResults.items;
            currentWorkPage = 1;
            currentStencilPage = 1;
            hasMoreWorks = workResults.currentPage < workResults.totalPages;
            hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
            break;
        }
        
        emit(InspirationSearchState.loaded(
          works: works,
          stencils: stencils,
          contentType: currentState.contentType,
          selectedTagIds: currentState.selectedTagIds,
          searchQuery: currentState.searchQuery,
          sortType: event.sortType,
          currentWorkPage: currentWorkPage,
          hasMoreWorks: hasMoreWorks,
          currentStencilPage: currentStencilPage,
          hasMoreStencils: hasMoreStencils,
          popularTags: currentState.popularTags,
        ));
      } catch (e) {
        emit(InspirationSearchState.error(message: 'Failed to change sort type: $e'));
      }
    }
  }

  Future<void> _mapGetPopularTagsToState(
    InspirationSearchEventGetPopularTags event,
    Emitter<InspirationSearchState> emit,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      // Prioritize stencil tags, but fall back to work tags if needed
      List<TagSuggestionResponseDto> popularTags;
      try {
        popularTags = await _stencilService.getPopularTags(20, session.accessToken);
      } catch (_) {
        popularTags = await _workService.getPopularTags(20, session.accessToken);
      }
      
      if (state is InspirationSearchState_Loaded) {
        emit((state as InspirationSearchState_Loaded).copyWith(popularTags: popularTags));
      } else if (state is InspirationSearchState_Initial) {
        emit(InspirationSearchState.loaded(
          works: const [],
          stencils: const [],
          contentType: ContentType.both,
          selectedTagIds: const [],
          searchQuery: '',
          sortType: SortType.relevance,
          currentWorkPage: 0,
          hasMoreWorks: false,
          currentStencilPage: 0,
          hasMoreStencils: false,
          popularTags: popularTags,
        ));
      }
    } catch (e) {
      if (state is! InspirationSearchState_Loaded) {
        emit(InspirationSearchState.error(message: 'Failed to load popular tags: $e'));
      }
    }
  }

  Future<void> _mapFilterByTagsToState(
    InspirationSearchEventFilterByTags event,
    Emitter<InspirationSearchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    try {
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      List<WorkWithRelevanceDto> works = const [];
      List<StencilWithRelevanceDto> stencils = const [];
      int currentWorkPage = 0;
      int currentStencilPage = 0;
      bool hasMoreWorks = false;
      bool hasMoreStencils = false;
      
      switch (currentState.contentType) {
        case ContentType.works:
          final workParams = WorkSearchQueryDto(
            query: currentState.searchQuery,
            tagIds: event.tagIds,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 10,
          );
          
          final workResults = await _workService.searchWorks(workParams, session.accessToken);
          
          works = workResults.items;
          currentWorkPage = 1;
          hasMoreWorks = workResults.currentPage < workResults.totalPages;
          break;
          
        case ContentType.stencils:
          final stencilParams = StencilSearchQueryDto(
            query: currentState.searchQuery,
            tagIds: event.tagIds,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 10,
          );
          
          final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
          
          stencils = stencilResults.items;
          currentStencilPage = 1;
          hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          break;
          
        case ContentType.both:
          final workParams = WorkSearchQueryDto(
            query: currentState.searchQuery,
            tagIds: event.tagIds,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 5,
          );
          
          final stencilParams = StencilSearchQueryDto(
            query: currentState.searchQuery,
            tagIds: event.tagIds,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 5,
          );
          
          final workResults = await _workService.searchWorks(workParams, session.accessToken);
          final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
          
          works = workResults.items;
          stencils = stencilResults.items;
          currentWorkPage = 1;
          currentStencilPage = 1;
          hasMoreWorks = workResults.currentPage < workResults.totalPages;
          hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          break;
      }
      
      emit(InspirationSearchState.loaded(
        works: works,
        stencils: stencils,
        contentType: currentState.contentType,
        selectedTagIds: event.tagIds,
        searchQuery: currentState.searchQuery,
        sortType: currentState.sortType,
        currentWorkPage: currentWorkPage,
        hasMoreWorks: hasMoreWorks,
        currentStencilPage: currentStencilPage,
        hasMoreStencils: hasMoreStencils,
        popularTags: currentState.popularTags,
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to filter by tags: $e'));
    }
  }

  Future<void> _mapClearFiltersToState(
    InspirationSearchEventClearFilters event,
    Emitter<InspirationSearchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    try {
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      List<WorkWithRelevanceDto> works = const [];
      List<StencilWithRelevanceDto> stencils = const [];
      int currentWorkPage = 0;
      int currentStencilPage = 0;
      bool hasMoreWorks = false;
      bool hasMoreStencils = false;
      
      switch (currentState.contentType) {
        case ContentType.works:
          final workParams = WorkSearchQueryDto(
            query: currentState.searchQuery,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 10,
          );
          
          final workResults = await _workService.searchWorks(workParams, session.accessToken);
          
          works = workResults.items;
          currentWorkPage = 1;
          hasMoreWorks = workResults.currentPage < workResults.totalPages;
          break;
          
        case ContentType.stencils:
          final stencilParams = StencilSearchQueryDto(
            query: currentState.searchQuery,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 10,
          );
          
          final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
          
          stencils = stencilResults.items;
          currentStencilPage = 1;
          hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          break;
          
        case ContentType.both:
          final workParams = WorkSearchQueryDto(
            query: currentState.searchQuery,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 5,
          );
          
          final stencilParams = StencilSearchQueryDto(
            query: currentState.searchQuery,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 5,
          );
          
          final workResults = await _workService.searchWorks(workParams, session.accessToken);
          final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
          
          works = workResults.items;
          stencils = stencilResults.items;
          currentWorkPage = 1;
          currentStencilPage = 1;
          hasMoreWorks = workResults.currentPage < workResults.totalPages;
          hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          break;
      }
      
      emit(InspirationSearchState.loaded(
        works: works,
        stencils: stencils,
        contentType: currentState.contentType,
        selectedTagIds: const [],
        searchQuery: currentState.searchQuery,
        sortType: currentState.sortType,
        currentWorkPage: currentWorkPage,
        hasMoreWorks: hasMoreWorks,
        currentStencilPage: currentStencilPage,
        hasMoreStencils: hasMoreStencils,
        popularTags: currentState.popularTags,
      ));
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to clear filters: $e'));
    }
  }

  Future<void> _mapResetToState(
    InspirationSearchEventReset event,
    Emitter<InspirationSearchState> emit,
  ) async {
    try {
      emit(const InspirationSearchState.initial());
      
      // If we have popular tags in the previous state, preserve them
      final popularTags = state.maybeMap(
        loaded: (state) => state.popularTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      if (popularTags.isNotEmpty) {
        emit(InspirationSearchState.loaded(
          works: const [],
          stencils: const [],
          contentType: ContentType.both,
          selectedTagIds: const [],
          searchQuery: '',
          sortType: SortType.relevance,
          currentWorkPage: 0,
          hasMoreWorks: false,
          currentStencilPage: 0,
          hasMoreStencils: false,
          popularTags: popularTags,
        ));
      }
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to reset state: $e'));
    }
  }
}