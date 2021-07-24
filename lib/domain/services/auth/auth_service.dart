import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';
import 'package:inker_studio/data/remote/auth/dtos/login_response.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';

abstract class AuthService {
  Stream<AuthStatus> get status;
  AuthStatus get statusValue;

  Future<LoginResponse> logIn(LoginRequest request);

  // TODO: VER SI LLEVA ALGUN PARAMETRO
  Future<dynamic> logOut();
  bool checkIfValidToken(String token);
  void dispose();
}
