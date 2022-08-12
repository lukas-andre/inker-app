import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/ui/customer/explore/views/map_view.dart';
import 'package:inker_studio/utils/forms/styles.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late LocationBloc locationBloc;

  @override
  void initState() {
    super.initState();
    locationBloc = context.read<LocationBloc>();
    locationBloc.startFollowingUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        if (state.lastKnownLocation == null) {
          return Center(
            child: InkerProgressIndicator(
              color: secondaryColor,
            ),
          );
        }

        return Stack(
          children: [MapView(initialLocation: state.lastKnownLocation!)],
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
