import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/ui/theme/app_theme_cubit.dart';

class AppView extends StatefulWidget {
  AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  // ignore: todo
  // TODO: Googlear porque se hace esto
  NavigatorState get navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit(context.read())..init(),
      child: BlocBuilder<AppThemeCubit, bool>(builder: (context, themeState) {
        return MaterialApp(
          navigatorKey: _navigatorKey,
          theme: themeState ? ThemeData.dark() : ThemeData.light(),
          builder: (context, child) {
            return BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {});
          },
        );
      }),
    );
  }
}
