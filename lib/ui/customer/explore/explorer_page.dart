import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/explore/views/map/explorer_map_view.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_sheet.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_switch_view_buttons.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({super.key});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  late LocationBloc locationBloc;
  late ExplorerPageBloc explorerPageBloc;
  late MapBloc mapBloc;

  @override
  void initState() {
    super.initState();
    locationBloc = context.read<LocationBloc>();
    locationBloc.startFollowingUser();
    explorerPageBloc = context.read<ExplorerPageBloc>();
    mapBloc = context.read<MapBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: (() => FocusScope.of(context).unfocus()),
          child: Scaffold(
            backgroundColor: primaryColor,
            body: BlocBuilder<LocationBloc, LocationState>(
              buildWhen: (previous, current) =>
                  previous.lastKnownLocation == null &&
                  current.lastKnownLocation != null,
              builder: (context, locationState) {
                if (locationState.lastKnownLocation == null) {
                  return Center(
                    child: InkerProgressIndicator(
                      color: secondaryColor,
                    ),
                  );
                }

                return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
                  buildWhen: (previous, current) =>
                      previous.view != current.view ||
                      previous.isLoading != current.isLoading,
                  builder: (context, state) {
                    // TODO: THIS IS INIT STATE
                    if (state.firstLoad && !state.isLoading) {
                      context.read<ExplorerPageBloc>().add(
                          ExplorerPageFetchArtists(
                              location: locationState.lastKnownLocation!));
                    }

                    // TODO: THIS IS LOADING STATE
                    if (state.isLoading) {
                      return Center(
                        child: InkerProgressIndicator(
                          color: secondaryColor,
                        ),
                      );
                    }

                    // THIS IS EMPTY ARTIST STATE
                    if (state.artistFounded.isEmpty) {
                      return Center(
                        child: Text(
                          'No artist found',
                          style: TextStyle(color: secondaryColor),
                        ),
                      );
                    } else {
                      // THIS IS ARTIST FOUND STATE
                      return Stack(
                        key: const Key('explorerPageStack'),
                        children: [
                        ExplorerViewByType(
                            view: state.view,
                            lastLocation: locationState.lastKnownLocation!),
                        const ExplorerSwitchViewButtons(),
                        const DraggableArtistInfoSheet(),
                      ]);
                    }
                  },
                );
              },
            ),
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startDocked,
            // floatingActionButton: state.view == ExplorerView.list
            //     ? null
            //     : Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: const [
            //           ButtonCurrentLocation(),
            //           ButtonFollowLocation()
            //         ],
            //       ),
          ),
        );
      },
    );
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
    return view == ExplorerView.list
        ? const ExplorerListView()
        : const ExplorerMapView();
  }
}
