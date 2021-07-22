import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/local/local_storage_impl.dart';
import 'package:inker_studio/data/local/session_db_service_impl.dart';
import 'package:inker_studio/data/remote/auth/auth_service_impl.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/session/session_db_service.dart';

List<RepositoryProvider> buildProviders() {
  return [
    RepositoryProvider<AuthService>(create: (_) => AuthServiceImpl()),
    RepositoryProvider<LocalStorage>(create: (_) => LocalStorageImpl()),
    RepositoryProvider<SessionDbService>(create: (_) => SessionDbServiceImpl()),
  ];
}
