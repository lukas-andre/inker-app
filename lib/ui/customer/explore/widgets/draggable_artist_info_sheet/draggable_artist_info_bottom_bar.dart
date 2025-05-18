import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_contact_button.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:map_launcher/map_launcher.dart';

const bottomBarHeight = 80.0;

class DraggableArtistInfoBottomBar extends StatelessWidget {
  const DraggableArtistInfoBottomBar({
    super.key,
  });

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
            color: Theme.of(context).colorScheme.surface,
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
                    text: S.of(context).directions,
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    textStyle: TextStyleTheme.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200),
                  ),
                  InkerStadiumButton(
                    onTap: () {
                      if (artist?.id != null) {
                        Navigator.of(context).push(
                          CreateQuotationPage.route(artistId: artist!.id),
                        );
                      }
                    },
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 40,
                    text: S.of(context).bookAppointment,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
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
                    'Abrir en ${map.mapName}',
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
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  for (var map in availableMaps)
                    ListTile(
                      onTap: () {
                        map.showDirections(
                          destination:
                              Coords(location.latitude, location.longitude),
                          destinationTitle: locationName,
                        );
                        Navigator.pop(context);
                      },
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
