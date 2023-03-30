import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_contact_button.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:map_launcher/map_launcher.dart';

const bottomBarHeight = 80.0;

class DraggableArtistInfoBottomBar extends StatelessWidget {
  const DraggableArtistInfoBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      buildWhen: (previous, current) =>
          previous.selectedMarker != current.selectedMarker,
      builder: (context, state) {
        dev.log('selectedMarker: ${state.selectedMarker}', 'BUILD');
        final mapBloc = context.read<MapBloc>();

        final location = mapBloc.selectedArtistLocation;
        final artist = mapBloc.selectedArtist;

        return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: bottomBarHeight,
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkerStadiumButton(
                    onTap: () {
                      showNavigationOptions(context, location,
                          artist?.username ?? 'Inker Studio');
                    },
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 40,
                    text: 'Indicaciones',
                    backgroundColor: tertiaryColor,
                    textStyle: TextStyleTheme.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200),
                  ),
                  InkerStadiumButton(
                    onTap: () {},
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 40,
                    text: 'Reservar cita',
                    backgroundColor: secondaryColor,
                    textStyle: TextStyleTheme.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showNavigationOptions(
      BuildContext context, LatLng location, String locationName) async {
    final availableMaps = await MapLauncher.installedMaps;
    // Show the navigation options as an action sheet on iOS
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            // title: const Text('Cómo llegar'),
            actions: <Widget>[
              for (var map in availableMaps)
                CupertinoActionSheetAction(
                  child: Text(
                    'Abrir en ' + map.mapName,
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: TextStyleTheme.instance.fontStyle),
                  ),
                  onPressed: () {
                    map.showDirections(
                      destination:
                          Coords(location.latitude, location.longitude),
                      destinationTitle: locationName,
                    );
                    Navigator.pop(context);
                  },
                ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text(
                'Cancelar',
                style: TextStyle(fontStyle: TextStyleTheme.instance.fontStyle),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          );
        },
      );
    }
    // Show the navigation options as an alert dialog on Android
    else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Cómo llegar'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.directions_car),
                    title: const Text('Apple Maps'),
                    onTap: () {
                      // launchMaps('apple');
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.directions_car),
                    title: const Text('Google Maps'),
                    onTap: () {
                      // launchMaps('google');
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.directions_car),
                    title: const Text('Waze'),
                    onTap: () {
                      // launchMaps('waze');
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}
