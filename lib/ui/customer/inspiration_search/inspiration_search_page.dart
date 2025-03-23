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
import 'package:flutter/rendering.dart';

class InspirationSearchPage extends StatefulWidget {
  final bool hideHeader;

  const InspirationSearchPage({
    super.key,
    this.hideHeader = false,
  });

  @override
  _InspirationSearchPageState createState() => _InspirationSearchPageState();
}

class _InspirationSearchPageState extends State<InspirationSearchPage> with SingleTickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  bool _isSearchExpanded = false;
  final _imageCache = CachedImageManager();

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
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.getPopularTags(),
          );
    });

    // Add scroll listener for pagination
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
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
            final start = totalWorks > 8 ? totalWorks - 4 : totalWorks - (totalWorks ~/ 2);
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
            final start = totalStencils > 8 ? totalStencils - 4 : totalStencils - (totalStencils ~/ 2);
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
            final start = totalWorks > 8 ? totalWorks - 4 : totalWorks - (totalWorks ~/ 2);
            for (int i = start; i < totalWorks; i++) {
              imageUrls.add(state.works[i].imageUrl);
            }
          }
        }
        
        // Precargar stencils
        if (state.stencils.isNotEmpty) {
          final int totalStencils = state.stencils.length;
          if (totalStencils > 4) {
            final start = totalStencils > 8 ? totalStencils - 4 : totalStencils - (totalStencils ~/ 2);
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

  void _searchInspiration() {
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      setState(() {
        _isSearchExpanded = false;
      });
      _animationController.reverse();
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.searchBoth(query: query),
          );
      // Hide keyboard
      FocusScope.of(context).unfocus();
    }
  }

  void _toggleSearch() {
    setState(() {
      _isSearchExpanded = !_isSearchExpanded;
    });
    if (_isSearchExpanded) {
      _animationController.forward();
      Future.delayed(const Duration(milliseconds: 100), () {
        FocusScope.of(context).requestFocus(FocusNode());
      });
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          if (!widget.hideHeader) _buildModernHeader(),
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
                      popularTags) {
                    if (contentType == ContentType.works && works.isEmpty ||
                        contentType == ContentType.stencils &&
                            stencils.isEmpty ||
                        contentType == ContentType.both &&
                            works.isEmpty &&
                            stencils.isEmpty) {
                      return const EmptyState(
                        icon: Icons.search,
                        title: 'No se encontraron resultados',
                        message: 'Prueba con otra búsqueda o filtros',
                      );
                    }

                    return _buildResultsView(
                      works: works,
                      stencils: stencils,
                      contentType: contentType,
                      selectedTagIds: selectedTagIds,
                      popularTags: popularTags,
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
      floatingActionButton: _buildFloatingSearchButton(),
    );
  }

  Widget _buildFloatingSearchButton() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: !_isSearchExpanded
          ? FloatingActionButton(
              key: const ValueKey('searchFAB'),
              backgroundColor: redColor,
              onPressed: _toggleSearch,
              elevation: 4.0,
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          : FloatingActionButton(
              key: const ValueKey('closeFAB'),
              backgroundColor: Colors.white,
              onPressed: () {
                if (_searchController.text.isNotEmpty) {
                  _searchInspiration();
                } else {
                  _toggleSearch();
                }
              },
              elevation: 4.0,
              child: Icon(
                _searchController.text.isNotEmpty ? Icons.search : Icons.close,
                color: redColor,
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
                    onPressed: _isSearchExpanded ? _toggleSearch : null,
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
          ],
        ),
      ),
    );
  }

  Widget _buildCompactSearchBar() {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: explorerSecondaryColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: TextField(
        controller: _searchController,
        style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Buscar tatuajes, stencils...',
          hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white60),
          prefixIcon: const Icon(Icons.search, color: Colors.white70),
          suffixIcon: IconButton(
            icon: const Icon(Icons.send, color: Colors.white70),
            onPressed: _searchInspiration,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
        onSubmitted: (_) => _searchInspiration(),
        textInputAction: TextInputAction.search,
      ),
    );
  }

  Widget _buildFilterBar() {
    return BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
      builder: (context, state) {
        if (state is InspirationSearchState_Loaded) {
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
                _buildContentTypeFilter(state.contentType),
                const Spacer(),
                _buildSortButton(state.sortType),
                const SizedBox(width: 16.0),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }

  Widget _buildContentTypeFilter(ContentType contentType) {
    return Row(
      children: [
        _buildFilterChip(
          label: 'Todos',
          isSelected: contentType == ContentType.both,
          onTap: () => context.read<InspirationSearchBloc>().add(
                const InspirationSearchEvent.changeContentType(
                  contentType: ContentType.both,
                ),
              ),
        ),
        const SizedBox(width: 8.0),
        _buildFilterChip(
          label: 'Tatuajes',
          isSelected: contentType == ContentType.works,
          onTap: () => context.read<InspirationSearchBloc>().add(
                const InspirationSearchEvent.changeContentType(
                  contentType: ContentType.works,
                ),
              ),
        ),
        const SizedBox(width: 8.0),
        _buildFilterChip(
          label: 'Stencils',
          isSelected: contentType == ContentType.stencils,
          onTap: () => context.read<InspirationSearchBloc>().add(
                const InspirationSearchEvent.changeContentType(
                  contentType: ContentType.stencils,
                ),
              ),
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

  Widget _buildSortButton(SortType sortType) {
    return PopupMenuButton<SortType>(
      offset: const Offset(0, 40),
      onSelected: (value) {
        context.read<InspirationSearchBloc>().add(
              InspirationSearchEvent.changeSortType(sortType: value),
            );
      },
      itemBuilder: (context) => [
        _buildPopupMenuItem(SortType.relevance, sortType),
        _buildPopupMenuItem(SortType.newest, sortType),
        _buildPopupMenuItem(SortType.oldest, sortType),
        _buildPopupMenuItem(SortType.popularity, sortType),
      ],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.sort, color: Colors.white, size: 14.0),
            const SizedBox(width: 4.0),
            Text(
              'Ordenar',
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<SortType> _buildPopupMenuItem(
      SortType value, SortType current) {
    return PopupMenuItem<SortType>(
      value: value,
      child: Row(
        children: [
          if (value == current)
            Icon(Icons.check, color: redColor, size: 18.0),
          if (value != current) const SizedBox(width: 18.0),
          const SizedBox(width: 8.0),
          Text(
            value.displayName,
            style: TextStyleTheme.bodyText2.copyWith(
              fontWeight: value == current ? FontWeight.bold : FontWeight.normal,
              color: value == current ? redColor : Colors.black87,
            ),
          ),
        ],
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
                  const SizedBox(height: 32.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.local_fire_department, color: redColor),
                        const SizedBox(width: 8.0),
                        Text(
                          'Etiquetas populares',
                          style: TextStyleTheme.subtitle1
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  _buildPopularTags(state.popularTags),
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
                  child: Icon(
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
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPopularTags(List<TagSuggestionResponseDto> tags) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: tags.map((tag) {
          return GestureDetector(
            onTap: () {
              context.read<InspirationSearchBloc>().add(
                    InspirationSearchEvent.filterByTags(tagIds: [tag.id]),
                  );
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
    );
  }

  Widget _buildResultsView({
    required List<Work> works,
    required List<Stencil> stencils,
    required ContentType contentType,
    required List<int> selectedTagIds,
    required List<TagSuggestionResponseDto> popularTags,
  }) {
    // Precargar imágenes en segundo plano para mejorar el rendimiento
    _precacheImages(works, stencils);
    
    return Column(
      children: [
        if (selectedTagIds.isNotEmpty)
          _buildSelectedTags(selectedTagIds, popularTags),
        Expanded(
          child: Container(
            color: primaryColor,
            child: ListView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
              children: [
                if (contentType == ContentType.both ||
                    contentType == ContentType.works)
                  if (works.isNotEmpty) ...[
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
                            child: const Icon(
                              Icons.brush, 
                              color: Colors.white, 
                              size: 16.0
                            ),
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
                if (contentType == ContentType.both ||
                    contentType == ContentType.stencils)
                  if (stencils.isNotEmpty) ...[
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
                            child: const Icon(
                              Icons.image, 
                              color: Colors.white, 
                              size: 16.0
                            ),
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
        final visibleStencils = stencils.length > 6 ? stencils.sublist(0, 6) : stencils;
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

  Widget _buildSelectedTags(
      List<int> selectedTagIds, List<TagSuggestionResponseDto> allTags) {
    // Find tag names from ids
    final selectedTags =
        allTags.where((tag) => selectedTagIds.contains(tag.id)).toList();

    if (selectedTags.isEmpty) return Container();

    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            'Filtros:',
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: selectedTags.map((tag) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: redColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12.0),
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
                            onTap: () {
                              final newTagIds = selectedTagIds
                                  .where((id) => id != tag.id)
                                  .toList();

                              if (newTagIds.isEmpty) {
                                context.read<InspirationSearchBloc>().add(
                                      const InspirationSearchEvent
                                          .clearFilters(),
                                    );
                              } else {
                                context.read<InspirationSearchBloc>().add(
                                      InspirationSearchEvent.filterByTags(
                                          tagIds: newTagIds),
                                    );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                color: redColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.close,
                                size: 12.0,
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
          ),
          const SizedBox(width: 8.0),
          GestureDetector(
            onTap: () {
              context.read<InspirationSearchBloc>().add(
                    const InspirationSearchEvent.clearFilters(),
                  );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                'Limpiar',
                style: TextStyleTheme.bodyText2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
        Navigator.pushNamed(
          context,
          '/immersive_viewer',
          arguments: {'work': work}
        );
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
                          color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                          child: const Icon(Icons.error, color: redColor, size: 24),
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
                        Icon(Icons.person, size: 14.0, color: Colors.grey.shade600),
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
        Navigator.pushNamed(
          context,
          '/immersive_viewer',
          arguments: {'stencil': stencil}
        );
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
                          color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                          child: const Icon(Icons.error, color: redColor, size: 24),
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
                        Icon(Icons.person, size: 14.0, color: Colors.grey.shade600),
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
}
