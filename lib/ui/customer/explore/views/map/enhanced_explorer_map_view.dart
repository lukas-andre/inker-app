import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/ui/customer/explore/views/map/compact_range_slider.dart';

class EnhancedExplorerMapView extends StatefulWidget {
  const EnhancedExplorerMapView({super.key});

  @override
  State<EnhancedExplorerMapView> createState() => _EnhancedExplorerMapViewState();
}

class _EnhancedExplorerMapViewState extends State<EnhancedExplorerMapView> 
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    
    // Start with controls visible
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MapBloc mapBloc = context.read<MapBloc>();
    final size = MediaQuery.of(context).size;
    final initialLocation = context.read<LocationBloc>().state.myLocationHistory.last;
    
    // Better initial zoom - closer view
    const double initialZoom = 13.0;
    
    final CameraPosition initialCameraPosition = CameraPosition(
      target: initialLocation,
      zoom: initialZoom,
    );

    return Stack(
      children: [
        // Map
        BlocBuilder<MapBloc, MapState>(
          buildWhen: (previous, current) =>
              previous.selectedMarker != current.selectedMarker ||
              previous.markers != current.markers ||
              previous.searchRadius != current.searchRadius,
          builder: (context, state) {
            final markers = state.markers.entries.map((e) => e.key).toSet();
            
            return SizedBox(
              width: size.width,
              height: size.height,
              child: Listener(
                onPointerMove: (event) =>
                    mapBloc.add(const StopFollowingLocationEvent()),
                child: GoogleMap(
                  initialCameraPosition: initialCameraPosition,
                  onTap: (argument) => mapBloc.add(
                    const DeselectAllMarkerEvent(closeDragSheet: true),
                  ),
                  markers: markers,
                  circles: state.searchRadius != null ? {state.searchRadius!} : {},
                  compassEnabled: false,
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  onMapCreated: ((controller) {
                    mapBloc.add(InitMapEvent(controller));
                    // Trigger initial circle display
                    final location = context.read<LocationBloc>().state.lastKnownLocation;
                    if (location != null) {
                      mapBloc.add(UpdateSearchRadiusEvent(
                        radiusInKm: 5.0,
                        center: location,
                      ));
                    }
                  }),
                ),
              ),
            );
          },
        ),
        
        // Enhanced Controls Layer
        Positioned.fill(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Column(
              children: [
                // Top controls
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: _buildTopControls(context),
                  ),
                ),
                
                const Spacer(),
                
                // Bottom controls
                BlocBuilder<MapBloc, MapState>(
                  builder: (context, mapState) {
                  // Adjust bottom padding based on draggable sheet state
                  final bottomPadding = mapState.isDragSheetOpen 
                    ? Responsive.value(context, 
                        mobile: 280,  // More space when sheet is open
                        tablet: 320,
                        desktop: 360,
                      )
                    : Responsive.value(context, 
                        mobile: 100, 
                        tablet: 120,
                        desktop: 140,
                      );
                      
                  return AnimatedPadding(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOutCubic,
                    padding: EdgeInsets.only(bottom: bottomPadding),
                    child: Column(
                      children: [
                        // Show navigator when bottomsheet is OPEN
                        if (mapState.isDragSheetOpen) ...[
                          _buildArtistNavigator(context),
                          const SizedBox(height: 12),
                        ],
                        // Show range control when bottomsheet is CLOSED
                        if (!mapState.isDragSheetOpen)
                          const CompactRangeSlider(),
                      ],
                    ),
                  );
                },
              ),
              ],
            ),
          ),
        ),
        
        // Map action buttons
        _buildMapActionButtons(context, mapBloc),
      ],
    );
  }
  
  Widget _buildTopControls(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        if (state.artistFounded.isEmpty && !state.isLoading) {
          return const SizedBox.shrink();
        }
        
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withAlpha(230),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(
                Icons.explore,
                color: Theme.of(context).colorScheme.secondary,
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.isLoading 
                        ? S.of(context).searching
                        : '${state.artistFounded.length} ${state.artistFounded.length == 1 ? "Artista" : "Artistas"}',
                      style: TextStyleTheme.subtitle1.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Dentro de ${state.range.toStringAsFixed(1)} km',
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.white.withAlpha(179),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Quick filter button
              if (!state.isLoading && state.artistFounded.isNotEmpty)
                IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    // TODO: Show filter options
                  },
                  tooltip: 'Filtrar',
                ),
            ],
          ),
        );
      },
    );
  }
  
  Widget _buildArtistNavigator(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, mapState) {
        final artists = mapState.markers.entries.toList();
        
        // Hide when no artists or no selection
        if (artists.isEmpty || mapState.selectedMarker == null) {
          return const SizedBox.shrink();
        }
        
        // Find current selected index
        final currentIndex = artists.indexWhere(
          (e) => e.key.markerId == mapState.selectedMarker
        );
        
        if (currentIndex == -1) return const SizedBox.shrink();
        
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withAlpha(230),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Previous button
              IconButton(
                icon: const Icon(Icons.arrow_back_ios, size: 20),
                onPressed: currentIndex > 0 ? () {
                  final previousArtist = artists[currentIndex - 1];
                  context.read<MapBloc>().add(
                    MarkerSelectedEvent(
                      selectedMarkerId: previousArtist.key.markerId,
                      previousSelectedMarkerId: mapState.selectedMarker,
                    ),
                  );
                  context.read<MapBloc>().moveCamera(previousArtist.key.position);
                } : null,
                color: Colors.white,
                disabledColor: Colors.white38,
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints(),
              ),
              
              // Artist info
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${currentIndex + 1} de ${artists.length}',
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.white.withAlpha(179),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      artists[currentIndex].value.artist?.username ?? '',
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              
              // Next button
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
                onPressed: currentIndex < artists.length - 1 ? () {
                  final nextArtist = artists[currentIndex + 1];
                  context.read<MapBloc>().add(
                    MarkerSelectedEvent(
                      selectedMarkerId: nextArtist.key.markerId,
                      previousSelectedMarkerId: mapState.selectedMarker,
                    ),
                  );
                  context.read<MapBloc>().moveCamera(nextArtist.key.position);
                } : null,
                color: Colors.white,
                disabledColor: Colors.white38,
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        );
      },
    );
  }
  
  Widget _buildMapActionButtons(BuildContext context, MapBloc mapBloc) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, mapState) {
        // Adjust position based on draggable sheet state
        final bottomPosition = mapState.isDragSheetOpen 
          ? Responsive.value(context, 
              mobile: 480,  // Higher when sheet is open
              tablet: 520,
              desktop: 560,
            )
          : Responsive.value(context, 
              mobile: 300, 
              tablet: 340,
              desktop: 380,
            );
            
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          right: 16,
          bottom: bottomPosition,
          child: Column(
        children: [
          // My location button
          FloatingActionButton(
            mini: true,
            heroTag: 'location',
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Colors.white,
            onPressed: () {
              final location = context.read<LocationBloc>().state.lastKnownLocation;
              if (location != null) {
                mapBloc.add(const FollowLocationButtonPressedEvent());
                mapBloc.moveCamera(location);
              }
            },
            child: BlocBuilder<MapBloc, MapState>(
              builder: (context, state) {
                return Icon(
                  state.isFollowingUser 
                    ? Icons.my_location 
                    : Icons.location_searching,
                  color: state.isFollowingUser 
                    ? Theme.of(context).colorScheme.secondary 
                    : Colors.white70,
                );
              },
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Refresh button
          FloatingActionButton(
            mini: true,
            heroTag: 'refresh',
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Colors.white,
            onPressed: () {
              final location = context.read<LocationBloc>().state.lastKnownLocation;
              if (location != null) {
                context.read<ExplorerPageBloc>().add(
                  ExplorerPageFetchArtists(location: location),
                );
              }
            },
            child: BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
              builder: (context, state) {
                return state.isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.refresh, color: Colors.white70);
              },
            ),
          ),
          ],
        ),
      );
    },
  );
  }
}