import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/explore/widgets/artist_item_web.dart';
import 'package:inker_studio/ui/customer/explore/widgets/featured_artists_carousel.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class ExplorerListViewWeb extends StatefulWidget {
  const ExplorerListViewWeb({super.key});

  @override
  State<ExplorerListViewWeb> createState() => _ExplorerListViewWebState();
}

class _ExplorerListViewWebState extends State<ExplorerListViewWeb> {
  bool _isTimedOut = false;
  bool _hasInitialLoad = false;

  @override
  void initState() {
    super.initState();
    print('[ExplorerListViewWeb] initState - Starting load timeout');
    // Set a timeout to detect if loading is stuck
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted && !_hasInitialLoad) {
        print('[ExplorerListViewWeb] Load timeout reached - no initial data received');
        setState(() {
          _isTimedOut = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistsListBloc, ArtistsListState>(
      builder: (context, state) {
        print('[ExplorerListViewWeb] BlocBuilder - State: ${state.runtimeType}, Artists count: ${state.artists.length}');
        
        // Track if we've had an initial load
        if (!_hasInitialLoad && state.artists.isNotEmpty) {
          print('[ExplorerListViewWeb] Initial load complete - ${state.artists.length} artists loaded');
          _hasInitialLoad = true;
        }

        // Handle loading state
        if (state is ArtistsListStateInitial && !_isTimedOut) {
          print('[ExplorerListViewWeb] Showing loading indicator');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkerProgressIndicator(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(height: 16),
                Text(
                  'Cargando artistas...',
                  style: TextStyleTheme.copyWith(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          );
        }

        // Handle timeout
        if (_isTimedOut && state.artists.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64,
                  color: Theme.of(context).colorScheme.error.withValues(alpha: 0.7),
                ),
                const SizedBox(height: 16),
                Text(
                  'Error al cargar artistas',
                  style: TextStyleTheme.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Por favor, recarga la página',
                  style: TextStyleTheme.copyWith(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // Reset timeout and trigger refresh
                    setState(() {
                      _isTimedOut = false;
                    });
                    // Trigger a refresh event if needed
                    context.read<ArtistsListBloc>().add(const ArtistsListEvent.started());
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reintentar'),
                ),
              ],
            ),
          );
        }

        // Handle empty state (after loading)
        if (state.artists.isEmpty && !_isTimedOut) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_off,
                  size: 64,
                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                ),
                const SizedBox(height: 16),
                Text(
                  S.of(context).noArtistsFound,
                  style: TextStyleTheme.copyWith(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          );
        }

        // Filtrar artistas destacados (rating >= 4.5)
        final featuredArtists = state.artists
            .where((artist) => artist.rating != null && double.tryParse(artist.rating!) != null && double.parse(artist.rating!) >= 4.5)
            .toList()
          ..sort((a, b) => (double.tryParse(b.rating ?? '0') ?? 0).compareTo(double.tryParse(a.rating ?? '0') ?? 0));

        // Calcular número de columnas según el ancho de pantalla
        final screenWidth = MediaQuery.of(context).size.width;
        int crossAxisCount = 2;
        if (screenWidth >= ResponsiveBreakpoints.tablet) {
          crossAxisCount = 3;
        }
        if (screenWidth >= ResponsiveBreakpoints.desktop) {
          crossAxisCount = 4;
        }
        if (screenWidth >= ResponsiveBreakpoints.desktopLarge) {
          crossAxisCount = 5;
        }

        return RefreshIndicator(
          onRefresh: () async {
            // TODO: Implement refresh functionality
            // context.read<ArtistsListBloc>().add(const RefreshArtistsList());
          },
          child: CustomScrollView(
            slivers: [
              // Sección de artistas destacados
              if (featuredArtists.isNotEmpty) ...[
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 28,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          S.of(context).featuredArtists,
                          style: TextStyleTheme.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: FeaturedArtistsCarousel(
                    artists: featuredArtists,
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(bottom: 32),
                ),
              ],

              // Título de todos los artistas
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Icon(
                        Icons.explore,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        S.of(context).allArtists,
                        style: TextStyleTheme.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          '${state.artists.length}',
                          style: TextStyleTheme.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Grid de artistas
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == state.artists.length) {
                        return Center(child: InkerProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                        ));
                      }
                      final artist = state.artists[index];
                      return ArtistItemWeb(artist: artist);
                    },
                    childCount: state.artists.length,
                  ),
                ),
              ),

              const SliverPadding(
                padding: EdgeInsets.only(bottom: 24),
              ),
            ],
          ),
        );
      },
    );
  }
}