import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/domain/blocs/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/splash/splash_page.dart';
import 'package:inker_studio/ui/theme/app_theme_cubit.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GpsBloc(), lazy: false),
        BlocProvider(create: (context) => LocationBloc()),
        BlocProvider(create: (context) => MapBloc()),
        BlocProvider(
          create: (context) => AppThemeCubit(context.read())..init(),
        ),
        BlocProvider(
            create: (context) => AuthBloc(
                authService: context.read(),
                logoutUseCase: context.read(),
                sessionService: context.read())),
        BlocProvider(
          create: (context) => OnBoardingBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterArtistBloc(
              placesService: context.read(),
              createUserUseCase: context.read(),
              localStorage: context.read()),
        ),
        BlocProvider(
          create: (context) => RegisterCustomerBloc(
              placesService: context.read(),
              createUserUseCase: context.read(),
              localStorage: context.read()),
        ),
        BlocProvider(
            create: (context) => AccountVerificationBloc(
                userService: context.read(), localStorage: context.read())),
        BlocProvider(create: (context) => CustomerAppBloc()),
      ],
      child: BlocBuilder<AppThemeCubit, bool>(builder: (context, themeState) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: _navigatorKey,
          theme: themeState ? ThemeData.dark() : ThemeData.light(),
          builder: (context, child) {
            return BlocListener<AuthBloc, AuthState>(
                listener: (context, state) async {
                  await _navigateByAuthStatus(context, state);
                },
                child: child);
          },
          onGenerateRoute: (_) => SplashPage.route(),
        );
      }),
    );
  }

  Future<void> _navigateByAuthStatus(
      BuildContext context, AuthState state) async {
    await Future.delayed(const Duration(seconds: 1));
    switch (state.status) {
      case AuthStatus.authenticated:
        final String userType = state.session.user!.userType!;
        if (userType == UserType.customer) {
          NoContextNavigator.pushAndRemoveUntil(
              _navigator, const CustomerAppPage());
        }

        if (userType == UserType.artist) {
          NoContextNavigator.pushAndRemoveUntil(
              _navigator, const ArtistHomePage());
        }
        break;
      case AuthStatus.unknown:
      case AuthStatus.unauthenticated:
        NoContextNavigator.push(_navigator, const OnBoardingPage());
        break;
    }
  }
}
