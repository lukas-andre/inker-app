import 'package:inker_studio/data/local/sqlite/core/sqlite_service.dart';
import 'package:inker_studio/data/local/sqlite/core/tables/customer_table.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

class SqliteCustomerService extends LocalCustomerService {
  static const className = 'SqliteCustomerService';

  @override
  Future<Customer?> saveCustomer(Customer customer) async {
    final Customer? savedCustomer;

    try {
      final int result = await SqliteService.instance
          .insert(CustomerTable.name, customer.toJson());
      dev.log('result $result', className, 'saveCustomer');

      savedCustomer = await getCustomer();
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }

    return savedCustomer;
  }

  @override
  Future<Customer?> getCustomer() async {
    final queryResult = await SqliteService.instance
        .query(CustomerTable.name, limit: 1, orderBy: 'createdAt DESC');

    if (queryResult.isEmpty) {
      return null;
    }

    final customerMap = Map.of(queryResult.first);

    return Customer.fromJson(customerMap);
  }

  @override
  Future<Customer?> updateCustomer(Map<String, dynamic> customer) {
    // TODO: implement updateCustomer
    throw UnimplementedError();
  }
}
