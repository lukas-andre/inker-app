import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';


class ExplorerMapView extends StatelessWidget {
  const ExplorerMapView({super.key});

  @override
  Widget build(BuildContext context) {
    final MapBloc mapBloc = context.read<MapBloc>();
    final size = MediaQuery.of(context).size;
    final initialLocation = context.read<LocationBloc>().state.myLocationHistory.last;
    
    final CameraPosition initialCameraPosition = CameraPosition(
      target: initialLocation,
      zoom: kCameraPositionZoom,
    );

    return Stack(
      children: [
        BlocBuilder<MapBloc, MapState>(
          buildWhen: (previous, current) =>
              previous.selectedMarker != current.selectedMarker ||
              previous.markers != current.markers ,
              // previous.circle != current.circle,
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
                  onMapCreated: ((controller) =>
                      mapBloc.add(InitMapEvent(controller))),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 100,
          left: 16,
          right: 16,
          child: _RangeControl(),
        ),
      ],
    );
  }
}

class _RangeControl extends StatelessWidget {
  static const double defaultRange = 5.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      buildWhen: (previous, current) => 
        previous.range != current.range || 
        previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Contador de artistas encontrados
            if (state.artistFounded.isNotEmpty)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  S.of(context).artistsFound(state.artistFounded.length, state.range),
                  style: TextStyleTheme.subtitle2.copyWith(color: Colors.white),
                ),
              ),

            // Control de rango principal
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.radio_button_checked,
                            size: 18,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            S.of(context).searchRadius,
                            style: TextStyleTheme.subtitle2.copyWith(color: Colors.grey[800], fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      // Botón de reset
                      if (state.range != defaultRange)
                        TextButton(
                          onPressed: () {
                            context.read<ExplorerPageBloc>().add(
                              const ExplorerPageUpdateRange(range: defaultRange),
                            );
                            // Refetch con el rango por defecto
                            final location = context.read<LocationBloc>().state.lastKnownLocation!;
                            context.read<ExplorerPageBloc>().add(
                              ExplorerPageFetchArtists(location: location),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(0, 0),
                          ),
                          child: Text(
                            S.of(context).reset,
                            style: TextStyleTheme.subtitle2.copyWith(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w500),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Slider(
                          value: state.range,
                          min: 0.5,
                          max: 10.0,
                          divisions: 19,
                          activeColor: Theme.of(context).colorScheme.secondary,
                          inactiveColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                          label: '${state.range.toStringAsFixed(1)} km',
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
                                final location = context.read<LocationBloc>().state.lastKnownLocation!;
                                context.read<ExplorerPageBloc>().add(
                                  ExplorerPageFetchArtists(location: location),
                                );
                              },
                        ),
                      ),
                      Container(
                        width: 45,
                        alignment: Alignment.center,
                        child: Text(
                          '${state.range.toStringAsFixed(1)}km',
                          style: TextStyleTheme.subtitle2.copyWith(color: Colors.grey[600], fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

