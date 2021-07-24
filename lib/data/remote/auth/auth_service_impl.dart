import 'dart:developer' as developer;

import 'dart:async';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';

import 'dtos/login_request.dart';

class AuthServiceImpl extends AuthService {
  final _streamController = new StreamController<AuthStatus>();
  AuthStatus _statusValue = AuthStatus.unknown;

  AuthServiceImpl(this.localSessionService);
  final LocalSessionService localSessionService;

  @override
  AuthStatus get statusValue => _statusValue;

  @override
  Stream<AuthStatus> get status async* {
    developer.log(
        'AuthService: get status start - stream: ${_streamController.stream}');

    String? token = await localSessionService.getSessionToken();
    developer.log('token: $token');

    bool keepConection = this.checkIfValidToken(token);

    if (keepConection) {
      yield AuthStatus.authenticated;
      _statusValue = AuthStatus.authenticated;
    } else {
      yield AuthStatus.unauthenticated;
      _statusValue = AuthStatus.unauthenticated;
    }

    yield* _streamController.stream;
  }

  @override
  Future logIn(LoginRequest request) {
    throw UnimplementedError();
  }

  // Si falla el logout, atajarlo y llevarlo igual a una pantalla de desconetado
  // asi al cliente no le da ansiedad y ahí vemos como corregimos eso, algun
  // cron o algun job que reintente, por ejemplo guardar el log en la  bd y
  // de vez cuando mandar un evento para reintar el logout
  //
  @override
  Future<bool> logOut() {
    // TODO: implement logut
    Future.delayed(Duration(seconds: 1));
    throw UnimplementedError();
  }

  void dispose() => _streamController.close();

  @override
  checkIfValidToken(String token) {
    try {
      return JwtDecoder.isExpired(token);
    } catch (e) {
      developer.log('checkIfValidToken error: $e');
      return false;
    }
  }
}
