import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/environment/environment_bloc.dart';

class EnvironmentIndicator extends StatelessWidget {
  const EnvironmentIndicator({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EnvironmentBloc, EnvironmentState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (current, _) {
            if (current.id == 'PRODUCTION') {
              return const SizedBox.shrink();
            }
            
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: _getColorForEnvironment(current.id),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                current.name.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
  
  Color _getColorForEnvironment(String environmentId) {
    switch (environmentId) {
      case 'STAGING':
        return Colors.orange;
      case 'DEVELOPMENT':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}