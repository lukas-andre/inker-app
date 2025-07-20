import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view_web.dart';
import 'package:inker_studio/ui/customer/explore/views/map/enhanced_explorer_map_view.dart';
import 'package:inker_studio/ui/customer/explore/views/map/explorer_map_view_web.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_sheet.dart';
import 'package:inker_studio/ui/customer/explore/widgets/location_permission_banner.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';

class ExplorerPage extends StatefulWidget {
  final bool hideHeader;

  const ExplorerPage({super.key, this.hideHeader = false});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  late LocationBloc locationBloc;
  late ExplorerPageBloc explorerPageBloc;
  late MapBloc mapBloc;
  bool isUsingDefaultLocation = true;
  late PlatformGeolocationService geolocationService;

  @override
  void initState() {
    super.initState();
    print('[ExplorerPage] initState: starting');
    locationBloc = context.read<LocationBloc>();
    locationBloc.startFollowingUser();
    explorerPageBloc = context.read<ExplorerPageBloc>();
    mapBloc = context.read<MapBloc>();
    geolocationService = context.read<PlatformGeolocationService>();
    
    print('[ExplorerPage] initState: blocs initialized');
    print('[ExplorerPage] initState: current location: ${locationBloc.state.lastKnownLocation}');
    print('[ExplorerPage] initState: firstLoad: ${explorerPageBloc.state.firstLoad}');
    print('[ExplorerPage] initState: artists count: ${explorerPageBloc.state.artistFounded.length}');
    
    // Trigger initial fetch when location is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('[ExplorerPage] postFrameCallback: calling _triggerInitialFetch');
      _triggerInitialFetch();
    });
  }
  
  void _triggerInitialFetch() {
    // Check if we already have location
    final currentLocation = locationBloc.state.lastKnownLocation;
    final isFirstLoad = explorerPageBloc.state.firstLoad;
    print('[ExplorerPage] _triggerInitialFetch: currentLocation=$currentLocation, firstLoad=$isFirstLoad');
    
    if (currentLocation != null && isFirstLoad) {
      print('[ExplorerPage] _triggerInitialFetch: triggering fetch with location: $currentLocation');
      explorerPageBloc.add(ExplorerPageFetchArtists(location: currentLocation));
    } else {
      print('[ExplorerPage] _triggerInitialFetch: conditions not met, skipping fetch');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: (() => FocusScope.of(context).unfocus()),
          child: Scaffold(
            // Si hideHeader es true, no mostramos un AppBar propio, ya que lo gestiona la página principal
            appBar: widget.hideHeader
                ? null
                : AppBar(
                    title: Text(
                      'Explorar',
                      style: TextStyleTheme.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    elevation: 0,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ),
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: BlocListener<LocationBloc, LocationState>(
              listener: (context, locationState) {
                // Trigger fetch when location becomes available
                print('[ExplorerPage] LocationBloc listener: location=${locationState.lastKnownLocation}, firstLoad=${explorerPageBloc.state.firstLoad}');
                if (locationState.lastKnownLocation != null && 
                    explorerPageBloc.state.firstLoad) {
                  print('[ExplorerPage] LocationBloc listener: triggering fetch with new location');
                  explorerPageBloc.add(
                    ExplorerPageFetchArtists(location: locationState.lastKnownLocation!)
                  );
                  // Check if it's not the default location
                  if (locationState.lastKnownLocation!.latitude != -33.4489 || 
                      locationState.lastKnownLocation!.longitude != -70.6693) {
                    setState(() {
                      isUsingDefaultLocation = false;
                    });
                  }
                } else {
                  print('[ExplorerPage] LocationBloc listener: conditions not met, skipping');
                }
              },
              child: BlocBuilder<LocationBloc, LocationState>(
                buildWhen: (previous, current) =>
                    previous.lastKnownLocation == null &&
                    current.lastKnownLocation != null,
                builder: (context, locationState) {
                  print('[ExplorerPage] LocationBloc builder: location=${locationState.lastKnownLocation}');
                  if (locationState.lastKnownLocation == null) {
                    print('[ExplorerPage] LocationBloc builder: showing loading indicator');
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Beta badge
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.science,
                                    size: 16,
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'VERSIÓN BETA',
                                    style: TextStyleTheme.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).colorScheme.secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 32),
                            InkerProgressIndicator(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Preparando tu experiencia...',
                              style: TextStyleTheme.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Esta es una versión experimental con tecnología WebAssembly.\nLa carga inicial puede tomar hasta 3 minutos.',
                              textAlign: TextAlign.center,
                              style: TextStyleTheme.copyWith(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                              ),
                            ),
                            const SizedBox(height: 32),
                            // Create tattoo button
                            OutlinedButton.icon(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/tattoo-generator');
                              },
                              icon: const Icon(Icons.brush),
                              label: const Text('Crear Tatuajes con IA'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Theme.of(context).colorScheme.secondary,
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              '¡Mientras esperas, crea diseños únicos con IA!',
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
                  buildWhen: (previous, current) =>
                      previous.view != current.view ||
                      previous.isLoading != current.isLoading ||
                      previous.firstLoad != current.firstLoad,
                  builder: (context, state) {
                    // THIS IS LOADING STATE
                    if (state.isLoading && state.firstLoad) {
                      return Center(
                        child: InkerProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      );
                    }

                    // THIS IS EMPTY ARTIST STATE
                    if (state.artistFounded.isEmpty) {
                      return Center(
                        child: Text(
                          'No artist found',
                          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                        ),
                      );
                    } else {
                      // THIS IS ARTIST FOUND STATE
                      return Stack(
                          key: const Key('explorerPageStack'),
                          children: [
                            Column(
                              children: [
                                LocationPermissionBanner(
                                  isUsingDefaultLocation: isUsingDefaultLocation,
                                  onEnableLocation: _requestLocationPermission,
                                ),
                                Expanded(
                                  child: ExplorerViewByType(
                                      view: state.view,
                                      lastLocation: locationState.lastKnownLocation!),
                                ),
                              ],
                            ),
                            // Eliminamos los botones de cambio de vista ya que están en la barra de navegación
                            const DraggableArtistInfoSheet(),
                          ]);
                    }
                  },
                );
              },
            ),
          ),
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startDocked,
          ),
        );
      },
    );
  }
  
  Future<void> _requestLocationPermission() async {
    print('[ExplorerPage] _requestLocationPermission: requesting permission');
    try {
      final granted = await geolocationService.requestPermission();
      if (granted) {
        print('[ExplorerPage] _requestLocationPermission: permission granted');
        // The location bloc should automatically update with the new location
      } else {
        print('[ExplorerPage] _requestLocationPermission: permission denied');
      }
    } catch (e) {
      print('[ExplorerPage] _requestLocationPermission: error=$e');
    }
  }

  @override
  void dispose() {
    locationBloc.stopFollowingUser();
    mapBloc.add(const DeselectAllMarkerEvent(closeDragSheet: false));
    super.dispose();
  }
}

class ExplorerViewByType extends StatelessWidget {
  final ExplorerView view;
  final LatLng lastLocation;

  const ExplorerViewByType(
      {super.key, required this.view, required this.lastLocation});

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();
    final isWeb = platformService.isWeb;

    if (view == ExplorerView.list) {
      return isWeb ? const ExplorerListViewWeb() : const ExplorerListView();
    } else {
      return isWeb ? const ExplorerMapViewWeb() : const EnhancedExplorerMapView();
    }
  }
}
