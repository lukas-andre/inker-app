import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/empty_state.dart';
import 'package:inker_studio/ui/shared/error_state.dart';
import 'package:inker_studio/ui/shared/loading_indicator.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:inker_studio/ui/immersive_viewer/vertical_immersive_viewer_page.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/blocs/analytics/analytics_bloc.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/ui/tattoo_generator/tattoo_generator_page.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'dart:async';
import 'package:collection/collection.dart';

class InspirationSearchPage extends StatefulWidget {
  final bool hideHeader;

  const InspirationSearchPage({
    super.key,
    this.hideHeader = false,
  });

  @override
  _InspirationSearchPageState createState() => _InspirationSearchPageState();
}

class _InspirationSearchPageState extends State<InspirationSearchPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  bool _isSearchExpanded = false;
  final _imageCache = CachedImageManager();
  Timer? _debounce;
  List<TagSuggestionResponseDto> _selectedTagsLocal = [];
  // Set para mantener los IDs de tags que el usuario ha ocultado temporalmente
  final Set<String> _hiddenTagIds = {};

  @override
  void initState() {
    super.initState();

    // Setup animation controller for search bar
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Load popular tags when the page is first shown
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Cargar tags populares
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.getPopularTags(),
          );

      // Cargar resultados iniciales (tanto tatuajes como stencils)
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.searchBoth(
              query: '',
              sortBy: SortType.relevance,
            ),
          );
    });

    // Add scroll listener for pagination
    _scrollController.addListener(_onScroll);

    // Add listener for unified search with debounce
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _animationController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    // Cuando el usuario escribe, limpiamos la lista de tags ocultos
    if (_searchController.text.trim().isNotEmpty) {
      setState(() {
        _hiddenTagIds.clear();
      });
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      final query = _searchController.text.trim();
      if (query.isNotEmpty) {
        // Search for tags that match the query
        context.read<InspirationSearchBloc>().add(
              InspirationSearchEvent.searchTags(query: query),
            );
      }
    });
  }

  void _onScroll() {
    final state = context.read<InspirationSearchBloc>().state;
    state.whenOrNull(
      loaded: (works,
          stencils,
          contentType,
          selectedTagIds,
          searchQuery,
          sortType,
          currentWorkPage,
          hasMoreWorks,
          currentStencilPage,
          hasMoreStencils,
          popularTags,
          searchedTags,
          isLoadingMoreWorks,
          isLoadingMoreStencils) {
        if (_scrollController.position.extentAfter < 300) {
          if (contentType == ContentType.works &&
              hasMoreWorks &&
              !isLoadingMoreWorks) {
            context.read<InspirationSearchBloc>().add(
                  const InspirationSearchEvent.loadMoreWorks(),
                );

            // Precargar las próximas imágenes que estarán visibles
            if (works.isNotEmpty) {
              final int totalWorks = works.length;
              if (totalWorks > 4) {
                // Precargar las últimas 4 imágenes (que probablemente estarán visibles pronto)
                final List<String> imageUrls = [];
                final start = totalWorks > 8
                    ? totalWorks - 4
                    : totalWorks - (totalWorks ~/ 2);
                for (int i = start; i < totalWorks; i++) {
                  imageUrls.add(works[i].imageUrl);
                }
                if (imageUrls.isNotEmpty) {
                  _imageCache.preloadImages(imageUrls, context);
                }
              }
            }
          } else if (contentType == ContentType.stencils &&
              hasMoreStencils &&
              !isLoadingMoreStencils) {
            context.read<InspirationSearchBloc>().add(
                  const InspirationSearchEvent.loadMoreStencils(),
                );

            // Precargar las próximas imágenes que estarán visibles
            if (stencils.isNotEmpty) {
              final int totalStencils = stencils.length;
              if (totalStencils > 4) {
                // Precargar las últimas 4 imágenes (que probablemente estarán visibles pronto)
                final List<String> imageUrls = [];
                final start = totalStencils > 8
                    ? totalStencils - 4
                    : totalStencils - (totalStencils ~/ 2);
                for (int i = start; i < totalStencils; i++) {
                  imageUrls.add(stencils[i].imageUrl);
                }
                if (imageUrls.isNotEmpty) {
                  _imageCache.preloadImages(imageUrls, context);
                }
              }
            }
          } else if (contentType == ContentType.both) {
            if (hasMoreWorks && !isLoadingMoreWorks) {
              context.read<InspirationSearchBloc>().add(
                    const InspirationSearchEvent.loadMoreWorks(),
                  );
            }
            if (hasMoreStencils && !isLoadingMoreStencils) {
              context.read<InspirationSearchBloc>().add(
                    const InspirationSearchEvent.loadMoreStencils(),
                  );
            }

            // Precargar imágenes cuando se cargan más resultados en modo "ambos"
            final List<String> imageUrls = [];

            // Precargar trabajos
            if (works.isNotEmpty) {
              final int totalWorks = works.length;
              if (totalWorks > 4) {
                final start = totalWorks > 8
                    ? totalWorks - 4
                    : totalWorks - (totalWorks ~/ 2);
                for (int i = start; i < totalWorks; i++) {
                  imageUrls.add(works[i].imageUrl);
                }
              }
            }

            // Precargar stencils
            if (stencils.isNotEmpty) {
              final int totalStencils = stencils.length;
              if (totalStencils > 4) {
                final start = totalStencils > 8
                    ? totalStencils - 4
                    : totalStencils - (totalStencils ~/ 2);
                for (int i = start; i < totalStencils; i++) {
                  imageUrls.add(stencils[i].imageUrl);
                }
              }
            }

            // Precargar todas las imágenes recopiladas
            if (imageUrls.isNotEmpty) {
              _imageCache.preloadImages(imageUrls, context);
            }
          }
        }
      },
    );
  }

  void _addSelectedTag(TagSuggestionResponseDto tag) {
    if (!_selectedTagsLocal.any((t) => t.id == tag.id)) {
      setState(() {
        _selectedTagsLocal.add(tag);
        // Clear the search text after adding a tag
        _searchController.clear();
      });

      // Update search with the selected tags
      _applyTagFilters();
    }
  }

  void _removeSelectedTag(TagSuggestionResponseDto tag) {
    setState(() {
      _selectedTagsLocal.removeWhere((t) => t.id == tag.id);
    });

    // Update search with the remaining tags
    _applyTagFilters();
  }

  void _applyTagFilters() {
    final tagIds = _selectedTagsLocal.map((tag) => tag.id).toList();

    if (_selectedTagsLocal.isNotEmpty) {
      // Apply filters with the selected tags
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.filterByTags(
              tagIds: tagIds,
            ),
          );
    } else {
      // If no tags selected, clear filters
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.clearFilters(),
          );
    }
  }

  void _searchInspiration() {
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      // Hide keyboard and show loading indicator
      FocusScope.of(context).unfocus();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: Colors.white)),
              const SizedBox(width: 16),
              Text('${S.of(context).searching} "$query"...'),
            ],
          ),
          backgroundColor: Theme.of(context).colorScheme.error,
          duration: const Duration(seconds: 2),
        ),
      );

      // Execute search
      print('Ejecutando búsqueda: $query');
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.searchBoth(
              query: query,
              tagIds: _selectedTagsLocal.map((tag) => tag.id).toList(),
              sortBy: SortType.relevance,
            ),
          );

      // NO cerramos la barra de búsqueda para mantener visible lo que se está buscando
      // setState(() {
      //   _isSearchExpanded = false;
      // });
      // _animationController.reverse();
    } else if (_selectedTagsLocal.isNotEmpty) {
      // If there's no query but we have tags, apply the tag filters
      _applyTagFilters();

      // Close search bar only if we're searching just by tags
      setState(() {
        _isSearchExpanded = false;
      });
      _animationController.reverse();
    } else {
      // Show empty query message if no query and no tags
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).enterSearchTermOrSelectTags),
          backgroundColor: Colors.orange,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  // Método para limpiar todos los filtros
  void _clearAllFilters() {
    setState(() {
      _selectedTagsLocal = [];
      _searchController.clear();
    });

    // Ejecutar búsqueda sin filtros (ni tags, ni texto)
    context.read<InspirationSearchBloc>().add(
          const InspirationSearchEvent.searchBoth(
            query: '',
            sortBy: SortType.relevance,
          ),
        );
  }

  // Método para limpiar solo la búsqueda por texto, manteniendo los tags
  void _clearTextSearch() {
    setState(() {
      _searchController.clear();
    });

    // Si hay tags seleccionados, aplicar solo filtros de tags
    if (_selectedTagsLocal.isNotEmpty) {
      _applyTagFilters();
    } else {
      // Si no hay tags, buscar sin filtros
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.searchBoth(
              query: '',
              sortBy: SortType.relevance,
            ),
          );
    }
  }

  // Método para ocultar un tag temporalmente
  void _hideTag(TagSuggestionResponseDto tag) {
    setState(() {
      _hiddenTagIds.add(tag.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          if (!widget.hideHeader) _buildModernHeader(),
          // Search bar when expanded
          if (_isSearchExpanded) _buildSearchBar(),
          _buildFilterBar(),
          Expanded(
            child: BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
              builder: (context, state) {
                return state.when(
                  initial: () => _buildInitialView(),
                  loading: () => const Center(child: LoadingIndicator()),
                  loaded: (works,
                      stencils,
                      contentType,
                      selectedTagIds,
                      searchQuery,
                      sortType,
                      currentWorkPage,
                      hasMoreWorks,
                      currentStencilPage,
                      hasMoreStencils,
                      popularTags,
                      searchedTags,
                      isLoadingMoreWorks,
                      isLoadingMoreStencils) {
                    // Print debug info
                    print(
                        'InspirationSearchPage loaded state: contentType=$contentType, works=${works.length}, stencils=${stencils.length}');

                    final bool hasAnyResults =
                        works.isNotEmpty || stencils.isNotEmpty;

                    if (!hasAnyResults) {
                      return EmptyState(
                        icon: Icons.search_off,
                        title: S.of(context).noResultsFound,
                        message:
                            selectedTagIds.isNotEmpty || searchQuery.isNotEmpty
                                ? S.of(context).tryDifferentSearchOrFilters
                                : S.of(context).tryDifferentSearchOrFilters,
                        actionButton: selectedTagIds.isNotEmpty
                            ? ElevatedButton.icon(
                                onPressed: _clearAllFilters,
                                icon: const Icon(Icons.filter_alt_off),
                                label: Text(S.of(context).clearFilters),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.error,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 10.0,
                                  ),
                                ),
                              )
                            : null,
                      );
                    }

                    return _buildResultsView(
                      works: works,
                      stencils: stencils,
                      contentType: contentType,
                      selectedTagIds: selectedTagIds,
                      popularTags: popularTags,
                      searchedTags: searchedTags,
                      isLoadingMoreWorks: isLoadingMoreWorks,
                      isLoadingMoreStencils: isLoadingMoreStencils,
                    );
                  },
                  error: (message) => ErrorState(
                    message: message,
                    onRetry: () => context.read<InspirationSearchBloc>().add(
                          const InspirationSearchEvent.reset(),
                        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _isSearchExpanded
            ? Colors.white
            : Theme.of(context).colorScheme.error,
        onPressed: () {
          setState(() {
            _isSearchExpanded = !_isSearchExpanded;
          });
          if (_isSearchExpanded) {
            _animationController.forward();
          } else {
            _animationController.reverse();
            _searchController.clear();
          }
        },
        child: Icon(
          _isSearchExpanded ? Icons.close : Icons.search,
          color: _isSearchExpanded
              ? Theme.of(context).colorScheme.error
              : Colors.white,
        ),
      ),
    );
  }

  Widget _buildModernHeader() {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 50.0,
        bottom: 16.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Text(
                  S.of(context).inspiration,
                  style: TextStyleTheme.headline2.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                AnimatedOpacity(
                  opacity: _isSearchExpanded ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: _isSearchExpanded
                        ? () {
                            setState(() {
                              _isSearchExpanded = false;
                            });
                            _animationController.reverse();
                          }
                        : null,
                  ),
                ),
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: _isSearchExpanded ? 60 : 0,
              child: AnimatedOpacity(
                opacity: _isSearchExpanded ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 300),
                child: _isSearchExpanded
                    ? Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: _buildCompactSearchBar(),
                      )
                    : const SizedBox(),
              ),
            ),
            // Selected tags in header
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height:
                  _isSearchExpanded && _selectedTagsLocal.isNotEmpty ? 60 : 0,
              child: AnimatedOpacity(
                opacity: _isSearchExpanded && _selectedTagsLocal.isNotEmpty
                    ? 1.0
                    : 0.0,
                duration: const Duration(milliseconds: 300),
                child: _isSearchExpanded && _selectedTagsLocal.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: _buildSelectedTagsChips(),
                      )
                    : const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedTagsChips() {
    return SizedBox(
      height: 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _selectedTagsLocal.map((tag) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.error.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16.0),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.error),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tag.name,
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    GestureDetector(
                      onTap: () => _removeSelectedTag(tag),
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.error,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildCompactSearchBar() {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(color: Colors.white38, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: _searchController,
        style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
        decoration: InputDecoration(
          hintText: S.of(context).searchTattoosStencilsOrTags,
          hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
          prefixIcon: const Icon(Icons.search, color: Colors.white70),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Botón para limpiar la búsqueda por texto
              if (_searchController.text.isNotEmpty)
                IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white70),
                  onPressed: _clearTextSearch,
                  tooltip: S.of(context).clearSearch,
                  iconSize: 20.0,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(
                    minWidth: 36.0,
                    minHeight: 36.0,
                  ),
                ),
              IconButton(
                icon: const Icon(Icons.send, color: Colors.white70),
                onPressed: _searchInspiration,
                tooltip: S.of(context).search,
                iconSize: 20.0,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(
                  minWidth: 36.0,
                  minHeight: 36.0,
                ),
              ),
            ],
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
        onSubmitted: (_) => _searchInspiration(),
        textInputAction: TextInputAction.search,
        autofocus: true,
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }

  // Buscador que aparece cuando se presiona la lupa
  Widget _buildSearchBar() {
    return Container(
      color: Theme.of(context).colorScheme.surface.withOpacity(0.95),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Campo de búsqueda
          Container(
            height: 48.0,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(color: Colors.white38, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4.0,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              controller: _searchController,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              decoration: InputDecoration(
                hintText: S.of(context).searchTattoosStencilsOrTags,
                hintStyle:
                    TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
                prefixIcon: const Icon(Icons.search, color: Colors.white70),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Botón para limpiar la búsqueda por texto
                    if (_searchController.text.isNotEmpty)
                      IconButton(
                        icon: const Icon(Icons.clear, color: Colors.white70),
                        onPressed: _clearTextSearch,
                        tooltip: S.of(context).clearSearch,
                        iconSize: 20.0,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(
                          minWidth: 36.0,
                          minHeight: 36.0,
                        ),
                      ),
                    IconButton(
                      icon: const Icon(Icons.send, color: Colors.white70),
                      onPressed: _searchInspiration,
                      tooltip: S.of(context).search,
                      iconSize: 20.0,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 36.0,
                        minHeight: 36.0,
                      ),
                    ),
                  ],
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
              ),
              onSubmitted: (_) => _searchInspiration(),
              textInputAction: TextInputAction.search,
              autofocus: true,
            ),
          ),

          // Chips para etiquetas seleccionadas
          if (_selectedTagsLocal.isNotEmpty) ...[
            const SizedBox(height: 12.0),
            Container(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: _selectedTagsLocal.map((tag) {
                  return GestureDetector(
                    onTap: () => _removeSelectedTag(tag),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .error
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.error),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            tag.name,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.error,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              size: 10.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],

          // Tag suggestions from search
          BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
            builder: (context, state) {
              return state.whenOrNull(
                    loaded: (works,
                        stencils,
                        contentType,
                        selectedTagIds,
                        searchQuery,
                        sortType,
                        currentWorkPage,
                        hasMoreWorks,
                        currentStencilPage,
                        hasMoreStencils,
                        popularTags,
                        searchedTags,
                        isLoadingMoreWorks,
                        isLoadingMoreStencils) {
                      if (searchedTags.isNotEmpty &&
                          _searchController.text.trim().isNotEmpty) {
                        // Filtrar los tags ocultos para no mostrarlos
                        final visibleTags = searchedTags
                            .where((tag) => !_hiddenTagIds.contains(tag.id))
                            // Filter out already selected tags
                            .where((tag) =>
                                !_selectedTagsLocal.any((t) => t.id == tag.id))
                            .toList();

                        if (visibleTags.isEmpty) {
                          return const SizedBox(height: 12.0);
                        }

                        return Container(
                          margin: const EdgeInsets.only(top: 12.0),
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 4.0),
                                child: Text(
                                  S.of(context).suggestedTags,
                                  style: TextStyleTheme.bodyText2.copyWith(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8.0),
                                child: Row(
                                  children: visibleTags
                                      .map((tag) => Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .error
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.1),
                                                    blurRadius: 4.0,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () =>
                                                        _addSelectedTag(tag),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 12.0,
                                                        vertical: 8.0,
                                                      ),
                                                      child: Text(
                                                        tag.name,
                                                        style: TextStyleTheme
                                                            .bodyText2
                                                            .copyWith(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // Añadir botón para ocultar el tag
                                                  GestureDetector(
                                                    onTap: () => _hideTag(tag),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.black26,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          Icons.close,
                                                          color: Colors.white70,
                                                          size: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return const SizedBox(height: 12.0);
                    },
                  ) ??
                  const SizedBox(height: 12.0);
            },
          ),

          // Tags populares
          BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
            builder: (context, state) {
              return state.whenOrNull(
                    loaded: (works,
                        stencils,
                        contentType,
                        selectedTagIds,
                        searchQuery,
                        sortType,
                        currentWorkPage,
                        hasMoreWorks,
                        currentStencilPage,
                        hasMoreStencils,
                        popularTags,
                        searchedTags,
                        isLoadingMoreWorks,
                        isLoadingMoreStencils) {
                      if (popularTags.isNotEmpty &&
                          _searchController.text.trim().isEmpty) {
                        // Filtrar los tags populares para no mostrar los ocultos
                        final visibleTags = popularTags
                            .where((tag) => !_hiddenTagIds.contains(tag.id))
                            // Filter out already selected tags
                            .where((tag) =>
                                !_selectedTagsLocal.any((t) => t.id == tag.id))
                            .take(5) // Show the most popular tags (top 5)
                            .toList();

                        if (visibleTags.isEmpty) {
                          return const SizedBox.shrink();
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, bottom: 8.0, top: 12.0),
                              child: Text(
                                S.of(context).popularTags,
                                style: TextStyleTheme.bodyText2.copyWith(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: visibleTags
                                    .map((tag) => Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .error
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 4.0,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                GestureDetector(
                                                  onTap: () =>
                                                      _addSelectedTag(tag),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 12.0,
                                                      vertical: 8.0,
                                                    ),
                                                    child: Text(
                                                      tag.name,
                                                      style: TextStyleTheme
                                                          .bodyText2
                                                          .copyWith(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Añadir botón para ocultar el tag
                                                GestureDetector(
                                                  onTap: () => _hideTag(tag),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.black26,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: const Icon(
                                                        Icons.close,
                                                        color: Colors.white70,
                                                        size: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ) ??
                  const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
      builder: (context, state) {
        return state.when(
          initial: () => _buildDefaultFilterBar(),
          loading: () => _buildDefaultFilterBar(),
          loaded: (works,
              stencils,
              contentType,
              selectedTagIds,
              searchQuery,
              sortType,
              currentWorkPage,
              hasMoreWorks,
              currentStencilPage,
              hasMoreStencils,
              popularTags,
              searchedTags,
              isLoadingMoreWorks,
              isLoadingMoreStencils) {
            // Check if we need to show a notification about partial results
            bool showPartialResultsInfo = false;
            String partialResultsMessage = '';

            if (contentType == ContentType.both) {
              if (works.isEmpty && stencils.isNotEmpty) {
                showPartialResultsInfo = true;
                partialResultsMessage = S.of(context).onlyStencilsFound;
              } else if (stencils.isEmpty && works.isNotEmpty) {
                showPartialResultsInfo = true;
                partialResultsMessage = S.of(context).onlyWorksFound;
              }
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16.0),
                      _buildContentTypeFilter(contentType),
                      const Spacer(),
                    ],
                  ),
                ),

                // Show a notification about partial results if needed
                if (showPartialResultsInfo)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    color: Colors.amber.withOpacity(0.2),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline,
                            size: 16.0, color: Colors.amber),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Text(
                            partialResultsMessage,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Switch to the appropriate content type based on what was found
                            if (works.isEmpty && stencils.isNotEmpty) {
                              _handleContentTypeChange(ContentType.stencils);
                            } else if (stencils.isEmpty && works.isNotEmpty) {
                              _handleContentTypeChange(ContentType.works);
                            }
                          },
                          child: Text(
                            S.of(context).showOnlyAvailableResults,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.amber,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
          error: (message) => _buildDefaultFilterBar(),
        );
      },
    );
  }

  Widget _buildDefaultFilterBar() {
    // Obtener el tipo de contenido actual del bloc si está disponible
    ContentType selectedType = ContentType.both;

    final currentState = context.read<InspirationSearchBloc>().state;
    currentState.whenOrNull(
      loaded: (works,
          stencils,
          contentType,
          selectedTagIds,
          searchQuery,
          sortType,
          currentWorkPage,
          hasMoreWorks,
          currentStencilPage,
          hasMoreStencils,
          popularTags,
          searchedTags,
          isLoadingMoreWorks,
          isLoadingMoreStencils) {
        selectedType = contentType;
      },
    );

    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          _buildContentTypeFilter(selectedType),
          const Spacer(),
        ],
      ),
    );
  }

  void _handleContentTypeChange(ContentType newContentType) {
    // Evitar multiples cambios de estado que pueden causar problemas
    final currentState = context.read<InspirationSearchBloc>().state;

    currentState.whenOrNull(
          loaded: (works,
              stencils,
              contentType,
              selectedTagIds,
              searchQuery,
              sortType,
              currentWorkPage,
              hasMoreWorks,
              currentStencilPage,
              hasMoreStencils,
              popularTags,
              searchedTags,
              isLoadingMoreWorks,
              isLoadingMoreStencils) {
            if (contentType != newContentType) {
              context.read<InspirationSearchBloc>().add(
                    InspirationSearchEvent.changeContentType(
                      contentType: newContentType,
                    ),
                  );
            } else {
              print('Ignoring content type change: already at target type');
            }
          },
        ) ??
        print('Ignoring content type change: not in loaded state');
  }

  // Método para actualizar tags seleccionados de forma más segura
  void _updateSelectedTags(
      List<String> selectedTagIds,
      List<TagSuggestionResponseDto> popularTags,
      List<TagSuggestionResponseDto> searchedTags) {
    if (selectedTagIds.isEmpty) {
      if (_selectedTagsLocal.isNotEmpty) {
        setState(() {
          _selectedTagsLocal = [];
        });
      }
      return;
    }

    // Mapa para búsqueda rápida de IDs de tags
    final Map<String, TagSuggestionResponseDto> allTagsMap = {};

    // Añadir todos los tags populares al mapa
    for (final tag in popularTags) {
      allTagsMap[tag.id] = tag;
    }

    // Añadir todos los tags de búsqueda al mapa
    for (final tag in searchedTags) {
      allTagsMap[tag.id] = tag;
    }

    // Crear lista de tags seleccionados basado en los IDs
    final selectedTags = <TagSuggestionResponseDto>[];

    for (final id in selectedTagIds) {
      if (allTagsMap.containsKey(id)) {
        selectedTags.add(allTagsMap[id]!);
      }
    }

    // Sólo actualizar si hay cambios para evitar ciclos de renderizado
    bool needsUpdate = _selectedTagsLocal.length != selectedTags.length;

    if (!needsUpdate) {
      // Verificar que los IDs coincidan
      final localIds = _selectedTagsLocal.map((tag) => tag.id).toSet();
      final newIds = selectedTags.map((tag) => tag.id).toSet();
      needsUpdate = !const SetEquality().equals(localIds, newIds);
    }

    if (needsUpdate) {
      setState(() {
        _selectedTagsLocal = selectedTags;
      });
    }
  }

  Widget _buildContentTypeFilter(ContentType contentType) {
    return Row(
      children: [
        _buildFilterChip(
          label: S.of(context).all,
          isSelected: contentType == ContentType.both,
          onTap: () => _handleContentTypeChange(ContentType.both),
        ),
        const SizedBox(width: 8.0),
        _buildFilterChip(
          label: S.of(context).works,
          isSelected: contentType == ContentType.works,
          onTap: () => _handleContentTypeChange(ContentType.works),
        ),
        const SizedBox(width: 8.0),
        _buildFilterChip(
          label: S.of(context).stencils,
          isSelected: contentType == ContentType.stencils,
          onTap: () => _handleContentTypeChange(ContentType.stencils),
        ),
      ],
    );
  }

  Widget _buildFilterChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 6.0,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.error
              : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.error.withOpacity(0.3),
                    blurRadius: 4.0,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Text(
          label,
          style: TextStyleTheme.bodyText2.copyWith(
            color: Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  // Método para precargar imágenes de los resultados
  void _precacheImages(List<Work> works, List<Stencil> stencils) {
    // Evitamos bloquear la UI usando microtask
    Future.microtask(() {
      final List<String> imageUrls = [];

      // Limitamos la cantidad de imágenes precargadas para evitar sobrecargar la memoria
      // Primero las obras visibles (las primeras 6 o menos)
      if (works.isNotEmpty) {
        final visibleWorks = works.length > 6 ? works.sublist(0, 6) : works;
        for (final work in visibleWorks) {
          imageUrls.add(work.imageUrl);
        }
      }

      // Luego los stencils visibles (los primeros 6 o menos)
      if (stencils.isNotEmpty) {
        final visibleStencils =
            stencils.length > 6 ? stencils.sublist(0, 6) : stencils;
        for (final stencil in visibleStencils) {
          imageUrls.add(stencil.imageUrl);
        }
      }

      // Precargar las imágenes si hay URLs válidas
      if (imageUrls.isNotEmpty) {
        _imageCache.preloadImages(imageUrls, context);
      }
    });
  }

  Widget _buildCreateYourOwnSection() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => TattooGeneratorBloc(
                tattooGeneratorService: context.read(),
                sessionService: context.read(),
              ),
              child: const TattooGeneratorPage(),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.error
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background pattern with gradient
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.05),
                        Colors.white.withOpacity(0.15),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child:
                        const Icon(Icons.brush, color: Colors.white, size: 28),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).createYourOwnDesign,
                          style: TextStyleTheme.headline3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          S.of(context).generateTattooDesignsWithAI,
                          style: TextStyleTheme.bodyText2
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialView() {
    return BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
      builder: (context, state) {
        return state.whenOrNull(
              loaded: (works,
                  stencils,
                  contentType,
                  selectedTagIds,
                  searchQuery,
                  sortType,
                  currentWorkPage,
                  hasMoreWorks,
                  currentStencilPage,
                  hasMoreStencils,
                  popularTags,
                  searchedTags,
                  isLoadingMoreWorks,
                  isLoadingMoreStencils) {
                if (popularTags.isNotEmpty) {
                  return Container(
                    color: Theme.of(context).colorScheme.secondary,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Add Create Your Own section at the top
                          _buildCreateYourOwnSection(),
                          const SizedBox(height: 8.0),

                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              S.of(context).exploreInspiration,
                              style: TextStyleTheme.headline3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              S.of(context).findDesignsAndTattoosMadeByArtists,
                              style: TextStyleTheme.bodyText1
                                  .copyWith(color: Colors.white70),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          // Botón de búsqueda para activar el buscador
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  _isSearchExpanded = true;
                                });
                                _animationController.forward();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.error,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 12.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                elevation: 3,
                              ),
                              icon: const Icon(Icons.search, color: Colors.white),
                              label: Text(
                                S.of(context).searchInspiration,
                                style: TextStyleTheme.subtitle1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: [
                                Icon(Icons.local_fire_department,
                                    color: Theme.of(context).colorScheme.error),
                                const SizedBox(width: 8.0),
                                Text(
                                  S.of(context).popularTags,
                                  style: TextStyleTheme.subtitle1.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0,
                              children: popularTags.map((tag) {
                                // Filtrar tags ocultos
                                if (_hiddenTagIds.contains(tag.id) ||
                                    _selectedTagsLocal
                                        .any((t) => t.id == tag.id)) {
                                  return const SizedBox.shrink();
                                }

                                return GestureDetector(
                                  onTap: () {
                                    _addSelectedTag(tag);
                                    // Expandir el buscador después de seleccionar un tag
                                    setState(() {
                                      _isSearchExpanded = true;
                                    });
                                    _animationController.forward();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                      vertical: 8.0,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Theme.of(context)
                                              .colorScheme
                                              .secondary
                                              .withOpacity(0.8),
                                          Theme.of(context)
                                              .colorScheme
                                              .error
                                              .withOpacity(0.8),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 4.0,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          tag.name,
                                          style:
                                              TextStyleTheme.bodyText2.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        GestureDetector(
                                          onTap: () => _hideTag(tag),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.black26,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.close,
                                              color: Colors.white70,
                                              size: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(height: 32.0),
                        ],
                      ),
                    ),
                  );
                }
                return null;
              },
            ) ??
            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .error
                            .withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.image_search,
                        size: 64.0,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      S.of(context).searchInspirationForYourNextTattoo,
                      style: TextStyleTheme.subtitle1.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        S.of(context).exploreDesignsAndArtistWorks,
                        style: TextStyleTheme.bodyText2
                            .copyWith(color: Colors.white60),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isSearchExpanded = true;
                        });
                        _animationController.forward();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.error,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      icon: const Icon(Icons.search, color: Colors.white),
                      label: Text(
                        S.of(context).startSearching,
                        style: TextStyleTheme.subtitle1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
      },
    );
  }

  Widget _buildResultsView({
    required List<Work> works,
    required List<Stencil> stencils,
    required ContentType contentType,
    required List<String> selectedTagIds,
    required List<TagSuggestionResponseDto> popularTags,
    required List<TagSuggestionResponseDto> searchedTags,
    bool isLoadingMoreWorks = false,
    bool isLoadingMoreStencils = false,
  }) {
    // Debug print to help diagnose the issue
    print(
        'Building results view: contentType=$contentType, works=${works.length}, stencils=${stencils.length}');

    // Precargar imágenes en segundo plano para mejorar el rendimiento
    _precacheImages(works, stencils);

    // Movemos la actualización de tags a un postFrameCallback para evitar setState durante build
    if (mounted) {
      // Usamos addPostFrameCallback para evitar setState durante el build
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _updateSelectedTags(selectedTagIds, popularTags, searchedTags);
        }
      });
    }

    // Check if there are ANY results to show based on the content type
    final bool hasAnyResults;

    // Determinar si hay resultados más claramente basado en el contentType
    if (contentType == ContentType.both) {
      hasAnyResults = works.isNotEmpty || stencils.isNotEmpty;
    } else if (contentType == ContentType.works) {
      hasAnyResults = works.isNotEmpty;
    } else {
      // ContentType.stencils
      hasAnyResults = stencils.isNotEmpty;
    }

    if (!hasAnyResults) {
      return EmptyState(
        icon: Icons.search_off,
        title: S.of(context).noResultsFound,
        message: selectedTagIds.isNotEmpty || _searchController.text.isNotEmpty
            ? S.of(context).tryDifferentSearchOrFilters
            : S.of(context).tryDifferentSearchOrFilters,
        actionButton: selectedTagIds.isNotEmpty
            ? ElevatedButton.icon(
                onPressed: _clearAllFilters,
                icon: const Icon(Icons.filter_alt_off),
                label: Text(S.of(context).clearFilters),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10.0,
                  ),
                ),
              )
            : null,
      );
    }

    // We DEFINITELY have something to show at this point
    print(
        'Rendering results: hasWorks=${works.isNotEmpty}, hasStencils=${stencils.isNotEmpty}');

    return RefreshIndicator(
      onRefresh: () async {
        // Use searchBoth event with current parameters to refresh
        final currentState = context.read<InspirationSearchBloc>().state;
        context.read<InspirationSearchBloc>().add(
              InspirationSearchEvent.searchBoth(
                query: _searchController.text,
                tagIds: selectedTagIds,
                sortBy: _getCurrentSortType(),
                skipCache: true, // Skip cache on pull-to-refresh
              ),
            );
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              child: ListView(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                children: [
                  // Add Create Your Own section at the top
                  _buildCreateYourOwnSection(),

                  // For "both" content type or specifically "works", show works section if there are any
                  if ((contentType == ContentType.both ||
                          contentType == ContentType.works) &&
                      works.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 12.0),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.error,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Icon(Icons.brush,
                                color: Colors.white, size: 16.0),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            S.of(context).tattoos,
                            style: TextStyleTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildWorksGrid(works),
                    const SizedBox(height: 24.0),
                  ],

                  // For "both" content type or specifically "stencils", show stencils section if there are any
                  if ((contentType == ContentType.both ||
                          contentType == ContentType.stencils) &&
                      stencils.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 12.0),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Icon(Icons.image,
                                color: Colors.white, size: 16.0),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            S.of(context).stencils,
                            style: TextStyleTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildStencilsGrid(stencils),
                  ],

                  // Show messages about missing content types if in "both" mode
                  if (contentType == ContentType.both) ...[
                    if (works.isEmpty && stencils.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 16.0, bottom: 12.0),
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            S.of(context).noTattoosFoundWithCurrentCriteria,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    if (stencils.isEmpty && works.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 16.0, bottom: 12.0),
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            S.of(context).noStencilsFoundWithCurrentCriteria,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWorksGrid(List<Work> works) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        physics: const BouncingScrollPhysics(),
        itemCount: works.length,
        itemBuilder: (context, index) {
          final work = works[index];
          return Container(
            width: 230,
            margin: const EdgeInsets.only(right: 16.0),
            child: _buildWorkCard(work),
          );
        },
      ),
    );
  }

  Widget _buildStencilsGrid(List<Stencil> stencils) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 0.75,
      ),
      itemCount: stencils.length,
      itemBuilder: (context, index) {
        final stencil = stencils[index];
        return _buildStencilCard(stencil);
      },
    );
  }

  Widget _buildWorkCard(Work work) {
    return GestureDetector(
      onTap: () {
        // Navigate to vertical immersive viewer with all works
        _navigateToVerticalImmersiveViewer(work: work);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: 'work_${work.id}',
                      child: CachedNetworkImage(
                        imageUrl: work.imageUrl,
                        fit: BoxFit.cover,
                        memCacheWidth: 800,
                        placeholder: (context, url) => Container(
                          color: HSLColor.fromColor(
                                  Theme.of(context).colorScheme.surface)
                              .withLightness(0.1)
                              .toColor(),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2.0,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: HSLColor.fromColor(
                                  Theme.of(context).colorScheme.surface)
                              .withLightness(0.15)
                              .toColor(),
                          child: Icon(Icons.error,
                              color: Theme.of(context).colorScheme.error,
                              size: 24),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.error,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4.0,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          S.of(context).tattoos,
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        work.title,
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8.0),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (work.artist?.id != null) {
                              _navigateToArtistProfile(
                                artist: work.artist!,
                                viewSource: ViewSource.search,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              if (work.artist?.profileThumbnail != null)
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  margin: const EdgeInsets.only(right: 8.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error
                                            .withOpacity(0.3),
                                        width: 1.5),
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          work.artist!.profileThumbnail!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              else
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  margin: const EdgeInsets.only(right: 8.0),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .error
                                        .withOpacity(0.2),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error
                                            .withOpacity(0.3),
                                        width: 1.5),
                                  ),
                                  child: Icon(Icons.person,
                                      size: 14.0,
                                      color:
                                          Theme.of(context).colorScheme.error),
                                ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      work.artist?.firstName != null &&
                                              work.artist?.lastName != null
                                          ? '${work.artist!.firstName} ${work.artist!.lastName}'
                                          : work.artist?.username ??
                                              S.of(context).artist,
                                      style: TextStyleTheme.caption.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    if (work.artist?.rating != null) ...[
                                      const SizedBox(height: 2.0),
                                      Row(
                                        children: [
                                          const Icon(Icons.star,
                                              size: 12.0, color: Colors.amber),
                                          const SizedBox(width: 2.0),
                                          Text(
                                            work.artist!.rating!,
                                            style:
                                                TextStyleTheme.caption.copyWith(
                                              color: Colors.grey.shade600,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          if (work.artist?.followers != null &&
                                              work.artist!.followers > 0) ...[
                                            const SizedBox(width: 6.0),
                                            Icon(Icons.people_outline,
                                                size: 12.0,
                                                color: Colors.grey.shade600),
                                            const SizedBox(width: 2.0),
                                            Text(
                                              _formatFollowerCount(
                                                  work.artist!.followers),
                                              style: TextStyleTheme.caption
                                                  .copyWith(
                                                color: Colors.grey.shade600,
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ],
                                        ],
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .error
                                      .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStencilCard(Stencil stencil) {
    return GestureDetector(
      onTap: () {
        // Navigate to vertical immersive viewer with all stencils
        _navigateToVerticalImmersiveViewer(stencil: stencil);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: 'stencil_${stencil.id}',
                      child: CachedNetworkImage(
                        imageUrl: stencil.imageUrl,
                        fit: BoxFit.cover,
                        memCacheWidth: 800,
                        placeholder: (context, url) => Container(
                          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
                              .withLightness(0.1)
                              .toColor(),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2.0,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
                              .withLightness(0.15)
                              .toColor(),
                          child: Icon(Icons.error,
                              color: Theme.of(context).colorScheme.error, size: 24),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.error,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4.0,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          S.of(context).stencil,
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stencil.title,
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: () {
                        if (stencil.artist?.id != null) {
                          _navigateToArtistProfile(
                            artist: stencil.artist!,
                            viewSource: ViewSource.search,
                          );
                        }
                      },
                      child: Row(
                        children: [
                          if (stencil.artist?.profileThumbnail != null)
                            Container(
                              width: 24.0,
                              height: 24.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Theme.of(context).colorScheme.error.withOpacity(0.3),
                                    width: 1.5),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      stencil.artist!.profileThumbnail!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          else
                            Container(
                              width: 24.0,
                              height: 24.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.error.withOpacity(0.2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Theme.of(context).colorScheme.error.withOpacity(0.3),
                                    width: 1.5),
                              ),
                              child: Icon(Icons.person,
                                  size: 14.0, color: Theme.of(context).colorScheme.error),
                            ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  stencil.artist?.firstName != null &&
                                          stencil.artist?.lastName != null
                                      ? '${stencil.artist!.firstName} ${stencil.artist!.lastName}'
                                      : stencil.artist?.username ??
                                          S.of(context).artist,
                                  style: TextStyleTheme.caption.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (stencil.artist?.rating != null) ...[
                                  const SizedBox(height: 2.0),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          size: 12.0, color: Colors.amber),
                                      const SizedBox(width: 2.0),
                                      Text(
                                        stencil.artist!.rating!,
                                        style: TextStyleTheme.caption.copyWith(
                                          color: Colors.grey.shade600,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      if (stencil.artist?.followers != null &&
                                          stencil.artist!.followers > 0) ...[
                                        const SizedBox(width: 6.0),
                                        Icon(Icons.people_outline,
                                            size: 12.0,
                                            color: Colors.grey.shade600),
                                        const SizedBox(width: 2.0),
                                        Text(
                                          _formatFollowerCount(
                                              stencil.artist!.followers),
                                          style:
                                              TextStyleTheme.caption.copyWith(
                                            color: Colors.grey.shade600,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.error.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12.0,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to navigate to the vertical immersive viewer
  void _navigateToVerticalImmersiveViewer({Work? work, Stencil? stencil}) {
    // Get current state
    final state = context.read<InspirationSearchBloc>().state;

    state.whenOrNull(
      loaded: (works,
          stencils,
          contentType,
          selectedTagIds,
          searchQuery,
          sortType,
          currentWorkPage,
          hasMoreWorks,
          currentStencilPage,
          hasMoreStencils,
          popularTags,
          searchedTags,
          isLoadingMoreWorks,
          isLoadingMoreStencils) {
        // Determine initial position
        int initialWorkIndex = 0;
        int initialStencilIndex = 0;
        bool startWithStencils = false;

        if (work != null) {
          // Find the index of the selected work
          initialWorkIndex = works.indexWhere((w) => w.id == work.id);
          if (initialWorkIndex < 0) initialWorkIndex = 0;
          startWithStencils = false;
        } else if (stencil != null) {
          // Find the index of the selected stencil
          initialStencilIndex = stencils.indexWhere((s) => s.id == stencil.id);
          if (initialStencilIndex < 0) initialStencilIndex = 0;
          startWithStencils = true;
        }

        // Navigate to vertical immersive viewer
        Navigator.of(context)
            .push(
          MaterialPageRoute(
            builder: (context) => VerticalImmersiveViewerPage(
              works: works,
              stencils: stencils,
              initialWorkIndex: initialWorkIndex,
              initialStencilIndex: initialStencilIndex,
              startWithStencils: startWithStencils,
              viewSource: ViewSource.search,
            ),
          ),
        )
            .then((updatedContent) {
          // Si el contenido fue actualizado (likes, etc.), actualizar el estado local
          if (updatedContent != null) {
            final List<Work>? updatedWorks =
                updatedContent is Map ? updatedContent['works'] : null;
            final List<Stencil>? updatedStencils =
                updatedContent is Map ? updatedContent['stencils'] : null;

            if (updatedWorks != null || updatedStencils != null) {
              // Actualizar el bloc con los datos actualizados
              InspirationSearchState_Loaded currentState =
                  state as InspirationSearchState_Loaded;

              // Emitir un nuevo estado con las actualizaciones
              context.read<InspirationSearchBloc>().emit(
                    InspirationSearchState.loaded(
                      works: updatedWorks ?? currentState.works,
                      stencils: updatedStencils ?? currentState.stencils,
                      contentType: currentState.contentType,
                      selectedTagIds: currentState.selectedTagIds,
                      searchQuery: currentState.searchQuery,
                      sortType: currentState.sortType,
                      currentWorkPage: currentState.currentWorkPage,
                      hasMoreWorks: currentState.hasMoreWorks,
                      currentStencilPage: currentState.currentStencilPage,
                      hasMoreStencils: currentState.hasMoreStencils,
                      popularTags: currentState.popularTags,
                      searchedTags: currentState.searchedTags,
                      isLoadingMoreWorks: false,
                      isLoadingMoreStencils: false,
                    ),
                  );
              return;
            }
          }

          // Si no hay actualizaciones específicas, actualizar con searchBoth
          final currentBlocState = context.read<InspirationSearchBloc>().state;
          if (currentBlocState is InspirationSearchState_Loaded) {
            // Use searchBoth event with current parameters to refresh
            context.read<InspirationSearchBloc>().add(
                  InspirationSearchEvent.searchBoth(
                    query: currentBlocState.searchQuery,
                    tagIds: currentBlocState.selectedTagIds,
                    sortBy: currentBlocState.sortType,
                  ),
                );
          }
        });
      },
    );
  }

  // Método para navegar al perfil de un artista con tracking de analytics
  void _navigateToArtistProfile({
    required Artist artist,
    required ViewSource viewSource,
  }) {
    // Registrar la vista del artista con analytics
    context.read<AnalyticsBloc>().add(
          AnalyticsEvent.recordArtistView(
            artistId: artist.id,
          ),
        );

    // Navegar al perfil del artista
    Navigator.of(context).push(
      ArtistProfilePage.route(artist),
    );
  }

  // Helper method to format follower count (e.g., 1500 -> 1.5K)
  String _formatFollowerCount(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    } else if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    } else {
      return count.toString();
    }
  }

  // Método para obtener el SortType actual del estado
  SortType _getCurrentSortType() {
    final currentState = context.read<InspirationSearchBloc>().state;
    return currentState.maybeMap(
      loaded: (state) => state.sortType,
      orElse: () => SortType.relevance,
    );
  }
}
