import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_works_cubit/artist_works_cubit.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_profile_gallery_section.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/artist_profile_header.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfilePage extends StatefulWidget {
  const ArtistProfilePage({super.key, required Artist artist})
      : _artist = artist;

  final Artist _artist;

  static Route route(Artist artist) {
    return MaterialPageRoute<void>(
        settings: const RouteSettings(name: '/artist-profile'),
        builder: (_) => ArtistProfilePage(
              artist: artist,
            ));
  }

  @override
  State<ArtistProfilePage> createState() => _ArtistProfilePageState();
}

class _ArtistProfilePageState extends State<ArtistProfilePage> {
  @override
  void initState() {
    context
        .read<ArtistProfileBloc>()
        .add(ArtistProfileEvent.setArtist(widget._artist));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: primaryColor,
          extendBodyBehindAppBar: true,
          floatingActionButton: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Botón para compartir perfil
              FloatingActionButton(
                heroTag: 'share_button',
                backgroundColor: Colors.white,
                foregroundColor: primaryColor,
                elevation: 4,
                child: const Icon(Icons.share_outlined, size: 22),
                onPressed: () {
                  final artistState = context.read<ArtistProfileBloc>().state;
                  if (artistState.artist != null) {
                    // Mostrar modal de compartir
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Compartiendo perfil del artista...'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    
                    // Aquí implementarías la función de compartir usando
                    // un package como share_plus
                  }
                },
              ),
              const SizedBox(width: 16),
              // Botón de cotización original
              FloatingActionButton.extended(
                heroTag: 'quote_button',
                backgroundColor: secondaryColor,
                foregroundColor: Colors.white,
                elevation: 4,
                icon: const Icon(Icons.message_outlined, size: 22),
                label: const Text(
                  'Solicitar Cotización',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                extendedPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                onPressed: () {
                  final artistState = context.read<ArtistProfileBloc>().state;
                  if (artistState.artist != null) {
                    Navigator.of(context).push(
                      CreateQuotationPage.route(
                        artistId: artistState.artist!.id,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          body: BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
            builder: (context, state) {
              if (state is ArtistProfileStateInitial) {
                return const Center(child: InkerProgressIndicator());
              }
              
              final artist = state.artist!;
              return BlocProvider(
                create: (context) => ArtistWorksCubit(
                  agendaService: context.read<AgendaService>(),
                  workService: context.read<WorkService>(),
                  sessionService: context.read(),
                ),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    // Profile Header
                    SliverToBoxAdapter(
                      child: ArtistProfileHeader(
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
                        onBackPressed: () {
                          Navigator.of(context).pop();
                          context
                              .read<ArtistProfileBloc>()
                              .add(const ArtistProfileEvent.started());
                        },
                      ),
                    ),
                    
                    // Gallery Section
                    SliverToBoxAdapter(
                      child: ArtistProfileGallerySection(
                        artistId: artist.id,
                        onReviewsPressed: () {
                          Navigator.pushNamed(
                            context, 
                            '/artist-profile-reviews', 
                            arguments: artist
                          );
                        },
                      ),
                    ),
                    
                    // Extra space at the bottom for more scrolling
                    SliverToBoxAdapter(
                      child: SizedBox(height: 100),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}