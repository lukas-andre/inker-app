import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/utils/api/http_logger.dart';

class CustomHttpException implements Exception {
  final String message;
  final int statusCode;
  final Uri? uri;

  CustomHttpException(this.message, this.statusCode, {this.uri});

  @override
  String toString() => 'CustomHttpException: $message (Status: $statusCode)';
}

class HttpClientService {
  static HttpClientService? _instance;
  final RemoteConfigService _remoteConfig;

  final Map<String, String> _defaultHeaders = {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.acceptHeader: 'application/json',
  };

  HttpClientService._(this._remoteConfig);

  static Future<HttpClientService> getInstance() async {
    if (_instance == null) {
      final remoteConfig = await RemoteConfigService.getInstance();
      _instance = HttpClientService._(remoteConfig);
    }
    return _instance!;
  }

  Future<Uri> _buildUrl(String path,
      {Map<String, dynamic>? queryParams}) async {
    await _remoteConfig.fetchAndActivate();
    final baseUrl = _remoteConfig.inkerApiUrl;
    return Uri.https(baseUrl, path, queryParams);
  }

  Map<String, String> _buildHeaders(String? token) {
    final headers = Map<String, String>.from(_defaultHeaders);
    if (token != null) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    return headers;
  }

  getBaseUrl() async {
    await _remoteConfig.fetchAndActivate();
    return _remoteConfig.inkerApiUrl;
  }

  Future<T> get<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token);

    HttpLogger.logRequest('GET', uri, headers: headers);

    try {
      final stopwatch = Stopwatch()..start();
      final response = await http.get(uri, headers: headers);
      stopwatch.stop();

      HttpLogger.logResponse(response, duration: stopwatch.elapsed);

      if (response.statusCode == HttpStatus.ok) {
        return fromJson(json.decode(response.body));
      } else {
        _handleError(response);
      }
    } catch (e) {
      _handleError(e);
    }
  }

  Future<T> post<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> body,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token);
    final encodedBody = json.encode(body);

    HttpLogger.logRequest('POST', uri, headers: headers, body: encodedBody);

    try {
      final stopwatch = Stopwatch()..start();
      final response = await http.post(
        uri,
        headers: headers,
        body: encodedBody,
      );
      stopwatch.stop();

      HttpLogger.logResponse(response, duration: stopwatch.elapsed);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return fromJson(json.decode(response.body));
      } else if (response.statusCode == HttpStatus.noContent) {
        return fromJson({});
      } else {
        _handleError(response, requestBody: encodedBody);
      }
    } catch (e) {
      _handleError(e, requestBody: encodedBody);
    }
  }

  Future<T> put<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> body,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = await _buildUrl(path, queryParams: queryParams);
      final response = await http.put(
        uri,
        headers: _buildHeaders(token),
        body: json.encode(body),
      );

      return _handleResponse(response, fromJson);
    } catch (e) {
      _handleError(e);
    }
  }

  Future<T> multipartRequest<T>({
    required String path,
    required String method,
    required T Function(Map<String, dynamic>) fromJson,
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = await _buildUrl(path, queryParams: queryParams);
      final request = http.MultipartRequest(method, uri);

      request.headers.addAll(_buildHeaders(token));

      if (fields != null) {
        request.fields.addAll(fields);
      }

      if (files != null) {
        request.files.addAll(files);
      }

      HttpLogger.logRequest('MULTIPART', uri,
          headers: request.headers, body: request.fields);

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      return _handleResponse(response, fromJson);
    } catch (e) {
      _handleError(e);
    }
  }

  T _handleResponse<T>(
    http.Response response,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    HttpLogger.logResponse(response);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      try {
        return fromJson(json.decode(response.body));
      } catch (e) {
        throw FormatException('Failed to parse response: ${response.body}');
      }
    } else {
      _handleError(response);
    }
  }

  Future<List<T>> postList<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> body,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token);
    final encodedBody = json.encode(body);

    HttpLogger.logRequest('POST', uri, headers: headers, body: encodedBody);

    try {
      final stopwatch = Stopwatch()..start();
      final response = await http.post(
        uri,
        headers: headers,
        body: encodedBody,
      );
      stopwatch.stop();

      HttpLogger.logResponse(response, duration: stopwatch.elapsed);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        final List<dynamic> decoded = json.decode(response.body);
        return decoded
            .map((item) => fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        _handleError(response, requestBody: encodedBody);
      }
    } catch (e) {
      _handleError(e, requestBody: encodedBody);
    }
  }

  // También podemos agregar el equivalente para GET si lo necesitas
  Future<List<T>> getList<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token);

    HttpLogger.logRequest('GET', uri, headers: headers);

    try {
      final stopwatch = Stopwatch()..start();
      final response = await http.get(uri, headers: headers);
      stopwatch.stop();

      HttpLogger.logResponse(response, duration: stopwatch.elapsed);

      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> decoded = json.decode(response.body);
        return decoded
            .map((item) => fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        _handleError(response);
      }
    } catch (e) {
      _handleError(e);
    }
  }

  Never _handleError(dynamic error, {String? requestBody}) {
    if (error is http.Response) {
      final statusCode = error.statusCode;
      try {
        final body = error.body;
        final decodedBody = json.decode(body);

        HttpLogger.logError(
          error,
          url: error.request?.url,
          requestBody: requestBody,
          responseBody: body,
        );

        throw CustomHttpException(
          decodedBody['message'] ?? 'Request failed with status: $statusCode',
          statusCode,
          uri: error.request?.url,
        );
      } catch (e) {
        // Si falla el decode del JSON, loggeamos ambos errores
        HttpLogger.logError(
          'Failed to decode error response: $e\nOriginal error: $error',
          url: error.request?.url,
          requestBody: requestBody,
          responseBody: error.body,
        );

        throw CustomHttpException(
          'Request failed with status: $statusCode',
          statusCode,
          uri: error.request?.url,
        );
      }
    } else if (error is SocketException) {
      HttpLogger.logError(
        error,
        stackTrace: StackTrace.current,
        responseBody: error.message,
      );

      throw CustomHttpException(
        'No internet connection',
        HttpStatus.serviceUnavailable,
      );
    } else if (error is FormatException) {
      HttpLogger.logError(
        error,
        stackTrace: StackTrace.current,
        responseBody: error.message,
      );

      throw CustomHttpException(
        'Invalid response format',
        HttpStatus.unprocessableEntity,
      );
    } else {
      HttpLogger.logError(
        error,
        stackTrace: StackTrace.current,
      );

      throw CustomHttpException(
        error.toString(),
        HttpStatus.internalServerError,
      );
    }
  }
}
