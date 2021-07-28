import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/local/local_storage_impl.dart';
import 'package:inker_studio/data/local/local_session_service_impl.dart';
import 'package:inker_studio/data/remote/auth/auth_service_impl.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/usescases/login_usescase.dart';
import 'package:inker_studio/usescases/logout_usecase.dart';

List<RepositoryProvider> buildProviders() {
  return [
    // TODO: AGREGAR NUEVAS DEPENDENCIAS COMO USER Y _NO SE CUAL MAS XD
    RepositoryProvider<LocalStorage>(create: (_) => LocalStorageImpl()),
    RepositoryProvider<LocalSessionService>(
        create: (_) => LocalSessionServiceImpl()),
    RepositoryProvider<AuthService>(
        create: (context) => AuthServiceImpl(context.read())),
    RepositoryProvider<LoginUsesCase>(
        create: (context) => LoginUsesCase(context.read(), context.read())),
    RepositoryProvider<LogoutUseCase>(
        create: (context) => LogoutUseCase(context.read())),
  ];
}
