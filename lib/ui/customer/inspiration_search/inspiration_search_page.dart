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

class InspirationSearchPage extends StatefulWidget {
  final bool hideHeader;

  const InspirationSearchPage({
    super.key,
    this.hideHeader = false,
  });

  @override
  _InspirationSearchPageState createState() => _InspirationSearchPageState();
}

class _InspirationSearchPageState extends State<InspirationSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

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
      } else if (state.contentType == ContentType.stencils &&
          state.hasMoreStencils) {
        context.read<InspirationSearchBloc>().add(
              const InspirationSearchEvent.loadMoreStencils(),
            );
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
      }
    }
  }

  void _searchInspiration() {
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      context.read<InspirationSearchBloc>().add(
            InspirationSearchEvent.searchBoth(query: query),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (!widget.hideHeader) _buildHeader(),
          _buildSearchBar(),
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
    );
  }

  Widget _buildHeader() {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 50.0,
        bottom: 16.0,
      ),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(width: 16.0),
            Text(
              'Inspiración',
              style: TextStyleTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
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
                  hintStyle:
                      TextStyleTheme.bodyText1.copyWith(color: Colors.white60),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
                ),
                onSubmitted: (_) => _searchInspiration(),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          ElevatedButton(
            onPressed: _searchInspiration,
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(12.0),
            ),
            child: const Icon(Icons.search, color: Colors.white),
          ),
        ],
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
              color: Colors.white,
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
          color: isSelected ? secondaryColor : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          label,
          style: TextStyleTheme.bodyText2.copyWith(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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
      child: Row(
        children: [
          const Icon(Icons.sort, color: secondaryColor),
          const SizedBox(width: 4.0),
          Text(
            'Ordenar',
            style: TextStyleTheme.bodyText2.copyWith(
              color: secondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
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
            const Icon(Icons.check, color: secondaryColor, size: 18.0),
          if (value != current) const SizedBox(width: 18.0),
          const SizedBox(width: 8.0),
          Text(value.displayName),
        ],
      ),
    );
  }

  Widget _buildInitialView() {
    return BlocBuilder<InspirationSearchBloc, InspirationSearchState>(
      builder: (context, state) {
        if (state is InspirationSearchState_Loaded &&
            state.popularTags.isNotEmpty) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Explora la inspiración',
                    style: TextStyleTheme.headline3,
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Encuentra diseños y tatuajes hechos por artistas',
                    style: TextStyleTheme.bodyText1
                        .copyWith(color: Colors.grey.shade700),
                  ),
                ),
                const SizedBox(height: 32.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Etiquetas populares',
                    style: TextStyleTheme.subtitle1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 12.0),
                _buildPopularTags(state.popularTags),
                const SizedBox(height: 32.0),
              ],
            ),
          );
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_search,
                size: 80.0,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 24.0),
              Text(
                'Busca inspiración para tu próximo tatuaje',
                style: TextStyleTheme.subtitle1.copyWith(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Explora diseños y trabajos de artistas',
                  style: TextStyleTheme.bodyText2
                      .copyWith(color: Colors.grey.shade600),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
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
                vertical: 6.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                tag.name,
                style: TextStyleTheme.bodyText2.copyWith(
                  color: Colors.black87,
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
    return Column(
      children: [
        if (selectedTagIds.isNotEmpty)
          _buildSelectedTags(selectedTagIds, popularTags),
        Expanded(
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
            children: [
              if (contentType == ContentType.both ||
                  contentType == ContentType.works)
                if (works.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 8.0),
                    child: Text(
                      'Tatuajes',
                      style: TextStyleTheme.subtitle1
                          .copyWith(fontWeight: FontWeight.bold),
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
                        left: 16.0, right: 16.0, bottom: 8.0),
                    child: Text(
                      'Stencils',
                      style: TextStyleTheme.subtitle1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  _buildStencilsGrid(stencils),
                ],
            ],
          ),
        ),
      ],
    );
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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 2.0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            'Filtros:',
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                        color: secondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12.0),
                        border:
                            Border.all(color: secondaryColor.withOpacity(0.3)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            tag.name,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: secondaryColor,
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
                            child: const Icon(
                              Icons.close,
                              size: 16.0,
                              color: secondaryColor,
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
            child: Text(
              'Limpiar',
              style: TextStyleTheme.bodyText2.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
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
        // Navigate to work detail page
        Navigator.of(context).pushNamed(
          '/works/detail',
          arguments: work,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.0,
              offset: const Offset(0, 2),
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
                    Image.network(
                      work.imageUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          color: Colors.grey.shade200,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                              strokeWidth: 2.0,
                              color: secondaryColor,
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade200,
                          child: const Center(
                            child: Icon(Icons.broken_image, color: Colors.grey),
                          ),
                        );
                      },
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
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(4.0),
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
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      work.title,
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      'por ${work.artistId} arreglar',
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.grey.shade600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
        // Navigate to stencil detail page
        Navigator.of(context).pushNamed(
          '/stencils/detail',
          arguments: stencil,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.0,
              offset: const Offset(0, 2),
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
                    Image.network(
                      stencil.imageUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          color: Colors.grey.shade200,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                              strokeWidth: 2.0,
                              color: secondaryColor,
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade200,
                          child: const Center(
                            child: Icon(Icons.broken_image, color: Colors.grey),
                          ),
                        );
                      },
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
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(4.0),
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
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stencil.title,
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      'por ${stencil.artistId} arreglar',
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.grey.shade600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
