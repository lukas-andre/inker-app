import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';
import 'package:inker_studio/data/remote/auth/dtos/login_response.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';

abstract class AuthService {
  Stream<AuthStatus> get status;

  AuthStatus get statusValue;

  bool checkIfValidToken(String token);

  Future<LoginResponse> login(LoginRequest request);

  Future<dynamic> logout(Session session);

  void dispose();
}
