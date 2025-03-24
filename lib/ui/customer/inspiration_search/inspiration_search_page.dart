import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/ui/shared/empty_state.dart';
import 'package:inker_studio/ui/shared/error_state.dart';
import 'package:inker_studio/ui/shared/loading_indicator.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    if (state is InspirationSearchState_Loaded &&
        _scrollController.position.extentAfter < 300) {
      if (state.contentType == ContentType.works && state.hasMoreWorks) {
        context.read<InspirationSearchBloc>().add(
              const InspirationSearchEvent.loadMoreWorks(),
            );

        // Precargar las próximas imágenes que estarán visibles
        if (state.works.isNotEmpty) {
          final int totalWorks = state.works.length;
          if (totalWorks > 4) {
            // Precargar las últimas 4 imágenes (que probablemente estarán visibles pronto)
            final List<String> imageUrls = [];
            final start = totalWorks > 8
                ? totalWorks - 4
                : totalWorks - (totalWorks ~/ 2);
            for (int i = start; i < totalWorks; i++) {
              imageUrls.add(state.works[i].imageUrl);
            }
            if (imageUrls.isNotEmpty) {
              _imageCache.preloadImages(imageUrls, context);
            }
          }
        }
      } else if (state.contentType == ContentType.stencils &&
          state.hasMoreStencils) {
        context.read<InspirationSearchBloc>().add(
              const InspirationSearchEvent.loadMoreStencils(),
            );

        // Precargar las próximas imágenes que estarán visibles
        if (state.stencils.isNotEmpty) {
          final int totalStencils = state.stencils.length;
          if (totalStencils > 4) {
            // Precargar las últimas 4 imágenes (que probablemente estarán visibles pronto)
            final List<String> imageUrls = [];
            final start = totalStencils > 8
                ? totalStencils - 4
                : totalStencils - (totalStencils ~/ 2);
            for (int i = start; i < totalStencils; i++) {
              imageUrls.add(state.stencils[i].imageUrl);
            }
            if (imageUrls.isNotEmpty) {
              _imageCache.preloadImages(imageUrls, context);
            }
          }
        }
      } else if (state.contentType == ContentType.both) {
        if (state.hasMoreWorks) {
          context.read<InspirationSearchBloc>().add(
                const InspirationSearchEvent.loadMoreWorks(),
              );
        }
        if (state.hasMoreStencils) {
          context.read<InspirationSearchBloc>().add(
                const InspirationSearchEvent.loadMoreStencils(),
              );
        }

        // Precargar imágenes cuando se cargan más resultados en modo "ambos"
        final List<String> imageUrls = [];

        // Precargar trabajos
        if (state.works.isNotEmpty) {
          final int totalWorks = state.works.length;
          if (totalWorks > 4) {
            final start = totalWorks > 8
                ? totalWorks - 4
                : totalWorks - (totalWorks ~/ 2);
            for (int i = start; i < totalWorks; i++) {
              imageUrls.add(state.works[i].imageUrl);
            }
          }
        }

        // Precargar stencils
        if (state.stencils.isNotEmpty) {
          final int totalStencils = state.stencils.length;
          if (totalStencils > 4) {
            final start = totalStencils > 8
                ? totalStencils - 4
                : totalStencils - (totalStencils ~/ 2);
            for (int i = start; i < totalStencils; i++) {
              imageUrls.add(state.stencils[i].imageUrl);
            }
          }
        }

        // Precargar todas las imágenes recopiladas
        if (imageUrls.isNotEmpty) {
          _imageCache.preloadImages(imageUrls, context);
        }
      }
    }
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
              Text('Buscando "$query"...'),
            ],
          ),
          backgroundColor: redColor,
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
        const SnackBar(
          content:
              Text('Ingresa un término de búsqueda o selecciona etiquetas'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 2),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
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
                      searchedTags) {
                    // Print debug info
                    print(
                        'InspirationSearchPage loaded state: contentType=$contentType, works=${works.length}, stencils=${stencils.length}');

                    final bool hasAnyResults =
                        works.isNotEmpty || stencils.isNotEmpty;

                    if (!hasAnyResults) {
                      return EmptyState(
                        icon: Icons.search_off,
                        title: 'No se encontraron resultados',
                        message: selectedTagIds.isNotEmpty ||
                                searchQuery.isNotEmpty
                            ? 'Prueba con otra búsqueda o filtros diferentes'
                            : 'Prueba con otra búsqueda o filtros',
                        actionButton: selectedTagIds.isNotEmpty
                            ? ElevatedButton.icon(
                                onPressed: _clearAllFilters,
                                icon: const Icon(Icons.filter_alt_off),
                                label: const Text("Limpiar filtros"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: redColor,
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
        backgroundColor: _isSearchExpanded ? Colors.white : redColor,
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
          color: _isSearchExpanded ? redColor : Colors.white,
        ),
      ),
    );
  }

  Widget _buildModernHeader() {
    return Container(
      color: primaryColor,
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
                  'Inspiración',
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
    return Container(
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
                  color: redColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: redColor),
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
                          color: redColor,
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
        color: explorerSecondaryColor.withOpacity(0.8),
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
          hintText: 'Buscar tatuajes, stencils o etiquetas...',
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
                  tooltip: 'Limpiar búsqueda',
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
                tooltip: 'Buscar',
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
      color: primaryColor.withOpacity(0.95),
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
                hintText: 'Buscar tatuajes, stencils o etiquetas...',
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
                        tooltip: 'Limpiar búsqueda',
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
                      tooltip: 'Buscar',
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
                        color: redColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: redColor),
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
                              color: redColor,
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
              if (state is InspirationSearchState_Loaded &&
                  state.searchedTags.isNotEmpty &&
                  _searchController.text.trim().isNotEmpty) {
                return Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    color: explorerSecondaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 4.0),
                        child: Text(
                          'Etiquetas sugeridas:',
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
                          children: state.searchedTags
                              // Filter out already selected tags
                              .where((tag) => !_selectedTagsLocal
                                  .any((t) => t.id == tag.id))
                              .map((tag) => Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: GestureDetector(
                                      onTap: () => _addSelectedTag(tag),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: redColor.withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 4.0,
                                              offset: const Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          tag.name,
                                          style:
                                              TextStyleTheme.bodyText2.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
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
          ),

          // Tags populares
          BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
            builder: (context, state) {
              if (state is InspirationSearchState_Loaded &&
                  state.popularTags.isNotEmpty &&
                  _searchController.text.trim().isEmpty) {
                // Show the most popular tags (top 5)
                final displayTags = state.popularTags.take(5).toList();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, bottom: 8.0, top: 12.0),
                      child: Text(
                        'Etiquetas populares:',
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: displayTags
                            // Filter out already selected tags
                            .where((tag) =>
                                !_selectedTagsLocal.any((t) => t.id == tag.id))
                            .map((tag) => _buildTagChip(tag))
                            .toList(),
                      ),
                    ),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTagChip(TagSuggestionResponseDto tag) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () => _addSelectedTag(tag),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          decoration: BoxDecoration(
            color: redColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            tag.name,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResultsView({
    required List<Work> works,
    required List<Stencil> stencils,
    required ContentType contentType,
    required List<int> selectedTagIds,
    required List<TagSuggestionResponseDto> popularTags,
    required List<TagSuggestionResponseDto> searchedTags,
  }) {
    // Debug print to help diagnose the issue
    print(
        'Building results view: contentType=$contentType, works=${works.length}, stencils=${stencils.length}');

    // Precargar imágenes en segundo plano para mejorar el rendimiento
    _precacheImages(works, stencils);

    // Manejar actualizaciones de tags de forma más segura
    if (mounted) {
      _updateSelectedTags(selectedTagIds, popularTags, searchedTags);
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
        title: 'No se encontraron resultados',
        message: selectedTagIds.isNotEmpty || _searchController.text.isNotEmpty
            ? 'Prueba con otra búsqueda o filtros diferentes'
            : 'Prueba con otra búsqueda o filtros',
        actionButton: selectedTagIds.isNotEmpty
            ? ElevatedButton.icon(
                onPressed: _clearAllFilters,
                icon: const Icon(Icons.filter_alt_off),
                label: const Text("Limpiar filtros"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: redColor,
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

    return Column(
      children: [
        Expanded(
          child: Container(
            color: primaryColor,
            child: ListView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
              children: [
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
                            color: redColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Icon(Icons.brush,
                              color: Colors.white, size: 16.0),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Tatuajes',
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
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Icon(Icons.image,
                              color: Colors.white, size: 16.0),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Stencils',
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
                          'No se encontraron tatuajes con los criterios actuales.',
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
                          'No se encontraron stencils con los criterios actuales.',
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

  Widget _buildWorksGrid(List<Work> works) {
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
      itemCount: works.length,
      itemBuilder: (context, index) {
        final work = works[index];
        return _buildWorkCard(work);
      },
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
        // Navigate to work detail page using the immersive viewer
        Navigator.pushNamed(context, '/immersive_viewer',
            arguments: {'work': work});
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
                      tag: 'work_${work.id}',
                      child: CachedNetworkImage(
                        imageUrl: work.imageUrl,
                        fit: BoxFit.cover,
                        memCacheWidth: 800,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2.0,
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: HSLColor.fromColor(primaryColor)
                              .withLightness(0.15)
                              .toColor(),
                          child: const Icon(Icons.error,
                              color: redColor, size: 24),
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
                          color: redColor,
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
                          'Tatuaje',
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
                      work.title,
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Icon(Icons.person,
                            size: 14.0, color: Colors.grey.shade600),
                        const SizedBox(width: 4.0),
                        Expanded(
                          child: Text(
                            'por ${work.artistId} arreglar',
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
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

  Widget _buildStencilCard(Stencil stencil) {
    return GestureDetector(
      onTap: () {
        // Navigate to stencil detail page using the immersive viewer
        Navigator.pushNamed(context, '/immersive_viewer',
            arguments: {'stencil': stencil});
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
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2.0,
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: HSLColor.fromColor(primaryColor)
                              .withLightness(0.15)
                              .toColor(),
                          child: const Icon(Icons.error,
                              color: redColor, size: 24),
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
                          color: primaryColor,
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
                          'Stencil',
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
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Icon(Icons.person,
                            size: 14.0, color: Colors.grey.shade600),
                        const SizedBox(width: 4.0),
                        Expanded(
                          child: Text(
                            'por ${stencil.artistId} arreglar',
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
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

  Widget _buildInitialView() {
    return BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
      builder: (context, state) {
        if (state is InspirationSearchState_Loaded &&
            state.popularTags.isNotEmpty) {
          return Container(
            color: explorerSecondaryColor,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Explora la inspiración',
                      style: TextStyleTheme.headline3.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Encuentra diseños y tatuajes hechos por artistas',
                      style: TextStyleTheme.bodyText1
                          .copyWith(color: Colors.white70),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Botón de búsqueda para activar el buscador
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isSearchExpanded = true;
                        });
                        _animationController.forward();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: redColor,
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
                        'Buscar inspiración',
                        style: TextStyleTheme.subtitle1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.local_fire_department, color: redColor),
                        const SizedBox(width: 8.0),
                        Text(
                          'Etiquetas populares',
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: state.popularTags.map((tag) {
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
                                  primaryColor.withOpacity(0.8),
                                  redColor.withOpacity(0.8),
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
                            child: Text(
                              tag.name,
                              style: TextStyleTheme.bodyText2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
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

        return Container(
          color: explorerSecondaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: redColor.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.image_search,
                    size: 64.0,
                    color: redColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                Text(
                  'Busca inspiración para tu próximo tatuaje',
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
                    'Explora diseños y trabajos de artistas',
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
                    backgroundColor: redColor,
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
                    'Comenzar a buscar',
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
              searchedTags) {
            // Check if we need to show a notification about partial results
            bool showPartialResultsInfo = false;
            String partialResultsMessage = '';

            if (contentType == ContentType.both) {
              if (works.isEmpty && stencils.isNotEmpty) {
                showPartialResultsInfo = true;
                partialResultsMessage = 'Solo se encontraron stencils';
              } else if (stencils.isEmpty && works.isNotEmpty) {
                showPartialResultsInfo = true;
                partialResultsMessage = 'Solo se encontraron tatuajes';
              }
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: primaryColor,
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
                            'Mostrar solo resultados disponibles',
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
    if (currentState is InspirationSearchState_Loaded) {
      selectedType = currentState.contentType;
    }

    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: primaryColor,
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

    if (currentState is InspirationSearchState_Loaded &&
        currentState.contentType != newContentType) {
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.changeContentType(
              contentType: newContentType,
            ),
          );
    } else {
      print(
          'Ignoring content type change: not in loaded state or already at target type');
    }
  }

  // Método para actualizar tags seleccionados de forma más segura
  void _updateSelectedTags(
      List<int> selectedTagIds,
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
    final Map<int, TagSuggestionResponseDto> allTagsMap = {};

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
          label: 'Todos',
          isSelected: contentType == ContentType.both,
          onTap: () => _handleContentTypeChange(ContentType.both),
        ),
        const SizedBox(width: 8.0),
        _buildFilterChip(
          label: 'Tatuajes',
          isSelected: contentType == ContentType.works,
          onTap: () => _handleContentTypeChange(ContentType.works),
        ),
        const SizedBox(width: 8.0),
        _buildFilterChip(
          label: 'Stencils',
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
          color: isSelected ? redColor : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: redColor.withOpacity(0.3),
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
}
