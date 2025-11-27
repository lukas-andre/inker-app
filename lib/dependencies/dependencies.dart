import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/account_verification/api_account_verification_service_impl.dart';
import 'package:inker_studio/data/api/agenda/api_agenda_service.dart';
import 'package:inker_studio/data/api/analytics/api_analytics_service.dart';
import 'package:inker_studio/data/api/appointment/api_appointment_service.dart';
import 'package:inker_studio/data/api/artist/api_artist_service.dart';
import 'package:inker_studio/features/auth_shared/data/api/api_auth_service.dart';
import 'package:inker_studio/data/api/consent/api_consent_service.dart';
import 'package:inker_studio/data/api/customer/api_customer_service.dart';
import 'package:inker_studio/data/api/fcm/api_fcm_service.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/location/api_location_service.dart';
import 'package:inker_studio/data/api/notifications/api_notifications_service.dart';
import 'package:inker_studio/data/api/quotation/api_quotation_service.dart';
import 'package:inker_studio/data/api/review/api_review_service.dart';
import 'package:inker_studio/data/api/settings/api_settings_service.dart';
import 'package:inker_studio/data/api/stencil/stencil_client_service.dart';
import 'package:inker_studio/data/api/tattoo_generator/tattoo_generator_client.dart';
import 'package:inker_studio/data/api/user/api_user_service.dart';
import 'package:inker_studio/data/api/work/work_client_service.dart';
import 'package:inker_studio/features/auth_shared/data/firebase/google_auth_service.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/data/gcp/places_service_factory.dart';
import 'package:inker_studio/data/local/shared_preferences/local_storage_impl.dart';
import 'package:inker_studio/data/geolocation/geolocation_factory.dart';
import 'package:inker_studio/data/local/database/database_factory.dart';
import 'package:inker_studio/data/local/database/platform_customer_service.dart';
import 'package:inker_studio/data/local/database/platform_session_service.dart';
import 'package:inker_studio/domain/services/database/platform_database_service.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/analytics/analytics_service.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/features/auth_shared/services/auth_service.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/domain/services/notifications/fmc_service.dart';
import 'package:inker_studio/domain/services/notifications/notifications_service.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/appointment/appointment_service.dart';
import 'package:inker_studio/domain/services/review/review_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/settings/settings_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/features/auth_shared/usecases/google_signin_usecase.dart';
import 'package:inker_studio/features/auth_shared/usecases/login_usecase.dart';
import 'package:inker_studio/features/auth_shared/usecases/logout_usecase.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/domain/usescases/user/create_user_usecase.dart';
import 'package:inker_studio/domain/services/event_bus/app_event_bus.dart';
import 'package:inker_studio/data/api/tokens/api_token_service.dart';
import 'package:inker_studio/domain/services/tokens/token_service.dart';
import 'package:inker_studio/domain/services/tokens/token_storage_service.dart';
import 'package:inker_studio/domain/blocs/tokens/token_cubit.dart';
import 'package:inker_studio/domain/services/environment/environment_service.dart';
import 'package:inker_studio/data/services/environment/environment_service_impl.dart';

Future<List<RepositoryProvider>> buildProviders() async {
  // Initialize services that need to be created asynchronously
  final remoteConfig = await RemoteConfigService.getInstance();
  final httpClient = await HttpClientService.getInstance();
  
  // Initialize database service
  final databaseService = DatabaseFactory.createDatabaseService();
  await databaseService.initDB();
  
  // Initialize geolocation service
  final geolocationService = GeolocationFactory.createGeolocationService();
  
  // Initialize environment service and set it in HttpClientService
  final localStorage = SharedPreferencesStorage();
  final environmentService = EnvironmentServiceImpl(
    localStorage: localStorage,
    remoteConfig: remoteConfig,
  );
  await environmentService.initialize();
  httpClient.setEnvironmentService(environmentService);
  
  return [
    // Event bus provider - singleton instance for app-wide communication
    RepositoryProvider<AppEventBus>(create: (_) => AppEventBus()),
    // LocalStorage must be provided before EnvironmentService
    RepositoryProvider<LocalStorage>(create: (_) => localStorage),
    // Environment service provider - must be before HttpClientService
    RepositoryProvider<EnvironmentService>(
      create: (_) => environmentService,
    ),
    // Database service provider
    RepositoryProvider<PlatformDatabaseService>(create: (_) => databaseService),
    // Geolocation service provider
    RepositoryProvider<PlatformGeolocationService>(create: (_) => geolocationService),
    // Platform service provider
    RepositoryProvider<PlatformService>(create: (_) => PlatformServiceImpl()),
    RepositoryProvider<GoogleAuthService>(create: (_) => GoogleAuthService()),
    RepositoryProvider<LocationService>(create: (_) => ApiLocationService()),
    RepositoryProvider<QuotationService>(create: (_) => ApiQuotationService()),
    RepositoryProvider<AccountVerificationService>(
        create: (_) => ApiAccountVerificationService()),
    RepositoryProvider<UserService>(create: (_) => ApiUserService()),
    RepositoryProvider<LocalCustomerService>(
        create: (_) => PlatformCustomerService()),
    RepositoryProvider<CustomerService>(create: (_) => ApiCustomerService()),
    RepositoryProvider<LocalSessionService>(
        create: (_) => PlatformSessionService()),
    // Add the pre-initialized HttpClientService first
    RepositoryProvider<HttpClientService>(
      create: (_) => httpClient,
    ),
    // Now PlacesService can read HttpClientService
    RepositoryProvider<PlacesService>(
      create: (context) => PlacesServiceFactory.create(
        httpClient: context.read<HttpClientService>(),
        sessionService: context.read<LocalSessionService>(),
      ),
    ),
    RepositoryProvider<ArtistService>(
        create: (context) => ApiArtistService(
              sessionService: context.read(),
            )),

    RepositoryProvider<AuthService>(
        create: (context) => ApiAuthService(context.read())),
    RepositoryProvider<ReviewService>(create: (_) => ApiReviewService()),
    RepositoryProvider<AgendaService>(create: (_) => ApiAgendaService()),
    RepositoryProvider<AppointmentService>(create: (_) => ApiAppointmentService()),
    RepositoryProvider<GoogleSingInUseCase>(
        create: (context) =>
            GoogleSingInUseCase(context.read(), context.read())),
    RepositoryProvider<LoginUseCase>(
        create: (context) => LoginUseCase(
            authService: context.read(), localSession: context.read())),
    RepositoryProvider<LogoutUseCase>(
        create: (context) => LogoutUseCase(
            authService: context.read(),
            sessionService: context.read(),
            googleAuthService: context.read())),
    RepositoryProvider<CreateCustomerUseCase>(
        create: (context) => CreateCustomerUseCase(
            httpCustomerService: context.read(),
            localCustomerService: context.read())),
    RepositoryProvider<CreateUserUseCase>(
      create: (context) => CreateUserUseCase(
          gcpPlacesService: context.read(), userService: context.read()),
    ),
    RepositoryProvider<SettingsService>(
      create: (context) => ApiSettingsService(),
    ),
    RepositoryProvider<FcmService>(
      create: (context) => FcmService(),
    ),
    // Now we can initialize ApiNotificationsService with the httpClient
    RepositoryProvider<ApiNotificationsService>(
      create: (context) => ApiNotificationsServiceImpl(context.read<HttpClientService>()),
    ),
    // Finally create NotificationsService that depends on ApiNotificationsService
    RepositoryProvider<NotificationsService>(
      create: (context) => NotificationsServiceImpl(context.read<ApiNotificationsService>()),
    ),
    // FCM API Service
    RepositoryProvider<ApiFcmService>(
      create: (context) => ApiFcmServiceImpl(context.read<HttpClientService>()),
    ),
    RepositoryProvider<StencilService>(
      create: (context) => StencilClientService(context.read<HttpClientService>()),
    ),
    RepositoryProvider<WorkService>(
      create: (context) => WorkClientService(context.read<HttpClientService>()),
    ),
    // Add the analytics service
    RepositoryProvider<AnalyticsService>(
      create: (context) => ApiAnalyticsService(context.read<HttpClientService>()),
    ),
    // Add the tattoo generator service
    RepositoryProvider<TattooGeneratorService>(
      create: (context) => TattooGeneratorClient(context.read<HttpClientService>()),
    ),
    // Add the consent service
    RepositoryProvider<ConsentService>(
      create: (context) => ApiConsentService(context.read<HttpClientService>()),
    ),
    // Add token services
    RepositoryProvider<ApiTokenService>(
      create: (context) => ApiTokenServiceImpl(context.read<HttpClientService>()),
    ),
    RepositoryProvider<TokenStorageService>(
      create: (context) => TokenStorageServiceImpl(context.read<PlatformDatabaseService>()),
    ),
    RepositoryProvider<TokenService>(
      create: (context) => TokenServiceImpl(
        apiTokenService: context.read<ApiTokenService>(),
        sessionService: context.read<LocalSessionService>(),
      ),
    ),
    // Add TokenCubit
    RepositoryProvider<TokenCubit>(
      create: (context) => TokenCubit(
        tokenService: context.read<TokenService>(),
        tokenStorageService: context.read<TokenStorageService>(),
        sessionService: context.read<LocalSessionService>(),
      ),
    ),
  ];
}
