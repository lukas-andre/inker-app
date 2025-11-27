import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/empty_state.dart';
import 'package:inker_studio/ui/shared/error_state.dart';
import 'package:inker_studio/ui/shared/loading_indicator.dart';
import 'package:inker_studio/ui/tattoo_generator/tattoo_generator_page.dart';
import 'package:inker_studio/ui/customer/inspiration_search/widgets/inspiration_search_header_web.dart';
import 'package:inker_studio/ui/customer/inspiration_search/widgets/inspiration_results_web.dart';
import 'package:inker_studio/ui/customer/inspiration_search/widgets/inspiration_filter_sidebar_web.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'dart:async';

class InspirationSearchPageWeb extends StatefulWidget {
  const InspirationSearchPageWeb({super.key});

  @override
  State<InspirationSearchPageWeb> createState() => _InspirationSearchPageWebState();
}

class _InspirationSearchPageWebState extends State<InspirationSearchPageWeb> 
    with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final _imageCache = CachedImageManager();
  Timer? _debounce;
  List<TagSuggestionResponseDto> _selectedTagsLocal = [];
  final Set<String> _hiddenTagIds = {};
  
  // Animation controllers
  late AnimationController _fabAnimationController;
  late AnimationController _fabPulseController;
  late AnimationController _searchBarAnimationController;
  late Animation<double> _fabScaleAnimation;
  late Animation<double> _fabRotationAnimation;
  late Animation<double> _fabPulseAnimation;
  
  ContentType _currentContentType = ContentType.both;
  SortType _currentSortType = SortType.relevance;
  bool _showSidebar = true;
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    
    // Setup animations
    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _fabPulseController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    
    _searchBarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    
    _fabScaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.15,
    ).animate(CurvedAnimation(
      parent: _fabAnimationController,
      curve: Curves.easeInOut,
    ));
    
    _fabRotationAnimation = Tween<double>(
      begin: 0.0,
      end: 0.125,
    ).animate(CurvedAnimation(
      parent: _fabAnimationController,
      curve: Curves.easeInOut,
    ));

    _fabPulseAnimation = Tween<double>(
      begin: 1.0,
      end: 1.1,
    ).animate(CurvedAnimation(
      parent: _fabPulseController,
      curve: Curves.easeInOut,
    ));

    // Load initial data
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.getPopularTags(),
          );

      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.searchBoth(
              query: '',
              sortBy: SortType.relevance,
            ),
          );
    });

    _scrollController.addListener(_onScroll);
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _debounce?.cancel();
    _fabAnimationController.dispose();
    _fabPulseController.dispose();
    _searchBarAnimationController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    
    setState(() {
      _isSearching = _searchController.text.isNotEmpty;
    });

    if (_searchController.text.trim().isNotEmpty) {
      setState(() {
        _hiddenTagIds.clear();
      });
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      final query = _searchController.text.trim();
      
      if (query.isNotEmpty) {
        context.read<InspirationSearchBloc>().add(
              InspirationSearchEvent.searchTags(query: query),
            );
        _performSearch();
      } else {
        _clearTextSearch();
      }
    });
  }

  void _onScroll() {
    final state = context.read<InspirationSearchBloc>().state;
    state.whenOrNull(
      loaded: (works, stencils, contentType, selectedTagIds, searchQuery,
          sortType, currentWorkPage, hasMoreWorks, currentStencilPage,
          hasMoreStencils, popularTags, searchedTags, isLoadingMoreWorks,
          isLoadingMoreStencils) {
        if (_scrollController.position.extentAfter < 300) {
          if (contentType == ContentType.works &&
              hasMoreWorks &&
              !isLoadingMoreWorks) {
            context.read<InspirationSearchBloc>().add(
                  const InspirationSearchEvent.loadMoreWorks(),
                );
            _preloadImages(works, null);
          } else if (contentType == ContentType.stencils &&
              hasMoreStencils &&
              !isLoadingMoreStencils) {
            context.read<InspirationSearchBloc>().add(
                  const InspirationSearchEvent.loadMoreStencils(),
                );
            _preloadImages(null, stencils);
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
            _preloadImages(works, stencils);
          }
        }
      },
    );
  }

  void _preloadImages(List<Work>? works, List<Stencil>? stencils) {
    final List<String> imageUrls = [];

    if (works != null && works.isNotEmpty) {
      final int totalWorks = works.length;
      if (totalWorks > 4) {
        final start = totalWorks > 8 ? totalWorks - 4 : totalWorks - (totalWorks ~/ 2);
        for (int i = start; i < totalWorks; i++) {
          imageUrls.add(works[i].imageUrl);
        }
      }
    }

    if (stencils != null && stencils.isNotEmpty) {
      final int totalStencils = stencils.length;
      if (totalStencils > 4) {
        final start = totalStencils > 8 ? totalStencils - 4 : totalStencils - (totalStencils ~/ 2);
        for (int i = start; i < totalStencils; i++) {
          imageUrls.add(stencils[i].imageUrl);
        }
      }
    }

    if (imageUrls.isNotEmpty) {
      _imageCache.preloadImages(imageUrls, context);
    }
  }

  void _addSelectedTag(TagSuggestionResponseDto tag) {
    if (!_selectedTagsLocal.any((t) => t.id == tag.id)) {
      setState(() {
        _selectedTagsLocal.add(tag);
      });
      _applyTagFilters();
    }
  }

  void _removeSelectedTag(TagSuggestionResponseDto tag) {
    setState(() {
      _selectedTagsLocal.removeWhere((t) => t.id == tag.id);
    });
    _applyTagFilters();
  }

  void _applyTagFilters() {
    final tagIds = _selectedTagsLocal.map((tag) => tag.id).toList();

    if (_selectedTagsLocal.isNotEmpty) {
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.filterByTags(tagIds: tagIds),
          );
    } else {
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.clearFilters(),
          );
    }
  }

  void _performSearch() {
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      FocusScope.of(context).unfocus();
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.searchBoth(
              query: query,
              tagIds: _selectedTagsLocal.map((tag) => tag.id).toList(),
              sortBy: _currentSortType,
            ),
          );
    } else if (_selectedTagsLocal.isNotEmpty) {
      _applyTagFilters();
    }
  }

  void _clearAllFilters() {
    setState(() {
      _selectedTagsLocal = [];
      _searchController.clear();
      _isSearching = false;
    });

    context.read<InspirationSearchBloc>().add(
          const InspirationSearchEvent.searchBoth(
            query: '',
            sortBy: SortType.relevance,
          ),
        );
  }

  void _clearTextSearch() {
    setState(() {
      _searchController.clear();
      _isSearching = false;
    });

    if (_selectedTagsLocal.isNotEmpty) {
      _applyTagFilters();
    } else {
      context.read<InspirationSearchBloc>().add(
            const InspirationSearchEvent.searchBoth(
              query: '',
              sortBy: SortType.relevance,
            ),
          );
    }
  }

  void _onContentTypeChanged(ContentType contentType) {
    setState(() {
      _currentContentType = contentType;
    });
    
    context.read<InspirationSearchBloc>().add(
      InspirationSearchEvent.changeContentType(
        contentType: contentType,
      ),
    );
  }

  void _onSortTypeChanged(SortType sortType) {
    setState(() {
      _currentSortType = sortType;
    });
    
    context.read<InspirationSearchBloc>().add(
      InspirationSearchEvent.searchBoth(
        query: _searchController.text,
        tagIds: _selectedTagsLocal.map((tag) => tag.id).toList(),
        sortBy: sortType,
      ),
    );
  }

  void _openTattooGenerator() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.error,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.auto_awesome,
                      color: Colors.white,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Crea tu propio diseño con IA',
                      style: TextStyleTheme.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
              // Content
              Expanded(
                child: BlocProvider(
                  create: (context) => TattooGeneratorBloc(
                    tattooGeneratorService: context.read(),
                    sessionService: context.read(),
                    tokenCubit: context.read(),
                  ),
                  child: const TattooGeneratorPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final showSidebarLayout = screenWidth >= ResponsiveBreakpoints.desktop && _showSidebar;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Row(
        children: [
          // Sidebar (only on desktop)
          if (showSidebarLayout)
            BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
              builder: (context, state) {
                return state.whenOrNull(
                  loaded: (works, stencils, contentType, selectedTagIds, searchQuery,
                      sortType, currentWorkPage, hasMoreWorks, currentStencilPage,
                      hasMoreStencils, popularTags, searchedTagsIgnored, isLoadingMoreWorksIgnored,
                      isLoadingMoreStencilsIgnored) {
                    return InspirationFilterSidebarWeb(
                      contentType: contentType,
                      sortType: sortType,
                      popularTags: popularTags,
                      selectedTags: _selectedTagsLocal,
                      onContentTypeChanged: _onContentTypeChanged,
                      onSortTypeChanged: _onSortTypeChanged,
                      onTagSelected: _addSelectedTag,
                      onTagRemoved: _removeSelectedTag,
                    );
                  },
                ) ?? InspirationFilterSidebarWeb(
                  contentType: _currentContentType,
                  sortType: _currentSortType,
                  popularTags: const [],
                  selectedTags: _selectedTagsLocal,
                  onContentTypeChanged: _onContentTypeChanged,
                  onSortTypeChanged: _onSortTypeChanged,
                  onTagSelected: _addSelectedTag,
                  onTagRemoved: _removeSelectedTag,
                );
              },
            ),

          // Main content
          Expanded(
            child: Column(
              children: [
                // Enhanced Header with search
                BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                      loaded: (works, stencils, contentType, selectedTagIds, searchQuery,
                          sortType, currentWorkPage, hasMoreWorks, currentStencilPage,
                          hasMoreStencils, popularTags, searchedTags, isLoadingMoreWorks,
                          isLoadingMoreStencils) {
                        return InspirationSearchHeaderWeb(
                          searchController: _searchController,
                          selectedTags: _selectedTagsLocal,
                          searchedTags: searchedTags
                              .where((tag) => !_hiddenTagIds.contains(tag.id))
                              .toList(),
                          onTagSelected: _addSelectedTag,
                          onTagRemoved: _removeSelectedTag,
                          onSearch: _performSearch,
                          onClearAll: _clearAllFilters,
                          onClearSearch: _isSearching ? _clearTextSearch : null,
                        );
                      },
                    ) ?? InspirationSearchHeaderWeb(
                      searchController: _searchController,
                      selectedTags: _selectedTagsLocal,
                      searchedTags: const [],
                      onTagSelected: _addSelectedTag,
                      onTagRemoved: _removeSelectedTag,
                      onSearch: _performSearch,
                      onClearAll: _clearAllFilters,
                      onClearSearch: _isSearching ? _clearTextSearch : null,
                    );
                  },
                ),

                // Divider
                Divider(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),

                // Results
                Expanded(
                  child: BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => _buildInitialView(),
                        loading: () => const Center(child: LoadingIndicator()),
                        loaded: (works, stencils, contentType, selectedTagIds, searchQuery,
                            sortType, currentWorkPageIgnored, hasMoreWorks, currentStencilPageIgnored, 
                            hasMoreStencils, popularTagsIgnored, searchedTagsIgnored,
                            isLoadingMoreWorks, isLoadingMoreStencils) {
                          final hasAnyResults = works.isNotEmpty || stencils.isNotEmpty;

                          if (!hasAnyResults) {
                            return EmptyState(
                              icon: Icons.search_off,
                              title: S.of(context).noResultsFound,
                              message: selectedTagIds.isNotEmpty || searchQuery.isNotEmpty
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

                          return InspirationResultsWeb(
                            works: works,
                            stencils: stencils,
                            contentType: contentType,
                            isLoadingMoreWorks: isLoadingMoreWorks,
                            isLoadingMoreStencils: isLoadingMoreStencils,
                            scrollController: _scrollController,
                            onGenerateTattoo: _openTattooGenerator,
                            useHorizontalLayout: true,
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
          ),
        ],
      ),
      
      // Floating Action Button for Generate Tattoo with emphasis
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Call to action banner
          Container(
            margin: const EdgeInsets.only(right: 8, bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.auto_awesome, color: Colors.white, size: 16),
                const SizedBox(width: 8),
                const Text(
                  '¡Crea tu diseño único!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Enhanced FAB
          MouseRegion(
            onEnter: (_) => _fabAnimationController.forward(),
            onExit: (_) => _fabAnimationController.reverse(),
            child: AnimatedBuilder(
              animation: Listenable.merge([_fabAnimationController, _fabPulseController]),
              builder: (context, child) {
                return Transform.scale(
                  scale: _fabScaleAnimation.value * _fabPulseAnimation.value,
                  child: Transform.rotate(
                    angle: _fabRotationAnimation.value * 3.14159,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).colorScheme.secondary,
                            Theme.of(context).colorScheme.error,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                            blurRadius: 20,
                            spreadRadius: 2,
                            offset: const Offset(0, 4),
                          ),
                          BoxShadow(
                            color: Theme.of(context).colorScheme.error.withValues(alpha: 0.3),
                            blurRadius: 30,
                            spreadRadius: -5,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: _openTattooGenerator,
                          customBorder: const CircleBorder(),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Outer glow effect
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withValues(alpha: 0.1),
                                ),
                              ),
                              // Icon
                              const Icon(
                                Icons.auto_awesome,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildInitialView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Animated icon
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 800),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                        Theme.of(context).colorScheme.error.withValues(alpha: 0.3),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.search,
                    size: 64,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          Text(
            'Descubre inspiración increíble',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Busca trabajos, stencils y encuentra tu próximo tatuaje',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          // Call to action button
          ElevatedButton.icon(
            onPressed: _openTattooGenerator,
            icon: const Icon(Icons.auto_awesome),
            label: const Text('Genera tu propio diseño con IA'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}