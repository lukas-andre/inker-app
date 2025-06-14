import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/auth/auth_bloc.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer Profile')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                final userId = context.select(
                  (AuthBloc bloc) => bloc.state.session.user!.id,
                );
                return Text('UserID: $userId');
              },
            ),
            Builder(builder: (context) {
              final userId = context.select(
                (AuthBloc bloc) => bloc.state.session.user!.id,
              );
              return ElevatedButton(
                child: userId == -1
                    ? const InkerProgressIndicator()
                    : const Text('Logout'),
                onPressed: () {
                  context.read<AuthBloc>().add(AuthLogoutRequested(
                      context.read<AuthBloc>().state.session));
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
