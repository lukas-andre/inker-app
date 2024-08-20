import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiCustomerService implements CustomerService {
  static const String className = 'ApiCustomerService';
  final HttpClientConfig _httpConfig;

  ApiCustomerService()
      : _httpConfig = HttpClientConfig(basePath: 'customer'),
        super();

// TODO: BORRAR ESTO!, ESTO YA LO HACE EL USER SERVICE
  @override
  Future<CreateCustomerResponse> createCustomerUser(
      CreateCustomerRequest request) async {
    final url = _httpConfig.url(basePath: 'users');
    dev.inspect(url, 'url');
    dev.log(request.toString(), className);
    final response = await http.post(url, body: request.toJson());
    dev.log(response.toString(), className);

    dev.inspect(response.body, 'createCustomerUser response.body');
    dev.log(response.statusCode.toString(),
        'createCustomerUser.statusCode response');

    if (response.statusCode == HttpStatus.created) {
      try {
        return CreateCustomerResponse.fromJson(response.body);
      } catch (e, stackTrace) {
        dev.logError(e, stackTrace);
        throw JsonParseException();
      }
    }

    if (response.statusCode == HttpStatus.conflict) {
      throw UserAlreadyExistsException();
    }

    if (response.statusCode >= HttpStatus.internalServerError) {
      throw InternalServerException();
    }

    throw Exception('Problems creating customer account for ${request.email}');
  }

  @override
  Future<SearchCustomerResponse> searchByTerm(String token, String term) async {
    final url = _httpConfig.surl(
      basePath: 'customers',
      path: 'search',
      queryParams: {'term': term},
    );

    try {
      final response = await http.get(url, headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
      });

      if (response.statusCode == HttpStatus.ok) {
        try {
          return SearchCustomerResponse(
              customers: getCustomerDTOsFromJson(response.body));
        } catch (e) {
          throw JsonParseException();
        }
      } else if (response.statusCode == HttpStatus.notFound) {
        throw ResourceNotFound();
      } else {
        throw Exception('Error while searching customers');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
