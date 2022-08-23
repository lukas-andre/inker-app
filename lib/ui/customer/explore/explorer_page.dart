import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_plage_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/explore/views/map/explorer_map_view.dart';
import 'package:inker_studio/ui/customer/explore/views/map/widgets/button_current_location.dart';
import 'package:inker_studio/ui/customer/explore/views/map/widgets/button_follow_location.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_switch_view_buttons.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  late LocationBloc locationBloc;

  @override
  void initState() {
    super.initState();
    locationBloc = context.read<LocationBloc>();
    locationBloc.startFollowingUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: (() => FocusScope.of(context).unfocus()),
          child: Scaffold(
            body: BlocBuilder<LocationBloc, LocationState>(
              builder: (context, locationState) {
                if (locationState.lastKnownLocation == null) {
                  return Center(
                    child: InkerProgressIndicator(
                      color: secondaryColor,
                    ),
                  );
                }

                return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
                  builder: (context, state) {
                    return Stack(children: [
                      ExplorerViewByType(
                          view: state.view,
                          lastLocation: locationState.lastKnownLocation!),
                      const ExplorerSwitchViewButtons()
                    ]);
                  },
                );

                // return Stack(
                //   children: [
                //     ExplorerMapView(initialLocation: state.lastKnownLocation!),
                //     const SearchBar(),
                //   ],
                // );
              },
            ),
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: state.view == ExplorerView.list
                ? null
                : Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      ButtonCurrentLocation(),
                      ButtonFollowLocation()
                    ],
                  ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    locationBloc.stopFollowingUser();
    super.dispose();
  }
}

class ExplorerViewByType extends StatelessWidget {
  final ExplorerView view;
  final LatLng lastLocation;

  const ExplorerViewByType(
      {Key? key, required this.view, required this.lastLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return view == ExplorerView.list
        ? const ExplorerListView()
        : ExplorerMapView(
            initialLocation: lastLocation,
          );
  }
}
