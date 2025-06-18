import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/immersive_viewer/immersive_viewer_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class ArtistProfileGalleryWeb extends StatefulWidget {
  final String artistId;

  const ArtistProfileGalleryWeb({
    super.key,
    required this.artistId,
  });

  @override
  State<ArtistProfileGalleryWeb> createState() => _ArtistProfileGalleryWebState();
}

class _ArtistProfileGalleryWebState extends State<ArtistProfileGalleryWeb> 
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _selectedFilter = 'all';
  String _sortBy = 'recent';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // Portfolio is already loaded in the parent widget
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = _calculateCrossAxisCount(screenWidth);

    return BlocBuilder<ArtistPortfolioCubit, ArtistPortfolioState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: InkerProgressIndicator()),
          loading: () => const Center(child: InkerProgressIndicator()),
          loaded: (stencils, works) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header con filtros y ordenamiento
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            S.of(context).portfolio,
                            style: TextStyleTheme.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          // Opciones de vista y ordenamiento
                          Row(
                            children: [
                              // Filtro
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).dividerColor,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value: _selectedFilter,
                                  underline: const SizedBox(),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedFilter = value!;
                                    });
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      value: 'all',
                                      child: Text(S.of(context).all),
                                    ),
                                    DropdownMenuItem(
                                      value: 'featured',
                                      child: Text(S.of(context).featured),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 12),
                              // Ordenamiento
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).dividerColor,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButton<String>(
                                  value: _sortBy,
                                  underline: const SizedBox(),
                                  onChanged: (value) {
                                    setState(() {
                                      _sortBy = value!;
                                    });
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      value: 'recent',
                                      child: Text(S.of(context).mostRecent),
                                    ),
                                    DropdownMenuItem(
                                      value: 'popular',
                                      child: Text(S.of(context).mostPopular),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Tabs
                      TabBar(
                        controller: _tabController,
                        indicatorColor: Theme.of(context).colorScheme.secondary,
                        indicatorWeight: 3,
                        labelColor: Theme.of(context).colorScheme.secondary,
                        unselectedLabelColor: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                        labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        tabs: [
                          Tab(
                            text: '${S.of(context).works} (${works.length})',
                          ),
                          Tab(
                            text: '${S.of(context).stencils} (${stencils.length})',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Contenido de la galería
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      // Works tab
                      _buildWorksGrid(works, crossAxisCount),
                      // Stencils tab
                      _buildStencilsGrid(stencils, crossAxisCount),
                    ],
                  ),
                ),
              ],
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64,
                  color: Theme.of(context).colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  message,
                  style: TextStyleTheme.copyWith(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<ArtistPortfolioCubit>().loadArtistPortfolio(widget.artistId);
                  },
                  child: Text(S.of(context).retry),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildWorksGrid(List<Work> works, int crossAxisCount) {
    List<Work> filteredWorks = works;
    
    // Aplicar filtros
    if (_selectedFilter == 'featured') {
      filteredWorks = works.where((work) => work.isFeatured ?? false).toList();
    }
    
    // Aplicar ordenamiento
    if (_sortBy == 'popular') {
      filteredWorks.sort((a, b) => (b.likeCount ?? 0).compareTo(a.likeCount ?? 0));
    }

    if (filteredWorks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_library_outlined,
              size: 64,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).noWorksFound,
              style: TextStyleTheme.copyWith(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(24),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: filteredWorks.length,
      itemBuilder: (context, index) {
        final work = filteredWorks[index];
        return _WorkItemWeb(work: work);
      },
    );
  }

  Widget _buildStencilsGrid(List<Stencil> stencils, int crossAxisCount) {
    if (stencils.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.brush_outlined,
              size: 64,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).noStencilsFound,
              style: TextStyleTheme.copyWith(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(24),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: stencils.length,
      itemBuilder: (context, index) {
        final stencil = stencils[index];
        return _StencilItemWeb(stencil: stencil);
      },
    );
  }

  int _calculateCrossAxisCount(double screenWidth) {
    if (screenWidth < ResponsiveBreakpoints.tablet) return 2;
    if (screenWidth < ResponsiveBreakpoints.desktop) return 3;
    if (screenWidth < ResponsiveBreakpoints.desktopLarge) return 4;
    return 5;
  }
}

// Widget para mostrar un trabajo
class _WorkItemWeb extends StatefulWidget {
  final Work work;

  const _WorkItemWeb({required this.work});

  @override
  State<_WorkItemWeb> createState() => _WorkItemWebState();
}

class _WorkItemWebState extends State<_WorkItemWeb> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ImmersiveViewerPage(
                work: widget.work,
              ),
            ),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()..scale(_isHovered ? 0.98 : 1.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Imagen
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: _isHovered ? 0.3 : 0.1),
                      blurRadius: _isHovered ? 20 : 10,
                      offset: Offset(0, _isHovered ? 10 : 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.work.thumbnailUrl ?? widget.work.imageUrl ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                        child: Icon(
                          Icons.image,
                          size: 48,
                          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // Overlay con información
              if (_isHovered)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.7),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.work.title != null)
                        Text(
                          widget.work.title!,
                          style: TextStyleTheme.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          if (widget.work.likeCount != null && widget.work.likeCount! > 0) ...[
                            Icon(
                              Icons.favorite,
                              size: 16,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              widget.work.likeCount.toString(),
                              style: TextStyleTheme.copyWith(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 12),
                          ],
                          if (widget.work.viewCount != null && widget.work.viewCount! > 0) ...[
                            Icon(
                              Icons.visibility,
                              size: 16,
                              color: Colors.white.withValues(alpha: 0.8),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              widget.work.viewCount.toString(),
                              style: TextStyleTheme.copyWith(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              // Badge de destacado
              if (widget.work.isFeatured ?? false)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDD22E),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFF141D3C),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          S.of(context).featured,
                          style: TextStyleTheme.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF141D3C),
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
}

// Widget para mostrar un stencil
class _StencilItemWeb extends StatefulWidget {
  final Stencil stencil;

  const _StencilItemWeb({required this.stencil});

  @override
  State<_StencilItemWeb> createState() => _StencilItemWebState();
}

class _StencilItemWebState extends State<_StencilItemWeb> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ImmersiveViewerPage(
                stencil: widget.stencil,
              ),
            ),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()..scale(_isHovered ? 0.98 : 1.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Imagen
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: _isHovered ? 0.3 : 0.1),
                      blurRadius: _isHovered ? 20 : 10,
                      offset: Offset(0, _isHovered ? 10 : 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.stencil.thumbnailUrl ?? widget.stencil.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                        child: Icon(
                          Icons.brush,
                          size: 48,
                          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // Overlay con información
              if (_isHovered)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.7),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.stencil.title,
                        style: TextStyleTheme.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (widget.stencil.description != null && widget.stencil.description!.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          widget.stencil.description!,
                          style: TextStyleTheme.copyWith(
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
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