import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/account_verification/api_account_verification_service_impl.dart';
import 'package:inker_studio/data/api/auth/api_auth_service.dart';
import 'package:inker_studio/data/api/customer/api_customer_service.dart';
import 'package:inker_studio/data/api/user/api_user_service.dart';
import 'package:inker_studio/data/firebase/google_auth_service.dart';
import 'package:inker_studio/data/local/shared_preferences/local_storage_impl.dart';
import 'package:inker_studio/data/local/sqlite/sqlite_customer_service.dart';
import 'package:inker_studio/data/local/sqlite/sqlite_session_service.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/domain/usescases/auth/google_singin_usecase.dart';
import 'package:inker_studio/domain/usescases/auth/login_usecase.dart';
import 'package:inker_studio/domain/usescases/auth/logout_usecase.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';

List<RepositoryProvider> buildProviders() {
  return [
    RepositoryProvider<GoogleAuthService>(create: (_) => GoogleAuthService()),
    RepositoryProvider<LocalStorage>(create: (_) => SharedPreferencesStorage()),
    RepositoryProvider<AccountVerificationService>(
        create: (_) => ApiAccountVerificationService()),
    RepositoryProvider<UserService>(create: (_) => ApiUserService()),
    RepositoryProvider<LocalCustomerService>(
        create: (_) => SqliteCustomerService()),
    RepositoryProvider<CustomerService>(create: (_) => ApiCustomerService()),
    RepositoryProvider<LocalSessionService>(
        create: (_) => SqliteSessionService()),
    RepositoryProvider<AuthService>(
        create: (context) => ApiAuthService(context.read())),
    RepositoryProvider<GoogleSingInUsecase>(
        create: (context) => GoogleSingInUsecase(
            context.read(), context.read(), context.read())),
    RepositoryProvider<LoginUseCase>(
        create: (context) => LoginUseCase(
            authService: context.read(), localSession: context.read())),
    RepositoryProvider<LogoutUseCase>(
        create: (context) => LogoutUseCase(
            authService: context.read(), sessionService: context.read())),
    RepositoryProvider<CreateCustomerUseCase>(
        create: (context) => CreateCustomerUseCase(
            httpCustomerService: context.read(),
            localCustomerService: context.read())),
  ];
}
