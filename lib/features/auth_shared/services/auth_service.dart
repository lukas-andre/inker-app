import 'package:inker_studio/features/auth_shared/bloc/auth/auth_status.dart';
import 'package:inker_studio/features/auth_shared/data/api/dtos/login_request.dart';
import 'package:inker_studio/features/auth_shared/data/api/dtos/login_response.dart';
import 'package:inker_studio/features/auth_shared/models/session/session.dart';

abstract class AuthService {
  Stream<AuthStatus> get status;

  AuthStatus get statusValue;

  bool checkIfValidToken(String token);

  Future<LoginResponse> login(LoginRequest request);

  Future<dynamic> logout(Session session);

  void dispose();
}
