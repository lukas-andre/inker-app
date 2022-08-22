import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_plage_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/ui/customer/explore/views/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/explore/views/explorer_map_view.dart';
import 'package:inker_studio/ui/customer/explore/widgets/button_current_location.dart';
import 'package:inker_studio/ui/customer/explore/widgets/button_follow_location.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_switch_views.dart';
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
        return Scaffold(
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
                    state.view == ExplorerView.list
                        ? const ExplorerListView()
                        : ExplorerMapView(
                            initialLocation: locationState.lastKnownLocation!),
                    const ExplorerSwitchViews()
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
