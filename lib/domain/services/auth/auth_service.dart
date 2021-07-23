import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';

abstract class AuthService {
  Stream<AuthStatus> get status;
  Future<dynamic> login(LoginRequest request);
  // TODO: VER SI LLEVA ALGUN PARAMETRO
  Future<dynamic> logut();
  Future<bool> checkIfValidToken(String token);
  void dispose();
}
