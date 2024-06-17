import 'package:inker_studio/data/api/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';

abstract class CustomerService {
  Future<CreateCustomerResponse> createCustomerUser(
      CreateCustomerRequest request);
  Future<SearchCustomerResponse> searchByTerm(String token, String term);
}
