import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_works_cubit/artist_works_cubit.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_portfolio_gallery.dart';
import 'package:inker_studio/ui/immersive_viewer/vertical_immersive_viewer_page.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfileGallerySection extends StatefulWidget {
  final int artistId;
  final VoidCallback onReviewsPressed;

  const ArtistProfileGallerySection({
    super.key,
    required this.artistId,
    required this.onReviewsPressed,
  });

  @override
  State<ArtistProfileGallerySection> createState() => _ArtistProfileGallerySectionState();
}

class _ArtistProfileGallerySectionState extends State<ArtistProfileGallerySection> {
  @override
  void initState() {
    super.initState();
    
    // Cargar los trabajos del artista
    context.read<ArtistWorksCubit>().loadArtistWorks(widget.artistId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistWorksCubit, ArtistWorksState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildSectionHeader(),
            _buildContent(state),
          ],
        );
      },
    );
  }

  Widget _buildSectionHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Portfolio',
            style: TextStyleTheme.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // Botón para ver reseñas
          OutlinedButton.icon(
            onPressed: widget.onReviewsPressed,
            icon: const Icon(
              Icons.star, 
              color: secondaryColor, 
              size: 18
            ),
            label: const Text(
              'Ver Reseñas',
              style: TextStyle(
                fontSize: 14,
                color: secondaryColor,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              side: const BorderSide(color: secondaryColor, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(ArtistWorksState state) {
    return state.when(
      initial: () => const SizedBox(height: 200),
      loading: () => const SizedBox(
        height: 300,
        child: Center(child: InkerProgressIndicator()),
      ),
      loaded: (agendaWorks, portfolioWorks) {
        // Check if both galleries are empty
        if (agendaWorks.isEmpty && portfolioWorks.isEmpty) {
          return _buildEmptyState();
        }
        
        // Verificar si hay trabajos destacados
        final featuredWorks = portfolioWorks.where((work) => work.isFeatured).toList();
        final bool hasFeaturedWorks = featuredWorks.isNotEmpty;
        
        return Column(
          children: [
            // Carrusel de trabajos destacados si están disponibles
            if (hasFeaturedWorks) _buildFeaturedWorksCarousel(featuredWorks),
            
            // Portfolio completo 
            Container(
              height: 700, // Increased height to allow more content scrolling
              color: primaryColor, // Ensure the background color is primaryColor
              child: BlocProvider(
                create: (context) => ArtistPortfolioCubit(
                  stencilService: context.read<StencilService>(),
                  workService: context.read<WorkService>(),
                  sessionService: context.read<LocalSessionService>(),
                )..loadArtistPortfolio(widget.artistId),
                child: ArtistPortfolioGallery(
                  works: portfolioWorks,
                  artistId: widget.artistId,
                  isMinimalist: true,
                ),
              ),
            ),
          ],
        );
      },
      error: (message) => SizedBox(
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: redColor),
              const SizedBox(height: 16),
              Text(
                'Error al cargar los trabajos',
                style: TextStyleTheme.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                message,
                style: TextStyleTheme.copyWith(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => context.read<ArtistWorksCubit>().loadArtistWorks(widget.artistId),
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh),
                label: const Text('Reintentar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_library_outlined,
              size: 64,
              color: Colors.white.withOpacity(0.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Este artista aún no ha compartido trabajos',
              style: TextStyleTheme.copyWith(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Carrusel de trabajos destacados
  Widget _buildFeaturedWorksCarousel(List<Work> featuredWorks) {
    // Mostrar solo hasta 3 trabajos destacados en el carrusel
    final displayedWorks = featuredWorks.take(3).toList();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 12),
          child: Row(
            children: [
              const Icon(Icons.star, size: 16, color: secondaryColor),
              const SizedBox(width: 8),
              Text(
                'Trabajos destacados',
                style: TextStyleTheme.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9, initialPage: 0),
            itemCount: displayedWorks.length,
            itemBuilder: (context, index) {
              final work = displayedWorks[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: GestureDetector(
                  onTap: () {
                    // Navegación al detalle del trabajo
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerticalImmersiveViewerPage(
                          works: featuredWorks,
                          stencils: const [],
                          initialWorkIndex: index,
                          startWithStencils: false,
                          viewSource: ViewSource.profile,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImage(
                            imageUrl: work.imageUrl,
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(
                              child: InkerProgressIndicator(radius: 12),
                            ),
                            errorWidget: (context, url, error) => Container(
                              color: HSLColor.fromColor(primaryColor)
                                .withLightness(0.15)
                                .toColor(),
                              child:
                                const Icon(Icons.error, color: redColor, size: 24),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.transparent,
                                ],
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            child: Text(
                              work.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 3,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Destacado',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
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
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}