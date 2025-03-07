import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:inker_studio/data/api/account_verification/api_account_verification_service_impl.dart';
import 'package:inker_studio/data/api/agenda/api_agenda_service.dart';
import 'package:inker_studio/data/api/appointment/api_appointment_service.dart';
import 'package:inker_studio/data/api/artist/api_artist_service.dart';
import 'package:inker_studio/data/api/auth/api_auth_service.dart';
import 'package:inker_studio/data/api/customer/api_customer_service.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/location/api_location_service.dart';
import 'package:inker_studio/data/api/notifications/api_notifications_service.dart';
import 'package:inker_studio/data/api/quotation/api_quotation_service.dart';
import 'package:inker_studio/data/api/review/api_review_service.dart';
import 'package:inker_studio/data/api/settings/api_settings_service.dart';
import 'package:inker_studio/data/api/user/api_user_service.dart';
import 'package:inker_studio/data/firebase/google_auth_service.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/data/gcp/gcp_places_service.dart';
import 'package:inker_studio/data/local/shared_preferences/local_storage_impl.dart';
import 'package:inker_studio/data/local/sqlite/sqlite_customer_service.dart';
import 'package:inker_studio/data/local/sqlite/sqlite_session_service.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
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
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/domain/usescases/auth/google_singin_usecase.dart';
import 'package:inker_studio/domain/usescases/auth/login_usecase.dart';
import 'package:inker_studio/domain/usescases/auth/logout_usecase.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/domain/usescases/user/create_user_usecase.dart';

Future<List<RepositoryProvider>> buildProviders() async {
  // Initialize services that need to be created asynchronously
  final remoteConfig = await RemoteConfigService.getInstance();
  final httpClient = await HttpClientService.getInstance();
  
  return [
    RepositoryProvider<GoogleAuthService>(create: (_) => GoogleAuthService()),
    RepositoryProvider<PlacesService>(create: (_) => GcpPlacesService()),
    RepositoryProvider<LocalStorage>(create: (_) => SharedPreferencesStorage()),
    RepositoryProvider<LocationService>(create: (_) => ApiLocationService()),
    RepositoryProvider<QuotationService>(create: (_) => ApiQuotationService()),
    RepositoryProvider<AccountVerificationService>(
        create: (_) => ApiAccountVerificationService()),
    RepositoryProvider<UserService>(create: (_) => ApiUserService()),
    RepositoryProvider<LocalCustomerService>(
        create: (_) => SqliteCustomerService()),
    RepositoryProvider<CustomerService>(create: (_) => ApiCustomerService()),
    RepositoryProvider<LocalSessionService>(
        create: (_) => SqliteSessionService()),
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
    // Add the pre-initialized HttpClientService
    RepositoryProvider<HttpClientService>(
      create: (_) => httpClient,
    ),
    // Now we can initialize ApiNotificationsService with the httpClient
    RepositoryProvider<ApiNotificationsService>(
      create: (context) => ApiNotificationsServiceImpl(context.read<HttpClientService>()),
    ),
    // Finally create NotificationsService that depends on ApiNotificationsService
    RepositoryProvider<NotificationsService>(
      create: (context) => NotificationsServiceImpl(context.read<ApiNotificationsService>()),
    ),
  ];
}
