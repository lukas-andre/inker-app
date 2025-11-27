import 'dart:convert';
import 'package:http/http.dart' as http;
import '../test_constants.dart';

class ApiClient {
  static Future<Map<String, dynamic>> post({
    required String endpoint,
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.https(TestConstants.apiEndpoint, endpoint);
    final defaultHeaders = {
      'Content-Type': 'application/json',
    };
    
    final mergedHeaders = {...defaultHeaders, ...?headers};
    
    try {
      final response = await http
          .post(
            uri,
            headers: mergedHeaders,
            body: json.encode(body),
          )
          .timeout(const Duration(seconds: TestConstants.defaultTimeoutSeconds));
          
      print('API request to: $uri');
      print('Request body: ${json.encode(body)}');
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      
      return {
        'success': response.statusCode >= 200 && response.statusCode < 300,
        'status': response.statusCode,
        'body': response.body.isNotEmpty ? json.decode(response.body) : {},
        'rawBody': response.body,
      };
    } catch (e) {
      print('API error: $e');
      return {
        'success': false,
        'error': e.toString(),
      };
    }
  }
  
  static Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.https(TestConstants.apiEndpoint, endpoint, queryParams);
    final defaultHeaders = {
      'Content-Type': 'application/json',
    };
    
    final mergedHeaders = {...defaultHeaders, ...?headers};
    
    try {
      final response = await http
          .get(
            uri,
            headers: mergedHeaders,
          )
          .timeout(const Duration(seconds: TestConstants.defaultTimeoutSeconds));
          
      print('API request to: $uri');
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      
      return {
        'success': response.statusCode >= 200 && response.statusCode < 300,
        'status': response.statusCode,
        'body': response.body.isNotEmpty ? json.decode(response.body) : {},
        'rawBody': response.body,
      };
    } catch (e) {
      print('API error: $e');
      return {
        'success': false,
        'error': e.toString(),
      };
    }
  }
} 