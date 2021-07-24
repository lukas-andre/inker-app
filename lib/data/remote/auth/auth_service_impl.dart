import 'dart:developer' as developer;
import 'dart:async' show StreamController;

import 'package:inker_studio/config/base_client.dart';
import 'package:inker_studio/data/remote/auth/dtos/login_response.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;

import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';

import 'dtos/login_request.dart';

class AuthServiceImpl extends AuthService {
  static const String className = 'AuthService';

  final HttpClientConfig _httpConfig;
  final _streamController = StreamController<AuthStatus>();

  AuthStatus _statusValue = AuthStatus.unknown;

  AuthServiceImpl(this._localSessionService)
      : _httpConfig = HttpClientConfig(
            baseUrl: HttpClientConfig.baseStgUrl, basePath: 'auth'),
        super();

  final LocalSessionService _localSessionService;

  @override
  AuthStatus get statusValue => _statusValue;

  @override
  Stream<AuthStatus> get status async* {
    developer.log('get status start - status: $statusValue',
        name: '$className::status');

    String? token = await _localSessionService.getSessionToken();
    developer.log('token: $token', name: '$className::status');

    bool keepConection = checkIfValidToken(token);
    developer.log('keepConection: $keepConection', name: '$className::status');

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
  Future<LoginResponse> logIn(LoginRequest request) async {
    var url = _httpConfig.url('login');
    var response = await http.post(url, body: request.toJson());
    developer.log('Response status: ${response.statusCode}',
        name: '$className::login');
    developer.log('Response body: ${response.body}', name: '$className::login');

    if (response.statusCode == 200) {
      return loginResponseFromJson(response.body);
    }

    throw Exception('error in login identifier ${request.identifier}');
  }

  // Si falla el logout, atajarlo y llevarlo igual a una pantalla de desconetado
  // asi al cliente no le da ansiedad y ahí vemos como corregimos eso, algun
  // cron o algun job que reintente, por ejemplo guardar el log en la  bd y
  // de vez cuando mandar un evento para reintar el logout
  //
  @override
  Future<bool> logOut() {
    // TODO: implement logut
    Future.delayed(const Duration(seconds: 1));
    throw UnimplementedError();
  }

  @override
  void dispose() => _streamController.close();

  @override
  bool checkIfValidToken(String? token) {
    if (token == null) return false;

    try {
      return JwtDecoder.isExpired(token);
    } catch (e, stackTrace) {
      developer.log('checkIfValidToken error: $e',
          name: '$className::checkIfValidToken',
          stackTrace: stackTrace,
          error: e.toString());
      return false;
    }
  }
}
