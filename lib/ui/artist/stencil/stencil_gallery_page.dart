import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class StencilGalleryPage extends StatefulWidget {
  const StencilGalleryPage({super.key});

  @override
  State<StencilGalleryPage> createState() => _StencilGalleryPageState();
}

class _StencilGalleryPageState extends State<StencilGalleryPage> {
  bool _showHidden = true;
  
  @override
  void initState() {
    super.initState();
    _loadStencils();
  }

  void _loadStencils() {
    context.read<ArtistStencilBloc>().add(ArtistStencilEvent.loadStencils(_showHidden));
  }

  void _toggleShowHidden() {
    setState(() {
      _showHidden = !_showHidden;
    });
    _loadStencils();
  }

  void _navigateToAddStencil() {
    Navigator.pushNamed(context, '/stencils/add').then((_) => _loadStencils());
  }

  void _navigateToStencilDetail(Stencil stencil) {
    Navigator.pushNamed(
      context, 
      '/stencils/detail',
      arguments: stencil,
    ).then((_) => _loadStencils());
  }

  void _toggleFeatured(Stencil stencil) {
    context.read<ArtistStencilBloc>().add(ArtistStencilEvent.toggleFeatured(stencil));
  }

  void _toggleVisibility(Stencil stencil) {
    context.read<ArtistStencilBloc>().add(ArtistStencilEvent.toggleVisibility(stencil));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(S.of(context).stencilGallery, style: TextStyleTheme.headline1),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(_showHidden ? Icons.visibility : Icons.visibility_off),
            onPressed: _toggleShowHidden,
            tooltip: _showHidden 
                ? S.of(context).showingAllStencils
                : S.of(context).hidingHiddenStencils,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddStencil,
        backgroundColor: secondaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: BlocConsumer<ArtistStencilBloc, ArtistStencilState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: message,
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (stencils) => _buildGallery(stencils),
            submitting: () => const Center(child: InkerProgressIndicator()),
            error: (_) => _buildErrorView(),
            orElse: () => const Center(child: InkerProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildGallery(List<Stencil> stencils) {
    if (stencils.isEmpty) {
      return _buildEmptyView();
    }

    final featured = stencils.where((s) => s.isFeatured).toList();
    final regular = stencils.where((s) => !s.isFeatured).toList();

    return CustomScrollView(
      slivers: [
        if (featured.isNotEmpty) ...[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                S.of(context).featuredStencils,
                style: TextStyleTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: featured.length,
                itemBuilder: (context, index) {
                  return _buildFeaturedStencilItem(featured[index]);
                },
              ),
            ),
          ),
        ],
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, featured.isEmpty ? 16 : 24, 16, 8),
            child: Text(
              featured.isEmpty ? S.of(context).allStencils : S.of(context).allOtherStencils,
              style: TextStyleTheme.headline3.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return _buildStencilItem(regular[index]);
              },
              childCount: regular.length,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedStencilItem(Stencil stencil) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _navigateToStencilDetail(stencil),
                child: Image.network(
                  stencil.thumbnailUrl ?? stencil.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.grey.shade400,
                          size: 40,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Row(
              children: [
                if (stencil.isHidden)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.visibility_off,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          S.of(context).hidden,
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    stencil.title,
                    style: TextStyleTheme.subtitle1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (stencil.description != null && stencil.description!.isNotEmpty)
                    Text(
                      stencil.description!,
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.grey.shade300,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          stencil.isFeatured ? Icons.star : Icons.star_border,
                          color: stencil.isFeatured ? secondaryColor : Colors.grey.shade400,
                          size: 20,
                        ),
                        onPressed: () => _toggleFeatured(stencil),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: stencil.isFeatured ? S.of(context).unfeature : S.of(context).feature,
                      ),
                      const SizedBox(width: 12),
                      IconButton(
                        icon: Icon(
                          stencil.isHidden ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey.shade400,
                          size: 20,
                        ),
                        onPressed: () => _toggleVisibility(stencil),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: stencil.isHidden ? S.of(context).show : S.of(context).hide,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStencilItem(Stencil stencil) {
    return Container(
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _navigateToStencilDetail(stencil),
                child: Image.network(
                  stencil.thumbnailUrl ?? stencil.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.grey.shade400,
                          size: 40,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Row(
              children: [
                if (stencil.isHidden)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    stencil.title,
                    style: TextStyleTheme.subtitle1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          stencil.isFeatured ? Icons.star : Icons.star_border,
                          color: stencil.isFeatured ? secondaryColor : Colors.grey.shade400,
                          size: 20,
                        ),
                        onPressed: () => _toggleFeatured(stencil),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: stencil.isFeatured ? S.of(context).unfeature : S.of(context).feature,
                      ),
                      IconButton(
                        icon: Icon(
                          stencil.isHidden ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey.shade400,
                          size: 20,
                        ),
                        onPressed: () => _toggleVisibility(stencil),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: stencil.isHidden ? S.of(context).show : S.of(context).hide,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.brush,
            size: 72,
            color: Colors.grey.shade600,
          ),
          const SizedBox(height: 24),
          Text(
            S.of(context).noStencilsYet,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            S.of(context).addYourFirstStencil,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.grey.shade400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _navigateToAddStencil,
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: const Icon(Icons.add, color: Colors.white),
            label: Text(S.of(context).addStencil, style: TextStyleTheme.button),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 72,
            color: Colors.red.shade400,
          ),
          const SizedBox(height: 24),
          Text(
            S.of(context).errorLoadingStencils,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            S.of(context).tryAgainLater,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.grey.shade400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _loadStencils,
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: const Icon(Icons.refresh),
            label: Text(S.of(context).refresh),
          ),
        ],
      ),
    );
  }
}