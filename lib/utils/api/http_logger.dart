import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inker_studio/utils/dev.dart';

class HttpLogger {
  static const String _tag = 'HttpClientService';

  static void logError(
    dynamic error, {
    StackTrace? stackTrace,
    Uri? url,
    String? requestBody,
    String? responseBody,
  }) {
    final errorDetails = {
      'timestamp': DateTime.now().toIso8601String(),
      'url': url?.toString(),
      'error': error.toString(),
      'stackTrace': stackTrace?.toString(),
      'requestBody': requestBody,
      'responseBody': responseBody,
    };

    dev.logError(
      'HTTP Error: ${error.runtimeType}\n'
      'Details: ${json.encode(errorDetails)}',
      stackTrace ?? StackTrace.current,
    );
  }

  static void logRequest(
    String method,
    Uri url, {
    Map<String, String>? headers,
    dynamic body,
  }) {
    dev.log(
      'HTTP Request:\n'
      'Method: $method\n'
      'URL: $url\n'
      'Headers: $headers\n'
      'Body: $body',
      _tag,
    );
  }

  static void logResponse(http.Response response, {Duration? duration}) {
    dev.log(
      'HTTP Response:\n'
      'Status: ${response.statusCode}\n'
      'Duration: ${duration?.inMilliseconds}ms\n'
      'URL: ${response.request?.url}\n'
      'Headers: ${response.headers}\n'
      'Body: ${_truncateResponseBody(response.body)}',
      _tag,
    );
  }

  static String _truncateResponseBody(String body, {int maxLength = 1000}) {
    if (body.length <= maxLength) return body;
    return '${body.substring(0, maxLength)}... (truncated)';
  }
}
