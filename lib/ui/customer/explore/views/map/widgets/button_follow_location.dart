import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ButtonFollowLocation extends StatelessWidget {
  const ButtonFollowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final mapBloc = context.read<MapBloc>();
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        maxRadius: 25,
        child: BlocBuilder<MapBloc, MapState>(
          builder: (context, state) {
            return IconButton(
              icon: Icon(
                state.isFollowingUser
                    ? Icons.directions_run_rounded
                    : Icons.hail_rounded,
                color: primaryColor,
              ),
              onPressed: () {
                mapBloc.add(const FollowLocationButtonPressedEvent());
              },
            );
          },
        ),
      ),
    );
  }
}
