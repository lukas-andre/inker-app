import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/http/account_verification/http_account_verification_service_impl.dart';
import 'package:inker_studio/data/http/auth/auth_service_impl.dart';
import 'package:inker_studio/data/http/customer/http_customer_service_impl.dart';
import 'package:inker_studio/data/local/local_customer_service_impl.dart';
import 'package:inker_studio/data/local/local_session_service_impl.dart';
import 'package:inker_studio/data/local/local_storage_impl.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/customer/http_customer_service.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/domain/usescases/auth/login_usescase.dart';
import 'package:inker_studio/domain/usescases/auth/logout_usecase.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';

List<RepositoryProvider> buildProviders() {
  return [
    RepositoryProvider<LocalStorage>(create: (_) => LocalStorageImpl()),
    RepositoryProvider<AccountVerificationService>(
        create: (_) => HttpAccountVerificationServiceImpl()),
    RepositoryProvider<LocalCustomerService>(
        create: (_) => LocalCustomerServiceImpl()),
    RepositoryProvider<HttpCustomerService>(
        create: (_) => HttpCustomerServiceImpl()),
    RepositoryProvider<LocalSessionService>(
        create: (_) => LocalSessionServiceImpl()),
    RepositoryProvider<AuthService>(
        create: (context) => AuthServiceImpl(context.read())),
    RepositoryProvider<LoginUsesCase>(
        create: (context) => LoginUsesCase(
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
