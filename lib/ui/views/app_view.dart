import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_reviews/artist_reviews_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artust_bio_cubit/artist_bio_cubit.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/draggable_artist_review_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
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
import 'package:inker_studio/ui/theme/overlay_style.dart';
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
        BlocProvider(
            create: (context) => MapBloc(locationBloc: context.read())),
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
        BlocProvider(
            create: (context) => ExplorerPageBloc(
                  mapBloc: context.read(),
                  localSessionService: context.read(),
                  locationService: context.read(),
                )),
        BlocProvider(
            create: (context) => DraggableArtistInfoSheetBloc(
                  mapBloc: context.read(),
                )),
        BlocProvider(
            lazy: false,
            create: (context) => DraggableArtistReviewSheetBloc(
                  mapBloc: context.read(),
                  reviewService: context.read(),
                  localSessionService: context.read(),
                )),
        BlocProvider(
            create: (context) => ArtistProfileBloc(
                  agendaService: context.read(),
                  sessionService: context.read(),
                )),
        BlocProvider(
            create: (context) => ArtistReviewsBloc(
                  localSessionService: context.read(),
                  reviewService: context.read(),
                )),
        BlocProvider(create: (context) => ArtistBioCubitCubit()),
      ],
      child: BlocBuilder<AppThemeCubit, bool>(builder: (context, themeState) {
        OverlayStyle.setWhite();
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
