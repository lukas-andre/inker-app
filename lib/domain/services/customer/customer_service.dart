import 'package:inker_studio/data/remote/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/remote/customer/dtos/create_customer_request.dart';

abstract class CustomerService {
  Future<CreateCustomerResponse> createCustomerUser(
      CreateCustomerRequest request);
}
