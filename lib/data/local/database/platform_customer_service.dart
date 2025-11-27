import 'package:inker_studio/data/local/database/database_factory.dart';
import 'package:inker_studio/data/local/sqlite/core/tables/customer_table.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/domain/services/database/platform_database_service.dart';
import 'package:inker_studio/utils/dev.dart';

class PlatformCustomerService extends LocalCustomerService {
  static const className = 'PlatformCustomerService';
  
  final PlatformDatabaseService _databaseService = DatabaseFactory.createDatabaseService();

  @override
  Future<Customer?> saveCustomer(Customer customer) async {
    final Customer? savedCustomer;

    try {
      final int result = await _databaseService
          .insert(customerTable.getName(), customer.toJson());
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
    final queryResult = await _databaseService
        .query(customerTable.getName(), limit: 1, orderBy: 'createdAt DESC');

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