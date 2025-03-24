import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_search_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_search_dto.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
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
      searchTags: (e) => _mapSearchTagsToState(e, emit),
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
      
      // Preservar las etiquetas existentes usando maybeMap
      final popularTags = state.maybeMap(
        loaded: (loadedState) => loadedState.popularTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      final searchedTags = state.maybeMap(
        loaded: (loadedState) => loadedState.searchedTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
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
        popularTags: popularTags,
        searchedTags: searchedTags,
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
      
      // Preservar las etiquetas existentes usando maybeMap
      final popularTags = state.maybeMap(
        loaded: (loadedState) => loadedState.popularTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      final searchedTags = state.maybeMap(
        loaded: (loadedState) => loadedState.searchedTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
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
        popularTags: popularTags,
        searchedTags: searchedTags,
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
      
      // Debug print
      print('Searching for both works and stencils with query: ${event.query}');
      print('Sort type: ${event.sortBy?.name ?? 'relevance'}');
      
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
      
      // Obtener resultados o usar listas vacías si hay errores
      var works = <Work>[];
      var stencils = <Stencil>[];
      var hasMoreWorks = false;
      var hasMoreStencils = false;
      var currentWorkPage = 0;
      var currentStencilPage = 0;
      var workError = false;
      var stencilError = false;
      
      // Use Future.wait to run both searches in parallel for better performance
      await Future.wait([
        // Search for works
        Future(() async {
          try {
            final workResults = await _workService.searchWorks(workParams, session.accessToken);
            works = workResults.items;
            hasMoreWorks = workResults.currentPage < workResults.totalPages;
            currentWorkPage = workResults.currentPage;
            print('Found ${works.length} works');
          } catch (e) {
            workError = true;
            print('Error searching works: $e');
          }
        }),
        
        // Search for stencils
        Future(() async {
          try {
            final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
            stencils = stencilResults.items;
            hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
            currentStencilPage = stencilResults.currentPage;
            print('Found ${stencils.length} stencils');
          } catch (e) {
            stencilError = true;
            print('Error searching stencils: $e');
          }
        }),
      ]);
      
      // If both searches failed, show an error
      if (workError && stencilError) {
        emit(const InspirationSearchState.error(message: 'Error al buscar tatuajes y stencils'));
        return;
      }
      
      // We have at least one successful result, proceed with what we have
      // Preservar popularTags y searchedTags del estado anterior
      final popularTags = state.maybeMap(
        loaded: (loadedState) => loadedState.popularTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      final searchedTags = state.maybeMap(
        loaded: (loadedState) => loadedState.searchedTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      emit(InspirationSearchState.loaded(
        works: works,
        stencils: stencils,
        contentType: ContentType.both,
        selectedTagIds: event.tagIds ?? const [],
        searchQuery: event.query ?? '',
        sortType: event.sortBy ?? SortType.relevance,
        currentWorkPage: currentWorkPage,
        hasMoreWorks: hasMoreWorks,
        currentStencilPage: currentStencilPage,
        hasMoreStencils: hasMoreStencils,
        popularTags: popularTags,
        searchedTags: searchedTags,
      ));
    } catch (e) {
      print('Error in searchBoth: $e');
      // No fallar completamente, emitir un estado con resultados vacíos pero preservar tags
      final popularTags = state.maybeMap(
        loaded: (loadedState) => loadedState.popularTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      final searchedTags = state.maybeMap(
        loaded: (loadedState) => loadedState.searchedTags,
        orElse: () => const <TagSuggestionResponseDto>[],
      );
      
      emit(InspirationSearchState.loaded(
        works: const [],
        stencils: const [],
        contentType: ContentType.both,
        selectedTagIds: event.tagIds ?? const [],
        searchQuery: event.query ?? '',
        sortType: event.sortBy ?? SortType.relevance,
        currentWorkPage: 1,
        hasMoreWorks: false,
        currentStencilPage: 1,
        hasMoreStencils: false,
        popularTags: popularTags,
        searchedTags: searchedTags,
      ));
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
        // First, immediately update the contentType without waiting for API results
        // This gives immediate feedback to the user while we fetch new data if needed
        emit(currentState.copyWith(contentType: event.contentType));
        
        final session = await _sessionService.getActiveSession();
        if (session == null) {
          emit(const InspirationSearchState.error(message: 'No active session found'));
          return;
        }
        
        // If switching to a content type that has no data yet, fetch it
        switch (event.contentType) {
          case ContentType.works:
            if (currentState.works.isEmpty) {
              // Show loading only when we actually need to fetch data
              emit(const InspirationSearchState.loading());
              
              try {
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
              } catch (e) {
                print('Error fetching works after content type change: $e');
                // If error, return to previous state but with new content type
                emit(currentState.copyWith(contentType: ContentType.works));
              }
            }
            break;
            
          case ContentType.stencils:
            if (currentState.stencils.isEmpty) {
              // Show loading only when we actually need to fetch data
              emit(const InspirationSearchState.loading());
              
              try {
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
              } catch (e) {
                print('Error fetching stencils after content type change: $e');
                // If error, return to previous state but with new content type
                emit(currentState.copyWith(contentType: ContentType.stencils));
              }
            }
            break;
            
          case ContentType.both:
            // Variables to track what we need to fetch
            bool needToFetchWorks = currentState.works.isEmpty;
            bool needToFetchStencils = currentState.stencils.isEmpty;
            
            if (needToFetchWorks || needToFetchStencils) {
              // Show loading only if we need to fetch something
              emit(const InspirationSearchState.loading());
              
              List<Work> works = currentState.works;
              List<Stencil> stencils = currentState.stencils;
              int currentWorkPage = currentState.currentWorkPage;
              int currentStencilPage = currentState.currentStencilPage;
              bool hasMoreWorks = currentState.hasMoreWorks;
              bool hasMoreStencils = currentState.hasMoreStencils;
              
              try {
                // Use Future.wait to run both fetches in parallel if needed
                final futures = <Future>[];
                
                if (needToFetchWorks) {
                  final workParams = WorkSearchQueryDto(
                    query: currentState.searchQuery,
                    tagIds: currentState.selectedTagIds,
                    sortBy: currentState.sortType.name,
                    page: 1,
                    limit: 5,
                  );
                  
                  futures.add(
                    _workService.searchWorks(workParams, session.accessToken).then((result) {
                      works = result.items;
                      currentWorkPage = 1;
                      hasMoreWorks = result.currentPage < result.totalPages;
                    }).catchError((e) {
                      print('Error fetching works for both type: $e');
                      // Keep existing values on error
                    }),
                  );
                }
                
                if (needToFetchStencils) {
                  final stencilParams = StencilSearchQueryDto(
                    query: currentState.searchQuery,
                    tagIds: currentState.selectedTagIds,
                    sortBy: currentState.sortType.name,
                    page: 1,
                    limit: 5,
                  );
                  
                  futures.add(
                    _stencilService.searchStencils(stencilParams, session.accessToken).then((result) {
                      stencils = result.items;
                      currentStencilPage = 1;
                      hasMoreStencils = result.currentPage < result.totalPages;
                    }).catchError((e) {
                      print('Error fetching stencils for both type: $e');
                      // Keep existing values on error
                    }),
                  );
                }
                
                // Wait for all futures to complete
                if (futures.isNotEmpty) {
                  await Future.wait(futures);
                }
                
                // Emit new state with combined results
                emit(currentState.copyWith(
                  contentType: ContentType.both,
                  works: works,
                  stencils: stencils,
                  currentWorkPage: currentWorkPage,
                  hasMoreWorks: hasMoreWorks,
                  currentStencilPage: currentStencilPage,
                  hasMoreStencils: hasMoreStencils,
                ));
              } catch (e) {
                print('Error fetching data for both content type: $e');
                // If error, return to previous state but with new content type
                emit(currentState.copyWith(contentType: ContentType.both));
              }
            }
            break;
        }
      } catch (e) {
        print('Error in changeContentType: $e');
        // Don't emit error state, just go back to previous state
        emit(currentState);
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
        
        List<Work> works = const [];
        List<Stencil> stencils = const [];
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
      
      // Create a map to track unique tags by ID
      final Map<int, TagSuggestionResponseDto> tagMap = {};
      
      try {
        // Get popular tags from stencil service
        final stencilTags = await _stencilService.getPopularTags(20, session.accessToken);
        
        // Add stencil tags to the map
        for (final tag in stencilTags) {
          tagMap[tag.id] = tag;
        }
      } catch (e) {
        print('Error getting stencil popular tags: $e');
      }
      
      try {
        // Get popular tags from work service
        final workTags = await _workService.getPopularTags(20, session.accessToken);
        
        // Add work tags to the map
        for (final tag in workTags) {
          tagMap[tag.id] = tag;
        }
      } catch (e) {
        print('Error getting work popular tags: $e');
      }
      
      // Convert map values to list
      final List<TagSuggestionResponseDto> popularTags = tagMap.values.toList();
      
      // Sort by popularity if available, otherwise alphabetically
      popularTags.sort((a, b) => a.name.compareTo(b.name));
      
      // Uso correcto del patrón Freezed
      state.maybeMap(
        loaded: (loadedState) {
          // Si ya estamos en estado loaded, solo actualizar popularTags
          emit(loadedState.copyWith(popularTags: popularTags));
        },
        initial: (_) {
          // Si estamos en estado initial, crear un nuevo estado loaded básico
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
        },
        orElse: () {
          // No cambiar el estado en otros casos (loading, error)
        },
      );
    } catch (e) {
      if (state is! InspirationSearchState_Loaded) {
        emit(InspirationSearchState.error(message: 'Failed to load popular tags: $e'));
      }
    }
  }

  Future<void> _mapSearchTagsToState(
    InspirationSearchEventSearchTags event,
    Emitter<InspirationSearchState> emit,
  ) async {
    if (event.query.isEmpty) return;
    
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      // Create sets to track unique tags by ID to avoid duplicates when merging
      final Map<int, TagSuggestionResponseDto> tagMap = {};
      
      try {
        // Get tag suggestions from work service
        final workTags = await _workService.getTagSuggestions(
          event.query,
          10, // Limit to 10 suggestions
          session.accessToken,
        );
        
        // Add work tags to the map
        for (final tag in workTags) {
          tagMap[tag.id] = tag;
        }
      } catch (e) {
        print('Error getting work tags: $e');
      }
      
      try {
        // Get tag suggestions from stencil service
        final stencilTags = await _stencilService.getTagSuggestions(
          event.query,
          10, // Limit to 10 suggestions
          session.accessToken,
        );
        
        // Add stencil tags to the map
        for (final tag in stencilTags) {
          tagMap[tag.id] = tag;
        }
      } catch (e) {
        print('Error getting stencil tags: $e');
      }
      
      // Convert map values to list
      final List<TagSuggestionResponseDto> searchedTags = tagMap.values.toList();
      
      // Sort by relevance (for now just alphabetically)
      searchedTags.sort((a, b) => a.name.compareTo(b.name));
      
      // Uso correcto del patrón Freezed: actualizar el estado usando maybeMap 
      // para preservar los valores actuales
      state.maybeMap(
        loaded: (loadedState) {
          // Si ya estamos en un estado loaded, actualizar solo los searchedTags
          emit(loadedState.copyWith(searchedTags: searchedTags));
        },
        orElse: () {
          // Si estamos en otro estado (initial, loading, error), crear un estado loaded básico
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
            popularTags: state.maybeMap(
              loaded: (s) => s.popularTags,
              orElse: () => const [],
            ),
            searchedTags: searchedTags,
          ));
        },
      );
    } catch (e) {
      print('Error searching tags: $e');
      // No cambiar el estado en caso de error, solo registrarlo
    }
  }

  Future<void> _mapFilterByTagsToState(
    InspirationSearchEventFilterByTags event,
    Emitter<InspirationSearchState> emit,
  ) async {
    // Uso correcto del patrón Freezed
    final currentState = state;
    if (currentState is! InspirationSearchState_Loaded) return;
    
    try {
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      // Merge with existing selectedTagIds to avoid replacing them
      // Create a Set to ensure uniqueness
      final Set<int> mergedTagIds = Set<int>.from(currentState.selectedTagIds);
      
      // If any of the new tag IDs are already selected, remove them (toggle behavior)
      for (final tagId in event.tagIds) {
        if (mergedTagIds.contains(tagId)) {
          mergedTagIds.remove(tagId);
        } else {
          mergedTagIds.add(tagId);
        }
      }
      
      // Convert set back to list
      final List<int> finalTagIds = mergedTagIds.toList();
      
      List<Work> works = const [];
      List<Stencil> stencils = const [];
      int currentWorkPage = 0;
      int currentStencilPage = 0;
      bool hasMoreWorks = false;
      bool hasMoreStencils = false;
      
      switch (currentState.contentType) {
        case ContentType.works:
          final workParams = WorkSearchQueryDto(
            query: currentState.searchQuery,
            tagIds: finalTagIds,
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
            tagIds: finalTagIds,
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
            tagIds: finalTagIds,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 5,
          );
          
          final stencilParams = StencilSearchQueryDto(
            query: currentState.searchQuery,
            tagIds: finalTagIds,
            sortBy: currentState.sortType.name,
            page: 1,
            limit: 5,
          );

          // Usar try-catch para manejar fallos parciales
          try {
            final workResults = await _workService.searchWorks(workParams, session.accessToken);
            works = workResults.items;
            currentWorkPage = 1;
            hasMoreWorks = workResults.currentPage < workResults.totalPages;
          } catch (e) {
            print('Error searching works by tags: $e');
            works = [];
            currentWorkPage = 0;
            hasMoreWorks = false;
          }

          try {
            final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
            stencils = stencilResults.items;
            currentStencilPage = 1;
            hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          } catch (e) {
            print('Error searching stencils by tags: $e');
            stencils = [];
            currentStencilPage = 0;
            hasMoreStencils = false;
          }
          break;
      }
      
      emit(InspirationSearchState.loaded(
        works: works,
        stencils: stencils,
        contentType: currentState.contentType,
        selectedTagIds: finalTagIds,
        searchQuery: currentState.searchQuery,
        sortType: currentState.sortType,
        currentWorkPage: currentWorkPage,
        hasMoreWorks: hasMoreWorks,
        currentStencilPage: currentStencilPage,
        hasMoreStencils: hasMoreStencils,
        popularTags: currentState.popularTags,
        searchedTags: currentState.searchedTags,
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
      // Primero emitimos el estado de carga
      emit(const InspirationSearchState.loading());
      
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const InspirationSearchState.error(message: 'No active session found'));
        return;
      }
      
      // Variables para almacenar resultados
      List<Work> works = [];
      List<Stencil> stencils = [];
      int currentWorkPage = 0;
      int currentStencilPage = 0;
      bool hasMoreWorks = false;
      bool hasMoreStencils = false;
      
      // Crear parámetros para las consultas
      final workParams = WorkSearchQueryDto(
        query: currentState.searchQuery,
        sortBy: currentState.sortType.name,
        page: 1,
        limit: currentState.contentType == ContentType.both ? 5 : 10,
      );
      
      final stencilParams = StencilSearchQueryDto(
        query: currentState.searchQuery,
        sortBy: currentState.sortType.name,
        page: 1,
        limit: currentState.contentType == ContentType.both ? 5 : 10,
      );
      
      // Realizar las consultas según el tipo de contenido
      switch (currentState.contentType) {
        case ContentType.works:
          try {
            final workResults = await _workService.searchWorks(workParams, session.accessToken);
            works = workResults.items;
            currentWorkPage = 1;
            hasMoreWorks = workResults.currentPage < workResults.totalPages;
          } catch (e) {
            print('Error clearing work filters: $e');
          }
          break;
          
        case ContentType.stencils:
          try {
            final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
            stencils = stencilResults.items;
            currentStencilPage = 1;
            hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          } catch (e) {
            print('Error clearing stencil filters: $e');
          }
          break;
          
        case ContentType.both:
          try {
            // En lugar de usar Future.wait, hacemos las llamadas de manera secuencial
            // para evitar problemas con operaciones asíncronas anidadas
            final workResults = await _workService.searchWorks(workParams, session.accessToken);
            works = workResults.items;
            currentWorkPage = 1;
            hasMoreWorks = workResults.currentPage < workResults.totalPages;
            
            final stencilResults = await _stencilService.searchStencils(stencilParams, session.accessToken);
            stencils = stencilResults.items;
            currentStencilPage = 1;
            hasMoreStencils = stencilResults.currentPage < stencilResults.totalPages;
          } catch (e) {
            print('Error clearing filters: $e');
          }
          break;
      }
      
      // Ahora que todas las operaciones asíncronas han terminado, emitimos el estado final
      if (!emit.isDone) {
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
          searchedTags: currentState.searchedTags,
        ));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(InspirationSearchState.error(message: 'Failed to clear filters: $e'));
      }
    }
  }

  Future<void> _mapResetToState(
    InspirationSearchEventReset event,
    Emitter<InspirationSearchState> emit,
  ) async {
    try {
      emit(const InspirationSearchState.initial());
      
      // Si tenemos etiquetas populares en el estado anterior, preservarlas
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
        
        // Cargar resultados iniciales
        add(const InspirationSearchEvent.searchBoth(
          query: '',
          sortBy: SortType.relevance,
        ));
      }
    } catch (e) {
      emit(InspirationSearchState.error(message: 'Failed to reset state: $e'));
    }
  }
}