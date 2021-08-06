import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/base_client.dart';
import 'package:inker_studio/data/remote/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/remote/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

class CustomerServiceImpl implements CustomerService {
  static const String className = 'AuthService';
  final HttpClientConfig _httpConfig;

  CustomerServiceImpl()
      : _httpConfig = HttpClientConfig(
            baseUrl: HttpClientConfig.baseLocalUrl, basePath: 'users'),
        super();

  @override
  Future<CreateCustomerResponse> createCustomerUser(
      CreateCustomerRequest request) async {
    final url = _httpConfig.url();
    dev.inspect(url, 'url');

    final response = await http.post(url, body: request.toJson());
    dev.inspect(response, 'createCustomerUser response');
    dev.log(response.statusCode.toString(),
        'createCustomerUser.statusCode response');

    if (response.statusCode == HttpStatus.created) {
      return createCustomerResponseFromJson(response.body);
    }

    throw Exception('Error creating account for ${request.firstName}');
  }
}
