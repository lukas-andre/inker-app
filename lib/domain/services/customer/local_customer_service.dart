import 'package:inker_studio/domain/models/customer/customer.dart';

abstract class LocalCustomerService {
  Future<Customer?> saveCustomer(Customer customer);

  Future<Customer?> getCustomer();

  Future<Customer?> updateCustomer(Map<String, dynamic> customer);
}
