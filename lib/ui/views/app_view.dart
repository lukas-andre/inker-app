import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/customer/home/customer_home_page.dart';
import 'package:inker_studio/ui/login/login.dart';
import 'package:inker_studio/ui/splash/splah_page.dart';
import 'package:inker_studio/ui/theme/app_theme_cubit.dart';
import 'package:inker_studio/utils/dev.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  static const String className = 'AppView';
  final _navigatorKey = GlobalKey<NavigatorState>();

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
            return BlocProvider(
              create: (context) => AuthBloc(
                  authService: context.read(),
                  sessionService: context.read(),
                  logoutUseCase: context.read()),
              child: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    dev.log('state: $state', className);
                    //_navigateByAuthStatus(state);
                  },
                  child: child),
            );
          },
          onGenerateRoute: (_) => SplashPage.route(),
        );
      }),
    );
  }

  void _navigateByAuthStatus(AuthState state) {
    switch (state.status) {
      case AuthStatus.authenticated:
        _navigateToUserTypePage(state.session);
        break;
      case AuthStatus.unknown:
      case AuthStatus.unauthenticated:
        dev.log('entre', className);
        _navigator.pushAndRemoveUntil<void>(
          LoginPage.route(),
          (route) => false,
        );
        break;
    }
  }

  void _navigateToUserTypePage(Session session) {
    final userType = session.user!.userType;
    dev.log('userType: $userType', className, 'navigateToUserTypePage');
    if (userType == UserType.customer) {
      _navigator.pushAndRemoveUntil<void>(
        CustomerHomePage.route(),
        (route) => false,
      );
    } else if (userType == UserType.artist) {
      _navigator.pushAndRemoveUntil<void>(
        ArtistHomePage.route(),
        (route) => false,
      );
    }
  }
}
