import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_works_cubit/artist_works_cubit.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_portfolio_gallery.dart';
import 'package:inker_studio/ui/immersive_viewer/vertical_immersive_viewer_page.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';

class ArtistProfileGallerySection extends StatefulWidget {
  final String artistId;
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
            _buildLocationSection(),
            const SizedBox(height: 20),
            _buildSectionHeader(),
            _buildContent(state),
          ],
        );
      },
    );
  }

  Widget _buildSectionHeader() {
    return Column(
      children: [
        // Portfolio header with reviews button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).portfolio,
                style: TextStyleTheme.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // Botón para ver reseñas
              OutlinedButton.icon(
                onPressed: widget.onReviewsPressed,
                icon: Icon(
                  Icons.star, 
                  color: Theme.of(context).colorScheme.secondary, 
                  size: 18
                ),
                label: Text(
                  S.of(context).reviews,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  side: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  Widget _buildLocationSection() {
    return BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
      builder: (context, profileState) {
        final artist = profileState.artist;
        if (artist == null || artist.distance == null) return const SizedBox.shrink();
        
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Ubicación del Estudio',
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Av. Providencia 1234, Providencia',
                style: TextStyleTheme.copyWith(
                  fontSize: 14,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
              Text(
                'Santiago, Chile',
                style: TextStyleTheme.copyWith(
                  fontSize: 13,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.near_me,
                        size: 16,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${artist.distance?.toStringAsFixed(1)} ${artist.distanceUnit ?? 'km'}',
                        style: TextStyleTheme.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () => _showNavigationOptions(context),
                    icon: Icon(
                      Icons.directions,
                      size: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    label: Text(
                      'Cómo llegar',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
  
  void _showNavigationOptions(BuildContext context) async {
    // Default location for MVP
    final location = const LatLng(-33.4489, -70.6693);
    final locationName = 'Estudio de Tatuajes';
    
    final availableMaps = await MapLauncher.installedMaps;
    
    if (!context.mounted) return;
    
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Abrir en',
                  style: TextStyleTheme.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                ...availableMaps.map((map) => ListTile(
                  onTap: () {
                    map.showDirections(
                      destination: Coords(location.latitude, location.longitude),
                      destinationTitle: locationName,
                    );
                    Navigator.pop(context);
                  },
                  title: Text(
                    map.mapName,
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                )),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
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
              color: Theme.of(context).colorScheme.surface, // Ensure the background color is Theme.of(context).colorScheme.primary
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
              Icon(Icons.error_outline, size: 48, color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 16),
              Text(
                S.of(context).errorLoadingWorks,
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
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh),
                label: Text(S.of(context).retry),
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
              S.of(context).noWorksShared,
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
              Icon(Icons.star, size: 16, color: Theme.of(context).colorScheme.secondary),
              const SizedBox(width: 8),
              Text(
                S.of(context).featuredWorks,
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
                              color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
                                .withLightness(0.15)
                                .toColor(),
                              child:
                                Icon(Icons.error, color: Theme.of(context).colorScheme.error, size: 24),
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
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  S.of(context).featured,
                                  style: const TextStyle(
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