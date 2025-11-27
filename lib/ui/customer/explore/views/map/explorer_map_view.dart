import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
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

class _RangeControl extends StatefulWidget {
  @override
  State<_RangeControl> createState() => _RangeControlState();
}

class _RangeControlState extends State<_RangeControl> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      buildWhen: (previous, current) => 
        previous.range != current.range || 
        previous.isLoading != current.isLoading ||
        previous.artistFounded.length != current.artistFounded.length,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Control de rango compacto
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header siempre visible
                  InkWell(
                    onTap: () => setState(() => _isExpanded = !_isExpanded),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_searching,
                                size: 16,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                '${state.range.toStringAsFixed(0)} km',
                                style: TextStyleTheme.subtitle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              if (state.artistFounded.isNotEmpty) ...[
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '${state.artistFounded.length}',
                                    style: TextStyleTheme.subtitle2.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).colorScheme.secondary,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          Icon(
                            _isExpanded ? Icons.expand_less : Icons.expand_more,
                            size: 20,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Contenido expandible
                  AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: _isExpanded
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Divider(height: 1),
                              const SizedBox(height: 8),
                              // Botones rápidos
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  _QuickRangeButton(
                                    label: '5',
                                    value: 5,
                                    currentValue: state.range,
                                    onPressed: () => _updateRange(context, 5),
                                  ),
                                  _QuickRangeButton(
                                    label: '10',
                                    value: 10,
                                    currentValue: state.range,
                                    onPressed: () => _updateRange(context, 10),
                                  ),
                                  _QuickRangeButton(
                                    label: '20',
                                    value: 20,
                                    currentValue: state.range,
                                    onPressed: () => _updateRange(context, 20),
                                  ),
                                  _QuickRangeButton(
                                    label: '50',
                                    value: 50,
                                    currentValue: state.range,
                                    onPressed: () => _updateRange(context, 50),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              // Slider
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  trackHeight: 3,
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
                                        final location = context.read<LocationBloc>().state.lastKnownLocation!;
                                        context.read<ExplorerPageBloc>().add(
                                          ExplorerPageFetchArtists(location: location),
                                        );
                                      },
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _updateRange(BuildContext context, double value) {
    context.read<ExplorerPageBloc>().add(
      ExplorerPageUpdateRange(range: value),
    );
    final location = context.read<LocationBloc>().state.lastKnownLocation!;
    context.read<ExplorerPageBloc>().add(
      ExplorerPageFetchArtists(location: location),
    );
  }
}

class _QuickRangeButton extends StatelessWidget {
  final String label;
  final double value;
  final double currentValue;
  final VoidCallback onPressed;

  const _QuickRangeButton({
    required this.label,
    required this.value,
    required this.currentValue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = (currentValue - value).abs() < 0.1;
    
    return Material(
      color: isSelected 
        ? Theme.of(context).colorScheme.secondary 
        : Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 40,
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isSelected 
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
            ),
          ),
          child: Text(
            label,
            style: TextStyleTheme.subtitle2.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isSelected 
                ? Colors.white 
                : Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}

