import 'package:inker_studio/data/api/customer/dtos/create_customer_request.dart';
import 'package:inker_studio/data/api/customer/dtos/create_customer_response.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

class CreateCustomerUseCase {
  static const String className = 'CreateCustomerUseCase';
  final String _userType = 'CUSTOMER';

  CreateCustomerUseCase(
      {required CustomerService httpCustomerService,
      required LocalCustomerService localCustomerService})
      : _httpCustomerService = httpCustomerService,
        _localCustomerService = localCustomerService;

  final CustomerService _httpCustomerService;
  final LocalCustomerService _localCustomerService;

  Future<Customer?> execute({
    required String username,
    required String firstName,
    String? lastName,
    required String email,
    String? phoneNumber,
    required String password,
    required String socialMediaType,
  }) async {
    CreateCustomerRequest createCustomerRequest =
        _mapParamsToCreateCustomerRequest(username, email, password, firstName,
            lastName, phoneNumber, socialMediaType);

    try {
      final createCustomerUserResponse =
          await _httpCustomerService.createCustomerUser(createCustomerRequest);
      dev.log('Create customer user response $createCustomerUserResponse',
          className);

      final Customer customer =
          _mapCreateCustomerResponseToCustomer(createCustomerUserResponse);

      final localCustomer = await _localCustomerService.saveCustomer(customer);
      dev.log('localCustomer: $localCustomer', className);

      return localCustomer;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  Customer _mapCreateCustomerResponseToCustomer(
      CreateCustomerResponse createCustomerUserResponse) {
    return Customer(
        id: createCustomerUserResponse.id,
        userId: createCustomerUserResponse.userId,
        contactEmail: createCustomerUserResponse.contactEmail,
        firstName: createCustomerUserResponse.firstName,
        lastName: createCustomerUserResponse.lastName,
        follows: createCustomerUserResponse.follows,
        contactPhoneNumber: createCustomerUserResponse.contactPhoneNumber,
        profileThumbnail: createCustomerUserResponse.profileThumbnail,
        shortDescription: createCustomerUserResponse.shortDescription,
        rating: createCustomerUserResponse.rating);
  }

  CreateCustomerRequest _mapParamsToCreateCustomerRequest(
      String username,
      String email,
      String password,
      String firstName,
      String? lastName,
      String? phoneNumber,
      String socialMediaType) {
    return CreateCustomerRequest(
        username: username,
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        userType: _userType,
        socialMediaType: socialMediaType);
  }
}
