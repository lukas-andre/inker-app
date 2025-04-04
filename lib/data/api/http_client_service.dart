import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
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

    // Clean the baseUrl to extract just the domain
    final cleanBaseUrl = baseUrl
        .replaceAll('https://', '')
        .replaceAll('http://', '')
        .split('/')
        .first; // Remove any paths

    // If your remote config includes /api in the path, merge it with the incoming path
    final fullPath =
        baseUrl.contains('/api') ? '/api/$path'.replaceAll('//', '/') : path;

    return Uri.https(cleanBaseUrl, fullPath, queryParams);
  }

  Map<String, String> _buildHeaders(String? token, {bool skipCache = false}) {
    final headers = Map<String, String>.from(_defaultHeaders);
    if (token != null) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    if (skipCache) {
      headers['Cache-Control'] = 'no-cache';
    }
    return headers;
  }

  Future<String> getBaseUrl() async {
    await _remoteConfig.fetchAndActivate();
    return _remoteConfig.inkerApiUrl;
  }

  Future<T> get<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    String? token,
    Map<String, dynamic>? queryParams,
    bool expectListResponse = false,
    bool skipCache = false,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token, skipCache: skipCache);

    HttpLogger.logRequest('GET', uri, headers: headers);

    try {
      final stopwatch = Stopwatch()..start();
      final response = await http.get(uri, headers: headers);
      stopwatch.stop();

      HttpLogger.logResponse(response, duration: stopwatch.elapsed);

      if (response.statusCode == HttpStatus.ok) {
        final decoded = json.decode(response.body);
        
        // If we expect a Map but got a List, handle it gracefully
        if (decoded is List && !expectListResponse) {
          // For list responses, we might want to handle them specifically in the calling code
          // Here we'll check what we should do based on the fromJson function
          if ((T == List<dynamic>) || (T == List<Object>)) {
            return decoded as T;
          }
          
          // If the API returns an empty list, return an empty map
          if (decoded.isEmpty) {
            return fromJson({});
          }
          
          // If the API returns a list with one item and we expect a map, try to use the first item
          if (decoded.length == 1 && decoded[0] is Map<String, dynamic>) {
            return fromJson(decoded[0] as Map<String, dynamic>);
          }
          
          // Otherwise, wrap the list in a map
          return fromJson({'items': decoded});
        }
        
        if (decoded is Map<String, dynamic>) {
          return fromJson(decoded);
        }
        
        // If we got null or an unexpected type, return an empty result
        return fromJson({});
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
    bool skipCache = false,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token, skipCache: skipCache);
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
        if (response.body.isEmpty) {
          return fromJson({});
        }
        return fromJson(json.decode(response.body));
      } else if (response.statusCode == HttpStatus.noContent) {
        return fromJson({});
      } else {
        _handleError(response, requestBody: encodedBody);
      }
    } catch (e) {
      if (e is CustomHttpException) {
        rethrow;
      }
      _handleError(e, requestBody: encodedBody);
    }
  }

  Future<T> put<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> body,
    String? token,
    Map<String, dynamic>? queryParams,
    bool skipCache = false,
  }) async {
    try {
      final uri = await _buildUrl(path, queryParams: queryParams);
      final headers = _buildHeaders(token, skipCache: skipCache);
      final encodedBody = json.encode(body);
      
      HttpLogger.logRequest('PUT', uri, headers: headers, body: encodedBody);
      
      final stopwatch = Stopwatch()..start();
      final response = await http.put(
        uri,
        headers: headers,
        body: encodedBody,
      );
      stopwatch.stop();
      
      HttpLogger.logResponse(response, duration: stopwatch.elapsed);
      
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.statusCode == HttpStatus.noContent || response.body.isEmpty) {
          return fromJson({});
        }
        try {
          return fromJson(json.decode(response.body));
        } catch (e) {
          // Handle empty or invalid responses more gracefully
          if (T == Null) {
            return null as T;
          }
          return fromJson({});
        }
      } else {
        _handleError(response, requestBody: encodedBody);
      }
    } catch (e) {
      if (e is CustomHttpException) {
        rethrow;
      }
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
      if (e is CustomHttpException) {
        rethrow;
      }
      _handleError(e);
    }
  }

  T _handleResponse<T>(
    http.Response response,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    HttpLogger.logResponse(response);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.statusCode == HttpStatus.noContent) {
        return fromJson({});
      }
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
      if (e is CustomHttpException) {
        rethrow;
      }
      _handleError(e, requestBody: encodedBody);
    }
  }

  Future<List<T>> getList<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
    String? token,
    Map<String, dynamic>? queryParams,
    bool skipCache = false,
  }) async {
    final uri = await _buildUrl(path, queryParams: queryParams);
    final headers = _buildHeaders(token, skipCache: skipCache);

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
      if (e is CustomHttpException) {
        rethrow;
      }
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
        if (e is CustomHttpException) {
          rethrow;
        }
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

  Future<void> delete({
    required String path,
    required String token,
    required Map<String, dynamic> body,
  }) async {
    final uri = await _buildUrl(path);
    final headers = _buildHeaders(token);
    await http.delete(uri, headers: headers, body: json.encode(body));
  }
}
