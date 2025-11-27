import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/data/api/customer/dtos/update_customer_dto.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';

abstract class CustomerService {
  Future<Customer> getCustomerProfile(String token);
  Future<Customer> updateCustomerProfile(UpdateCustomerDto updateCustomerDto, String token);
  Future<Customer> updateProfilePicture(String customerId, XFile image, String token);
  Future<CreateCustomerResponse> createCustomerUser(CreateCustomerRequest request);
  Future<SearchCustomerResponse> searchByTerm(String token, String term);
}
