import 'dart:async';
import 'dart:io';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_status.dart';
import 'package:inker_studio/features/auth_shared/models/session/session.dart';
import 'package:inker_studio/features/auth_shared/services/auth_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'dtos/login_request.dart';
import 'dtos/login_response.dart';

class ApiAuthService extends AuthService {
  static const String _basePath = 'auth';
  final LocalSessionService _localSessionService;
  final _streamController = StreamController<AuthStatus>();
  late final HttpClientService _httpClient;
  
  AuthStatus _statusValue = AuthStatus.unknown;

  ApiAuthService(this._localSessionService) : super() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  AuthStatus get statusValue => _statusValue;

  @override
  Stream<AuthStatus> get status async* {
    dev.log('get status start - status: $statusValue', 'ApiAuthService', 'status');

    String? token = await _localSessionService.getActiveSessionToken();
    dev.log('token: $token', 'ApiAuthService', 'status');

    bool keepConnection = checkIfValidToken(token);
    dev.log('keepConnection: $keepConnection', 'ApiAuthService', 'status');

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
    try {
      return await _httpClient.post<LoginResponse>(
        path: '$_basePath/login',
        body: request.toJson(),
        fromJson: (json) => LoginResponse.fromJson(json),
      );
    } on CustomHttpException catch (e) {
      switch (e.statusCode) {
        case HttpStatus.badRequest:
          throw InvalidCredentialsException();
          
        case HttpStatus.conflict:
          if (e.message.contains('User is not active')) {
            throw UserIsNotActiveException();
          }
          rethrow;
          
        default:
          throw Exception('Error in login identifier ${request.identifier}');
      }
    }
  }

  @override
  Future<bool> logout(Session session) async {
    try {
      await _localSessionService.logout(session);
      return true;
    } catch (e, stackTrace) {
      // Manejar el error silenciosamente pero registrarlo
      dev.logError(e, stackTrace);
      // Podríamos agregar aquí la lógica para guardar el intento fallido
      // y reintentar más tarde
      return true; // Retornamos true para mantener la UX fluida
    }
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

class InvalidCredentialsException implements Exception {
  @override
  String toString() => 'Invalid credentials provided';
}

class UserIsNotActiveException implements Exception {
  @override
  String toString() => 'User account is not active';
}