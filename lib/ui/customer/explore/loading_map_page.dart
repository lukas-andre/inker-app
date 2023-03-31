import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/ui/customer/explore/gps_access_page.dart';
import 'package:inker_studio/ui/customer/explore/explorer_page.dart';

class BuildMapPage extends StatelessWidget {
  const BuildMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GpsBloc, GpsState>(
      buildWhen: (previous, current) =>
          previous.isAllGranted != current.isAllGranted,
      builder: (context, state) {
        return state.isAllGranted
            ? const ExplorerPage()
            : const GpsAccessScreen();
      },
    );
  }
}
