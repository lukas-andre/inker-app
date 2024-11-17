import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/data/api/customer/dtos/update_customer_dto.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiCustomerService implements CustomerService {
  static const String className = 'ApiCustomerService';
  final HttpClientConfig _httpConfig;

  ApiCustomerService()
      : _httpConfig = HttpClientConfig(basePath: 'customers'),
        super();

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

    @override
  Future<Customer> getCustomerProfile(String token) async {
    final url = _httpConfig.surl(path: 'me');

    try {
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        return Customer.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load customer profile: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<Customer> updateCustomerProfile(UpdateCustomerDto updateCustomerDto, String token) async {
    final url = _httpConfig.surl(path: 'me');

    try {
      final response = await http.put(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: json.encode(updateCustomerDto.toJson()),
      );

      if (response.statusCode == HttpStatus.ok) {
        return Customer.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to update customer profile: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<Customer> updateProfilePicture(int customerId, XFile image, String token) async {
    final url = _httpConfig.surl(path: '$customerId/profile-picture');

    var request = http.MultipartRequest('POST', url);

    var stream = http.ByteStream(image.openRead());
    var length = await image.length();
    var multipartFile = http.MultipartFile(
      'file',
      stream,
      length,
      filename: image.name,
      contentType: MediaType('image', 'jpeg'),
    );
    request.files.add(multipartFile);

    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Bearer $token',
    });

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return Customer.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to update profile picture: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
