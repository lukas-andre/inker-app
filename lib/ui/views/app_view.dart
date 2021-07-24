import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/ui/auth/login_page.dart';
import 'package:inker_studio/ui/customer/home/home_page.dart';
import 'package:inker_studio/ui/splash/splah_page.dart';
import 'package:inker_studio/ui/theme/app_theme_cubit.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  // TODO: Googlear porque se hace esto
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit(context.read())..init(),
      child: BlocBuilder<AppThemeCubit, bool>(builder: (context, themeState) {
        return MaterialApp(
          navigatorKey: _navigatorKey,
          theme: themeState ? ThemeData.dark() : ThemeData.light(),
          builder: (context, child) {
            developer.log('context: $context');
            developer.inspect(context);
            return BlocProvider(
              create: (context) => AuthBloc(
                  authService: context.read(), sessionService: context.read()),
              child: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    developer.log('state: $state');
                    switch (state.status) {
                      case AuthStatus.authenticated:
                        // TODO: Verify if is a artist or customer session and redirect to correspond page
                        _navigator.pushAndRemoveUntil<void>(
                          HomePage.route(),
                          (route) => false,
                        );
                        break;
                      case AuthStatus.unknown:
                      case AuthStatus.unauthenticated:
                        _navigator.pushAndRemoveUntil<void>(
                          LoginPage.route(),
                          (route) => false,
                        );
                        break;
                    }
                  },
                  child: child),
            );
          },
          onGenerateRoute: (_) => SplashPage.route(),
        );
      }),
    );
  }
}
