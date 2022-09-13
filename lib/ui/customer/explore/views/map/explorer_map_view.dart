import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_plage_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';

class ExplorerMapView extends StatelessWidget {
  final LatLng initialLocation;

  const ExplorerMapView({Key? key, required this.initialLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MapBloc mapBloc = context.read<MapBloc>();
    final ExplorerPageBloc explorerPageBloc = context.read<ExplorerPageBloc>();

    final CameraPosition initialCameraPosition =
        CameraPosition(target: initialLocation, zoom: 15);

    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Listener(
          onPointerMove: (event) =>
              mapBloc.add(const OnStopFollowingLocation()),
          child: GoogleMap(
            initialCameraPosition: initialCameraPosition,
            markers: explorerPageBloc.markers,
            compassEnabled: true,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            onMapCreated: ((controller) =>
                mapBloc.add(OnInitMapEvent(controller))),
          ),
        ));
  }
}
