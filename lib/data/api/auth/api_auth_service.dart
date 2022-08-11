import 'dart:async' show StreamController;
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'dtos/login_request.dart';
import 'dtos/login_response.dart';

class InvalidCredentialsException implements Exception {}

class UserIsNotActiveException implements Exception {}

class ApiAuthService extends AuthService {
  static const String className = 'ApiAuthService';

  final HttpClientConfig _httpConfig;
  final _streamController = StreamController<AuthStatus>();

  AuthStatus _statusValue = AuthStatus.unknown;

  ApiAuthService(this._localSessionService)
      : _httpConfig = HttpClientConfig(basePath: 'auth'),
        super();

  final LocalSessionService _localSessionService;

  @override
  AuthStatus get statusValue => _statusValue;

  @override
  Stream<AuthStatus> get status async* {
    dev.log('get status start - status: $statusValue', className, 'status');

// GET ACTIVE SESSION IF IS GOOGLE, GET CURRENTUSER AND AUTHENTICATE !
    String? token = await _localSessionService.getActiveSessionToken();
    dev.log('token: $token', className, 'status');

    bool keepConnection = checkIfValidToken(token);
    dev.log('keepConfection: $keepConnection', className, 'status');

    if (keepConnection) {
      yield AuthStatus.authenticated;
      _statusValue = AuthStatus.authenticated;
    } else {
      yield AuthStatus.unauthenticated;
      _statusValue = AuthStatus.unauthenticated;
    }

    yield* _streamController.stream;
  }

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    final url = _httpConfig.surl(path: 'login');
    final response = await http.post(url, body: request.toJson());
    dev.inspect(response, 'response');

    if (response.statusCode == HttpStatus.ok) {
      return loginResponseFromJson(response.body);
    }

    if (response.statusCode == HttpStatus.conflict) {
      throw InvalidCredentialsException();
    }

    if (response.statusCode == HttpStatus.badRequest) {
      if (response.body.contains('User is not active')) {
        throw UserIsNotActiveException();
      }
    }

    throw Exception('error in login identifier ${request.identifier}');
  }

  // Si falla el logout, atajarlo y llevarlo igual a una pantalla de desconetado
  // asi al cliente no le da ansiedad y ahí vemos como corregimos eso, algun
  // cron o algun job que reintente, por ejemplo guardar el log en la  bd y
  // de vez cuando mandar un evento para reintar el logout
  //
  @override
  Future<bool> logout(Session session) async {
    await _localSessionService.logout(session);
    return true;
  }

  @override
  bool checkIfValidToken(String? token) {
    if (token == null) return false;

    try {
      return !(JwtDecoder.isExpired(token));
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      return false;
    }
  }

  @override
  void dispose() => _streamController.close();
}
