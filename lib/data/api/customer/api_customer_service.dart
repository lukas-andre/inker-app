import 'dart:io';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
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
  late final HttpClientService _httpClient;

  ApiCustomerService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<CreateCustomerResponse> createCustomerUser(
      CreateCustomerRequest request) async {
    try {
      dev.log(request.toString(), className);
      final response = await _httpClient.post(
        path: 'users',
        body: request.toJson(),
        fromJson: (json) => CreateCustomerResponse.fromMap(json),
      );
      
      dev.inspect(response, 'createCustomerUser response');
      return response;
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      
      if (e.statusCode == HttpStatus.conflict) {
        throw UserAlreadyExistsException();
      }
      
      if (e.statusCode >= HttpStatus.internalServerError) {
        throw InternalServerException();
      }
      
      throw Exception('Problems creating customer account for ${request.email}');
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }

  @override
  Future<SearchCustomerResponse> searchByTerm(String token, String term) async {
    try {
      return await _httpClient.get(
        path: 'customers/search',
        token: token,
        queryParams: {'term': term},
        fromJson: (json) => SearchCustomerResponse.fromJson(json),
      );
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      
      if (e.statusCode == HttpStatus.notFound) {
        throw ResourceNotFound();
      }
      
      throw Exception('Error while searching customers');
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }

  @override
  Future<Customer> getCustomerProfile(String token) async {
    try {
      return await _httpClient.get(
        path: 'customers/me',
        token: token,
        fromJson: (json) => Customer.fromJson(json),
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw Exception('Failed to load customer profile: $e');
    }
  }

  @override
  Future<Customer> updateCustomerProfile(
      UpdateCustomerDto updateCustomerDto, String token) async {
    try {
      return await _httpClient.put(
        path: 'customers/me',
        token: token,
        body: updateCustomerDto.toJson(),
        fromJson: (json) => Customer.fromJson(json),
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw Exception('Failed to update customer profile: $e');
    }
  }

  @override
  Future<Customer> updateProfilePicture(
      int customerId, XFile image, String token) async {
    try {
      final files = [
        await MultipartFile.fromPath(
          'file',
          image.path,
        ),
      ];

      return await _httpClient.multipartRequest(
        path: 'customers/$customerId/profile-picture',
        method: 'POST',
        token: token,
        files: files,
        fromJson: (json) => Customer.fromJson(json),
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw Exception('Failed to update profile picture: $e');
    }
  }
}