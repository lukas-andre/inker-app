import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/customer_quotation_response/customer_quotation_response_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/domain/blocs/settings/settings_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:inker_studio/ui/artist/agenda/events/event_page.dart';
import 'package:inker_studio/ui/artist/artist_home_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/customer/app/customer_app_page.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/quotation/artist_quotation_response_page.dart';
import 'package:inker_studio/ui/quotation/customer_quotation_respose_page.dart';
import 'package:inker_studio/ui/settings/languague_settings_page.dart';
import 'package:inker_studio/ui/settings/privacy_policy_page.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:inker_studio/ui/settings/terms_and_conditions_page.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/splash/splash_page.dart';
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
        BlocProvider(create: (context) => ArtistAppBloc()),
        BlocProvider(
            create: (context) => ArtistAgendaBloc(
                  agendaService: context.read(),
                  sessionService: context.read(),
                )),
        BlocProvider(create: (context) => ArtistsListBloc()),
        BlocProvider(
            create: (context) => ArtistAgendaEventDetailBloc(
                  agendaService: context.read(),
                  sessionService: context.read(),
                )),
        BlocProvider(
            create: (context) => ArtistAgendaCreateEventBloc(
                  customerService: context.read(),
                  sessionService: context.read(),
                )),
        BlocProvider(
            create: (context) => ExplorerPageBloc(
                  mapBloc: context.read(),
                  localSessionService: context.read(),
                  locationService: context.read(),
                  artistsListBloc: context.read(),
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
                  artistsListBloc: context.read(),
                )),
        BlocProvider(
            create: (context) => ArtistReviewsBloc(
                  localSessionService: context.read(),
                  reviewService: context.read(),
                )),
        BlocProvider(create: (context) => ArtistBioCubitCubit()),
        BlocProvider(
            create: (context) => ScheduleAssistantBloc(
                agendaService: context.read(), sessionService: context.read())),
        BlocProvider(
            create: (context) => ArtistMyProfileBloc(
                  context.read(),
                )),
        BlocProvider(
            create: (context) => SettingsBloc(
                  logoutUseCase: context.read(),
                  sessionService: context.read(),
                  settingsService: context.read(),
                )),
        BlocProvider(
          create: (context) => LocalizationCubit(),
        ),
        BlocProvider(
            create: (context) => CustomerMyProfileBloc(
                customerService: context.read(),
                sessionService: context.read())),
        BlocProvider(
            create: (context) => CustomerQuotationResponseBloc(
                quotationService: context.read(),
                sessionService: context.read())),
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
              return BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) async {
                    await _navigateByAuthStatus(context, state);
                  },
                  child: child);
            },
            onGenerateRoute: (settings) {
              if (settings.name == '/') {
                return MaterialPageRoute(
                    builder: (context) => const SplashPage());
              }

              if (settings.name == '/createEvent') {
                return MaterialPageRoute(
                    builder: (context) => const CreateEventPage());
              }

              if (settings.name == '/agendaEventDetail') {
                final args = settings.arguments;
                if (args is int) {
                  return MaterialPageRoute(
                    builder: (context) {
                      return AgendaEventDetailPage(eventId: args);
                    },
                  );
                } else {
                  return MaterialPageRoute(
                    builder: (context) {
                      return const ErrorPage(
                        message: 'Invalid argument type. Expected an integer.',
                      );
                    },
                  );
                }
              }

              if (settings.name == '/settings') {
                return MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                );
              }

              if (settings.name == '/languageSettings') {
                return MaterialPageRoute(
                  builder: (context) => const LanguageSettingsPage(),
                );
              }

              if (settings.name == '/privacyPolicy') {
                return MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyPage(),
                );
              }

              if (settings.name == '/termsAndConditions') {
                return MaterialPageRoute(
                  builder: (context) => const TermsAndConditionsPage(),
                );
              }

              if (settings.name == '/artistQuotationResponse') {
                final args = settings.arguments as Map<String, dynamic>;
                return MaterialPageRoute(
                  builder: (context) => ArtistQuotationResponsePage(
                      quotationId: args['quotationId'],
                      predefinedAction: args['predefinedAction']),
                );
              }


              if (settings.name == '/customerQuotationResponse') {
                final args = settings.arguments as Map<String, dynamic>;
                return MaterialPageRoute(
                  builder: (context) => CustomerQuotationResponsePage(
                      quotationId: args['quotationId'],
                      predefinedAction: args['predefinedAction']),
                );
              }

              if (settings.name == CreateQuotationPage.routeName) {
                final args = settings.arguments as Map<String, dynamic>;
                return CreateQuotationPage.route(artistId: args['artistId']);
              }

              if (settings.name == '/editField') {
                final args = settings.arguments as EditFieldArguments;
                return MaterialPageRoute(
                  builder: (context) {
                    return EditFieldPage(arguments: args);
                  },
                );
              }

              if (settings.name == '/artistProfile') {
                return MaterialPageRoute(
                  builder: (context) => const ArtistMyProfilePage(),
                );
              }

              return null;
            },
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

class ErrorPage extends StatelessWidget {
  final String message;

  const ErrorPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
