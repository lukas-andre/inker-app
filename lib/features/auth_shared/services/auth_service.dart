import 'package:inker_studio/features/auth/data/api/dtos/login_request.dart';
import 'package:inker_studio/features/auth/data/api/dtos/login_response.dart';
import 'package:inker_studio/features/auth/bloc/auth/auth_status.dart';
import 'package:inker_studio/features/auth/models/session/session.dart';

abstract class AuthService {
  Stream<AuthStatus> get status;

  AuthStatus get statusValue;

  bool checkIfValidToken(String token);

  Future<LoginResponse> login(LoginRequest request);

  Future<dynamic> logout(Session session);

  void dispose();
}
