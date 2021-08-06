import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/local/local_storage_impl.dart';
import 'package:inker_studio/data/local/local_session_service_impl.dart';
import 'package:inker_studio/data/remote/auth/auth_service_impl.dart';
import 'package:inker_studio/data/remote/customer/customer_service_impl.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/domain/usescases/auth/login_usescase.dart';
import 'package:inker_studio/domain/usescases/auth/logout_usecase.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';

List<RepositoryProvider> buildProviders() {
  return [
    RepositoryProvider<LocalStorage>(create: (_) => LocalStorageImpl()),
    RepositoryProvider<CustomerService>(create: (_) => CustomerServiceImpl()),
    RepositoryProvider<LocalSessionService>(
        create: (_) => LocalSessionServiceImpl()),
    RepositoryProvider<AuthService>(
        create: (context) => AuthServiceImpl(context.read())),
    RepositoryProvider<LoginUsesCase>(
        create: (context) => LoginUsesCase(context.read(), context.read())),
    RepositoryProvider<LogoutUseCase>(
        create: (context) => LogoutUseCase(context.read())),
    RepositoryProvider<CreateCustomerUseCase>(
        create: (context) => CreateCustomerUseCase(context.read())),
  ];
}
