import 'dart:developer' as developer;

import 'dart:async';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';

import 'dtos/login_request.dart';

class AuthServiceImpl extends AuthService {
  final _streamController = new StreamController<AuthStatus>();

  AuthServiceImpl(this.localSessionService);
  final LocalSessionService localSessionService;

  @override
  Stream<AuthStatus> get status async* {
    developer.log(
        'AuthService: get status start - stream: ${_streamController.stream}');

    String token = await localSessionService.getSessionToken();
    developer.log('token: $token');

    bool keepConection = await this.checkIfValidToken(token);

    if (keepConection) {
      yield AuthStatus.authenticated;
    } else {
      yield AuthStatus.unauthenticated;
    }

    yield* _streamController.stream;
  }

  @override
  Future login(LoginRequest request) {
    throw UnimplementedError();
  }

  // Si falla el logout, atajarlo y llevarlo igual a una pantalla de desconetado
  // asi al cliente no le da ansiedad y ahí vemos como corregimos eso, algun
  // cron o algun job que reintente, por ejemplo guardar el log en la  bd y
  // de vez cuando mandar un evento para reintar el logout
  //
  @override
  Future<bool> logut() {
    // TODO: implement logut
    Future.delayed(Duration(seconds: 1));
    throw UnimplementedError();
  }

  void dispose() => _streamController.close();

  @override
  Future<bool> checkIfValidToken(String token) async {
    return JwtDecoder.isExpired(token);
  }
}
