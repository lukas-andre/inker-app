import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/immersive_viewer/immersive_viewer_page.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class InspirationResultsWeb extends StatelessWidget {
  final List<Work> works;
  final List<Stencil> stencils;
  final ContentType contentType;
  final bool isLoadingMoreWorks;
  final bool isLoadingMoreStencils;
  final ScrollController scrollController;
  final VoidCallback? onGenerateTattoo;
  final bool useHorizontalLayout;

  const InspirationResultsWeb({
    super.key,
    required this.works,
    required this.stencils,
    required this.contentType,
    required this.isLoadingMoreWorks,
    required this.isLoadingMoreStencils,
    required this.scrollController,
    this.onGenerateTattoo,
    this.useHorizontalLayout = false,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = _calculateCrossAxisCount(screenWidth);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: useHorizontalLayout
          ? _buildHorizontalLayout(context)
          : _buildGridLayout(context, crossAxisCount),
    );
  }

  Widget _buildFilterBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Row(
        children: [
          // Content type filter
          DropdownButton<ContentType>(
            value: contentType,
            underline: const SizedBox(),
            items: [
              DropdownMenuItem(
                value: ContentType.both,
                child: Text('Todos'),
              ),
              DropdownMenuItem(
                value: ContentType.works,
                child: Text('Trabajos'),
              ),
              DropdownMenuItem(
                value: ContentType.stencils,
                child: Text('Stencils'),
              ),
            ],
            onChanged: (value) {
              // TODO: Implement content type filter
            },
          ),
          const Spacer(),
          Text(
            '${works.length + stencils.length} resultados',
            style: TextStyleTheme.copyWith(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  int _calculateCrossAxisCount(double screenWidth) {
    if (screenWidth < ResponsiveBreakpoints.tablet) return 2;
    if (screenWidth < ResponsiveBreakpoints.desktop) return 3;
    if (screenWidth < ResponsiveBreakpoints.desktopLarge) return 4;
    return 5;
  }

  Widget _buildHorizontalLayout(BuildContext context) {
    final showBoth = contentType == ContentType.both && (works.isNotEmpty || stencils.isNotEmpty);
    
    if (showBoth) {
      // Two column layout with single scroll
      return SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Works column
                  if (works.isNotEmpty || contentType == ContentType.both)
                    Expanded(
                      child: _buildColumnSection(
                        context,
                        title: 'Trabajos',
                        icon: Icons.palette,
                        items: works,
                        isLoading: isLoadingMoreWorks,
                        itemBuilder: (work) => _WorkItemWeb(work: work as Work),
                        scrollable: false,
                      ),
                    ),
                  if (works.isNotEmpty && stencils.isNotEmpty)
                    const SizedBox(width: 24),
                  // Stencils column
                  if (stencils.isNotEmpty || contentType == ContentType.both)
                    Expanded(
                      child: _buildColumnSection(
                        context,
                        title: 'Stencils',
                        icon: Icons.brush,
                        items: stencils,
                        isLoading: isLoadingMoreStencils,
                        itemBuilder: (stencil) => _StencilItemWeb(stencil: stencil as Stencil),
                        scrollable: false,
                      ),
                    ),
                ],
              ),
              // Loading indicators at the bottom
              if (isLoadingMoreWorks || isLoadingMoreStencils)
                Container(
                  padding: const EdgeInsets.all(32),
                  child: const CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      );
    } else {
      // Single column layout
      final items = contentType == ContentType.works ? works : stencils;
      final isLoading = contentType == ContentType.works ? isLoadingMoreWorks : isLoadingMoreStencils;
      final title = contentType == ContentType.works ? 'Trabajos' : 'Stencils';
      final icon = contentType == ContentType.works ? Icons.palette : Icons.brush;
      
      return _buildColumnSection(
        context,
        title: title,
        icon: icon,
        items: items,
        isLoading: isLoading,
        itemBuilder: contentType == ContentType.works 
            ? (work) => _WorkItemWeb(work: work as Work)
            : (stencil) => _StencilItemWeb(stencil: stencil as Stencil),
        scrollable: true,
      );
    }
  }

  Widget _buildColumnSection<T>(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<T> items,
    required bool isLoading,
    required Widget Function(T) itemBuilder,
    bool scrollable = true,
  }) {
    final gridView = GridView.builder(
      controller: scrollable ? scrollController : null,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      shrinkWrap: !scrollable,
      physics: scrollable ? null : const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateColumnCount(MediaQuery.of(context).size.width),
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: items.length + (isLoading && scrollable ? 1 : 0),
      itemBuilder: (context, index) {
        if (index < items.length) {
          return itemBuilder(items[index]);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
          child: Row(
            children: [
              Icon(
                icon,
                color: Theme.of(context).colorScheme.secondary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                '$title (${items.length})',
                style: TextStyleTheme.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
        // Grid
        if (scrollable)
          Expanded(child: gridView)
        else
          gridView,
      ],
    );
  }

  int _calculateColumnCount(double width) {
    if (contentType == ContentType.both) {
      // For two-column layout, use fewer items per column
      if (width < 1400) return 2;
      if (width < 1800) return 3;
      return 4;
    } else {
      // For single column layout
      if (width < ResponsiveBreakpoints.tablet) return 2;
      if (width < ResponsiveBreakpoints.desktop) return 3;
      if (width < ResponsiveBreakpoints.desktopLarge) return 4;
      return 5;
    }
  }

  Widget _buildGridLayout(BuildContext context, int crossAxisCount) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        // Works section
        if (contentType == ContentType.works || contentType == ContentType.both) ...[
          if (works.isNotEmpty) ...[
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Icon(
                      Icons.palette,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Trabajos (${works.length})',
                      style: TextStyleTheme.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index < works.length) {
                      return _WorkItemWeb(work: works[index]);
                    }
                    return null;
                  },
                  childCount: works.length,
                ),
              ),
            ),
            if (isLoadingMoreWorks)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        ],

        // Stencils section
        if (contentType == ContentType.stencils || contentType == ContentType.both) ...[
          if (stencils.isNotEmpty) ...[
            SliverPadding(
              padding: EdgeInsets.fromLTRB(24, works.isNotEmpty ? 32 : 16, 24, 8),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Icon(
                      Icons.brush,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Stencils (${stencils.length})',
                      style: TextStyleTheme.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index < stencils.length) {
                      return _StencilItemWeb(stencil: stencils[index]);
                    }
                    return null;
                  },
                  childCount: stencils.length,
                ),
              ),
            ),
            if (isLoadingMoreStencils)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        ],

        // Bottom padding
        const SliverPadding(
          padding: EdgeInsets.only(bottom: 40),
        ),
      ],
    );
  }
}

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
              builder: (context) => ImmersiveViewerPage(work: widget.work),
            ),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: _isHovered ? 0.15 : 0.08),
                blurRadius: _isHovered ? 12 : 6,
                offset: Offset(0, _isHovered ? 4 : 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Image
                CachedNetworkImage(
                  imageUrl: widget.work.thumbnailUrl ?? widget.work.imageUrl ?? '',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                    child: Icon(
                      Icons.image,
                      size: 48,
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                    child: Icon(
                      Icons.image,
                      size: 48,
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                    ),
                  ),
                ),
                
                // Overlay with info
                if (_isHovered)
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.work.title != null)
                          Text(
                            widget.work.title!,
                            style: TextStyleTheme.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        if (widget.work.artist != null) ...[
                          const SizedBox(height: 4),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                ArtistProfilePage.route(widget.work.artist!),
                              );
                            },
                            child: Text(
                              'Por ${widget.work.artist!.username ?? 'Artista'}',
                              style: TextStyleTheme.copyWith(
                                fontSize: 12,
                                color: Colors.white.withValues(alpha: 0.8),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
              builder: (context) => ImmersiveViewerPage(stencil: widget.stencil),
            ),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: _isHovered ? 0.15 : 0.08),
                blurRadius: _isHovered ? 12 : 6,
                offset: Offset(0, _isHovered ? 4 : 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Image
                CachedNetworkImage(
                  imageUrl: widget.stencil.thumbnailUrl ?? widget.stencil.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                    child: Icon(
                      Icons.brush,
                      size: 48,
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                    child: Icon(
                      Icons.brush,
                      size: 48,
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                    ),
                  ),
                ),
                
                // Overlay with info
                if (_isHovered)
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.stencil.title,
                          style: TextStyleTheme.copyWith(
                            fontSize: 14,
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
                              fontSize: 12,
                              color: Colors.white.withValues(alpha: 0.8),
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
      ),
    );
  }
}