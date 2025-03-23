import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_works_cubit/artist_works_cubit.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_portfolio_gallery.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';

class ArtistProfileGallerySection extends StatefulWidget {
  final int artistId;
  final VoidCallback onReviewsPressed;

  const ArtistProfileGallerySection({
    Key? key,
    required this.artistId,
    required this.onReviewsPressed,
  }) : super(key: key);

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
        
        return Container(
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
}