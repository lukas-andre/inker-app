import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_profile_header_web.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_profile_sidebar_web.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_profile_gallery_web.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/shared/widgets/breadcrumbs_web.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class ArtistProfilePageWeb extends StatefulWidget {
  const ArtistProfilePageWeb({super.key, required Artist artist})
      : _artist = artist;

  final Artist _artist;

  static Route route(Artist artist) {
    return MaterialPageRoute<void>(
        settings: const RouteSettings(name: '/artist-profile-web'),
        builder: (_) => ArtistProfilePageWeb(
              artist: artist,
            ));
  }

  @override
  State<ArtistProfilePageWeb> createState() => _ArtistProfilePageWebState();
}

class _ArtistProfilePageWebState extends State<ArtistProfilePageWeb> {
  @override
  void initState() {
    context
        .read<ArtistProfileBloc>()
        .add(ArtistProfileEvent.setArtist(widget._artist));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth >= ResponsiveBreakpoints.desktop;
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
        builder: (context, state) {
          if (state is ArtistProfileStateInitial) {
            return const Center(child: InkerProgressIndicator());
          }

          final artist = state.artist!;
          
          return BlocProvider(
            create: (context) => ArtistPortfolioCubit(
              stencilService: context.read<StencilService>(),
              workService: context.read<WorkService>(),
              sessionService: context.read<LocalSessionService>(),
            )..loadArtistPortfolio(artist.id),
            child: Column(
              children: [
                // Header con breadcrumbs y acciones
                Container(
                  color: Theme.of(context).colorScheme.surface,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    children: [
                      // Breadcrumbs
                      Expanded(
                        child: BreadcrumbsWeb(
                          items: [
                            BreadcrumbItem(
                              label: S.of(context).explore,
                              onTap: () => Navigator.of(context).pop(),
                            ),
                            BreadcrumbItem(
                              label: S.of(context).artistProfile,
                              isActive: true,
                            ),
                          ],
                        ),
                      ),
                      // Botones de acción
                      Row(
                        children: [
                          // Botón compartir
                          OutlinedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(S.of(context).shareArtistProfile),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
                            icon: const Icon(Icons.share_outlined, size: 20),
                            label: Text(S.of(context).share),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          // Botón cotización
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(
                                CreateQuotationPage.route(
                                  artistId: artist.id,
                                ),
                              );
                            },
                            icon: const Icon(Icons.message_outlined, size: 20),
                            label: Text(S.of(context).requestQuote),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.secondary,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Divider
                const Divider(height: 1),
                // Contenido principal
                Expanded(
                  child: isLargeScreen
                      ? _buildTwoColumnLayout(context, artist)
                      : _buildSingleColumnLayout(context, artist),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTwoColumnLayout(BuildContext context, Artist artist) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Columna izquierda - Información del artista (fija)
        SizedBox(
          width: 400,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header del artista
                  ArtistProfileHeaderWeb(
                    artist: artist,
                    isFollowing: artist.isFollowedByUser ?? false,
                    onFollowPressed: () {
                      if (artist.isFollowedByUser == true) {
                        context.read<ArtistProfileBloc>().add(
                              const ArtistProfileEvent.unFollow(),
                            );
                      } else {
                        context.read<ArtistProfileBloc>().add(
                              const ArtistProfileEvent.follow(),
                            );
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  // Información adicional del artista
                  ArtistProfileSidebarWeb(
                    artist: artist,
                    onReviewsPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/artist-profile-reviews',
                        arguments: artist,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        // Columna derecha - Galería (expandible)
        Expanded(
          child: ArtistProfileGalleryWeb(
            artistId: artist.id,
          ),
        ),
      ],
    );
  }

  Widget _buildSingleColumnLayout(BuildContext context, Artist artist) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header del artista
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: ArtistProfileHeaderWeb(
                  artist: artist,
                  isFollowing: artist.isFollowedByUser ?? false,
                  onFollowPressed: () {
                    if (artist.isFollowedByUser == true) {
                      context.read<ArtistProfileBloc>().add(
                            const ArtistProfileEvent.unFollow(),
                          );
                    } else {
                      context.read<ArtistProfileBloc>().add(
                            const ArtistProfileEvent.follow(),
                          );
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Información adicional
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: ArtistProfileSidebarWeb(
                  artist: artist,
                  onReviewsPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/artist-profile-reviews',
                      arguments: artist,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Galería
            ArtistProfileGalleryWeb(
              artistId: artist.id,
            ),
          ],
        ),
      ),
    );
  }
}