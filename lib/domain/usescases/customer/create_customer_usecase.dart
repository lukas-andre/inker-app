import 'package:inker_studio/data/remote/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/data/remote/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

class CreateCustomerUseCase {
  static const String className = 'CreateCustomerUseCase';
  final _userType = 'CUSTOMER';

  CreateCustomerUseCase(this._customerService);

  final CustomerService _customerService;

  Future<CreateCustomerResponse?> execute({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    final createCustomerRequest = CreateCustomerRequest(
      username: username,
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      userType: _userType,
    );

    try {
      final createCustomerUserResponse =
          await _customerService.createCustomerUser(createCustomerRequest);
      dev.log('Create customer user response $createCustomerUserResponse',
          className);
      return createCustomerUserResponse;
      // TODO: GUARDAR EN LOCAL
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
    }
  }
}
