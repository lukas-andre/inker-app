import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ButtonCurrentLocation extends StatelessWidget {
  const ButtonCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final mapBloc = context.read<MapBloc>();
    final locationBloc = context.read<LocationBloc>();
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        maxRadius: 25,
        child: IconButton(
          icon: Icon(
            Icons.my_location,
            color: primaryColor,
          ),
          onPressed: () {
            final userLocation = locationBloc.state.lastKnownLocation;

            if (userLocation == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                  customSnackBar(content: 'No hay una ubicación disponible'));
              return;
            }

            mapBloc.moveCamera(userLocation);
          },
        ),
      ),
    );
  }
}
