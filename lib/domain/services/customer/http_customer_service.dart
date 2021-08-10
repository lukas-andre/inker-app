import 'package:inker_studio/data/http/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/http/customer/dtos/create_customer_request.dart';

abstract class HttpCustomerService {
  Future<CreateCustomerResponse> createCustomerUser(
      CreateCustomerRequest request);
}
