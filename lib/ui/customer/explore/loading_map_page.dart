import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/ui/customer/explore/gps_access_page.dart';
import 'package:inker_studio/ui/customer/explore/explorer_page.dart';

class BuildMapPage extends StatelessWidget {
  final bool hideHeader;
  
  const BuildMapPage({super.key, this.hideHeader = false});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GpsBloc, GpsState>(
      buildWhen: (previous, current) =>
          previous.isAllGranted != current.isAllGranted,
      builder: (context, state) {
        return state.isAllGranted
            ? ExplorerPage(hideHeader: hideHeader)
            : const GpsAccessScreen();
      },
    );
  }
}
