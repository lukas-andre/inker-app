import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
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
              // Control de rango de búsqueda
              SliverToBoxAdapter(
                child: _RangeControl(),
              ),
              
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

class _RangeControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      buildWhen: (previous, current) => 
        previous.range != current.range || 
        previous.isLoading != current.isLoading ||
        previous.artistFounded.length != current.artistFounded.length,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.fromLTRB(24, 16, 24, 12),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).dividerColor.withValues(alpha: 0.2),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Compact header
              Row(
                children: [
                  Icon(
                    Icons.location_searching,
                    size: 18,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Radio: ${state.range.toStringAsFixed(0)} km',
                    style: TextStyleTheme.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const Spacer(),
                  if (state.artistFounded.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '${state.artistFounded.length}',
                        style: TextStyleTheme.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              // Compact slider row
              Row(
                children: [
                  // Quick range buttons
                  Row(
                    children: [
                      _QuickRangeChip(
                        label: '5',
                        value: 5,
                        currentValue: state.range,
                        onSelected: () => _updateRange(context, 5),
                      ),
                      const SizedBox(width: 8),
                      _QuickRangeChip(
                        label: '10',
                        value: 10,
                        currentValue: state.range,
                        onSelected: () => _updateRange(context, 10),
                      ),
                      const SizedBox(width: 8),
                      _QuickRangeChip(
                        label: '20',
                        value: 20,
                        currentValue: state.range,
                        onSelected: () => _updateRange(context, 20),
                      ),
                      const SizedBox(width: 8),
                      _QuickRangeChip(
                        label: '50',
                        value: 50,
                        currentValue: state.range,
                        onSelected: () => _updateRange(context, 50),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  // Slider
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 4,
                        activeTrackColor: Theme.of(context).colorScheme.secondary,
                        inactiveTrackColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                        thumbColor: Theme.of(context).colorScheme.secondary,
                        overlayColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
                      ),
                      child: Slider(
                        value: state.range,
                        min: 1.0,
                        max: 50.0,
                        divisions: 49,
                        onChanged: state.isLoading 
                          ? null 
                          : (value) {
                              context.read<ExplorerPageBloc>().add(
                                ExplorerPageUpdateRange(range: value),
                              );
                            },
                        onChangeEnd: state.isLoading 
                          ? null 
                          : (value) {
                              final location = context.read<LocationBloc>().state.lastKnownLocation;
                              if (location != null) {
                                context.read<ExplorerPageBloc>().add(
                                  ExplorerPageFetchArtists(location: location),
                                );
                              }
                            },
                      ),
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

  void _updateRange(BuildContext context, double value) {
    context.read<ExplorerPageBloc>().add(
      ExplorerPageUpdateRange(range: value),
    );
    final location = context.read<LocationBloc>().state.lastKnownLocation;
    if (location != null) {
      context.read<ExplorerPageBloc>().add(
        ExplorerPageFetchArtists(location: location),
      );
    }
  }
}

class _QuickRangeChip extends StatelessWidget {
  final String label;
  final double value;
  final double currentValue;
  final VoidCallback onSelected;

  const _QuickRangeChip({
    required this.label,
    required this.value,
    required this.currentValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = (currentValue - value).abs() < 0.1;
    
    return SizedBox(
      height: 28,
      child: FilterChip(
        label: Text(
          label,
          style: TextStyleTheme.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : Theme.of(context).colorScheme.secondary,
          ),
        ),
        selected: isSelected,
        onSelected: (_) => onSelected(),
        selectedColor: Theme.of(context).colorScheme.secondary,
        checkmarkColor: Colors.white,
        showCheckmark: false,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(
            color: Theme.of(context).colorScheme.secondary.withValues(alpha: isSelected ? 1.0 : 0.3),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}