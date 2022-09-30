import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';

class ExplorerMapView extends StatelessWidget {
  const ExplorerMapView({Key? key}) : super(key: key);
  final testImage =
      'https://d1riey1i0e5tx2.cloudfront.net/artist/1/profile_picture.png';

  @override
  Widget build(BuildContext context) {
    final LatLng initialLocation =
        context.read<LocationBloc>().state.lastKnownLocation!;

    final MapBloc mapBloc = context.read<MapBloc>();

    final CameraPosition initialCameraPosition =
        CameraPosition(target: initialLocation, zoom: 10);

    final size = MediaQuery.of(context).size;
    // return const TestMarkerScreen2();

    return BlocBuilder<MapBloc, MapState>(
      buildWhen: (previous, current) =>
          previous.selectedMarker != current.selectedMarker ||
          previous.markers != current.markers,
      builder: (context, state) {
        final markers = state.markers.entries.map((e) => e.key).toSet();
        return SizedBox(
            width: size.width,
            height: size.height,
            child: Listener(
              onPointerMove: (event) =>
                  mapBloc.add(const OnStopFollowingLocation()),
              child: GoogleMap(
                initialCameraPosition: initialCameraPosition,
                // onCameraMove: (cameraPosition) =>
                //     mapBloc.add(const OnStopFollowingLocation()),
                markers: markers,
                compassEnabled: true,
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                onMapCreated: ((controller) =>
                    mapBloc.add(OnInitMapEvent(controller))),
              ),
            ));
      },
    );
  }
}
