
import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

abstract class AuthService {
  Future<dynamic> login(LoginRequest request);
  Future<dynamic> logut(LoginRequest request);
}
