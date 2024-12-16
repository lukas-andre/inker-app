import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inker_studio/dependencies/bloc_providers.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_app/artist_app_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_bio_cubit/artist_bio_cubit.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_reviews/artist_reviews_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';
import 'package:inker_studio/domain/blocs/customer_my_profile/customer_my_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/draggable_artist_review_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/customer_quotation_response/customer_quotation_response_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/domain/blocs/search_artist/search_artists_bloc.dart';
import 'package:inker_studio/domain/blocs/settings/settings_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/notifications/fmc_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/routes.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/notifications/notifications_wrapper.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/theme/app_theme_cubit.dart';
import 'package:inker_studio/ui/theme/localization_cubit.dart';
import 'package:inker_studio/ui/theme/overlay_style.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

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
        // Providers independientes (sin dependencias)
        BlocProvider(create: (context) => GpsBloc(), lazy: false),
        BlocProvider(create: (context) => LocationBloc()),
        BlocProvider(create: (context) => OnBoardingBloc()),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => LocalizationCubit()),
        BlocProvider(create: (context) => ArtistBioCubitCubit()),
        BlocProvider(create: (context) => CustomerAppBloc()),
        BlocProvider(create: (context) => ArtistAppBloc()),
        BlocProvider(create: (context) => ArtistsListBloc()),

        // Providers con dependencias simples
        BlocProvider(
          create: (context) => AppThemeCubit(context.read())..init(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            authService: context.read(),
            logoutUseCase: context.read(),
            sessionService: context.read(),
          ),
        ),


        // Map related providers
        BlocProvider(
          create: (context) =>
              MapBloc(locationBloc: context.read<LocationBloc>()),
        ),

        // Providers que dependen de MapBloc
        BlocProvider(
          create: (context) => ExplorerPageBloc(
            mapBloc: context.read<MapBloc>(),
            localSessionService: context.read(),
            locationService: context.read(),
            artistsListBloc: context.read<ArtistsListBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => DraggableArtistInfoSheetBloc(
            mapBloc: context.read<MapBloc>(),
          ),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => DraggableArtistReviewSheetBloc(
            mapBloc: context.read<MapBloc>(),
            reviewService: context.read(),
            localSessionService: context.read(),
          ),
        ),

        // Registration related providers
        BlocProvider(
          create: (context) => RegisterArtistBloc(
            placesService: context.read(),
            createUserUseCase: context.read(),
            localStorage: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => RegisterCustomerBloc(
            placesService: context.read(),
            createUserUseCase: context.read(),
            localStorage: context.read(),
          ),
        ),

        // Artist related providers
        BlocProvider(
          create: (context) => ArtistAgendaBloc(
            agendaService: context.read(),
            sessionService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => ArtistAgendaEventDetailBloc(
            agendaService: context.read(),
            sessionService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => ArtistAgendaCreateEventBloc(
            customerService: context.read(),
            sessionService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => ArtistProfileBloc(
            agendaService: context.read(),
            sessionService: context.read(),
            artistsListBloc: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => ArtistReviewsBloc(
            localSessionService: context.read(),
            reviewService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => ArtistMyProfileBloc(
            context.read(),
          ),
        ),

        // Other providers
        BlocProvider(
          create: (context) => AccountVerificationBloc(
            userService: context.read(),
            localStorage: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => ScheduleAssistantBloc(
            agendaService: context.read(),
            sessionService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => SettingsBloc(
            logoutUseCase: context.read(),
            sessionService: context.read(),
            settingsService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => CustomerMyProfileBloc(
            customerService: context.read(),
            sessionService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => CustomerQuotationResponseBloc(
            quotationService: context.read(),
            sessionService: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => QuotationListBloc(
            quotationService: context.read(),
            sessionService: context.read(),
          ),
        ),

        // Notifications provider (should be last due to its dependencies)
        BlocProvider(
          lazy: false,
          create: (context) {
            final fcmService = context.read<FcmService>();
            final bloc = NotificationsBloc(fcmService)
              ..add(const NotificationsEvent.initialize());
            fcmService.setBloc(bloc);
            return bloc;
          },
        ),
      ],
      child: BlocBuilder<LocalizationCubit, Locale>(builder: (context, locale) {
        return BlocBuilder<AppThemeCubit, bool>(builder: (context, themeState) {
          OverlayStyle.setWhite();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: _navigatorKey,
            theme: themeState ? ThemeData.dark() : ThemeData.light(),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''),
              Locale('es', 'CL'),
            ],
            locale: locale,
            builder: (context, child) {
              return NotificationsWrapper(
                navigatorKey: _navigatorKey,
                child: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) async {
                    await _navigateByAuthStatus(context, state);
                  },
                  child: child!,
                ),
              );
            },
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );
        });
      }),
    );
  }

  Future<void> _navigateByAuthStatus(
      BuildContext context, AuthState state) async {
    switch (state.status) {
      case AuthStatus.authenticated:
        final String userType = state.session.user!.userType!;
        if (userType == UserType.customer) {
          NoContextNavigator.pushAndRemoveUntil(
              _navigator, const CustomerAppPage());
        }

        if (userType == UserType.artist) {
          NoContextNavigator.pushAndRemoveUntil(
              _navigator, const ArtistAppPage());
        }
        break;
      case AuthStatus.unknown:
      case AuthStatus.unauthenticated:
        NoContextNavigator.push(_navigator, const OnBoardingPage());
        break;
    }
  }
}
