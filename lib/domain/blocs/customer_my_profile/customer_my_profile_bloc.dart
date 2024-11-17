import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/customer/dtos/update_customer_dto.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'customer_my_profile_event.dart';
part 'customer_my_profile_state.dart';
part 'customer_my_profile_bloc.freezed.dart';

class CustomerMyProfileBloc
    extends Bloc<CustomerProfileEvent, CustomerProfileState> {
  final CustomerService _customerService;
  final LocalSessionService _localSessionService;

  CustomerMyProfileBloc({
    required CustomerService customerService,
    required LocalSessionService sessionService,
  })  : _customerService = customerService,
        _localSessionService = sessionService,
        super(const CustomerProfileState.initial()) {
    on<CustomerProfileEvent>((event, emit) async {
      await event.when(
        loadProfile: () => _loadProfile(emit),
        updateProfile: (customer) async => await _updateProfile(customer, emit),
        updateName: (firstName, lastName) =>
            _updateName(firstName, lastName, emit),
        updateDescription: (description) =>
            _updateDescription(description, emit),
        updateProfileImage: (image) async =>
            await _updateProfileImage(image, emit),
        updateEmail: (email) => _updateEmail(email, emit),
        updatePhoneNumber: (phoneNumber) =>
            _updatePhoneNumber(phoneNumber, emit),
      );
    });
  }

  Future<void> _loadProfile(Emitter<CustomerProfileState> emit) async {
    emit(const CustomerProfileState.loading());
    try {
      final token = await _localSessionService.getActiveSessionToken();
      if (token == null) {
        emit(const CustomerProfileState.error('No hay una sesión activa.'));
        return;
      }
      final customer = await _customerService.getCustomerProfile(token);
      emit(CustomerProfileState.loaded(customer));
    } catch (e) {
      emit(CustomerProfileState.error(e.toString()));
    }
  }

  Future<void> _updateProfile(
      Customer customer, Emitter<CustomerProfileState> emit) async {
    emit(const CustomerProfileState.loading());
    try {
      final token = await _localSessionService.getActiveSessionToken();
      if (token == null) {
        emit(const CustomerProfileState.error('No hay una sesión activa.'));
        return;
      }
      await _customerService.updateCustomerProfile(
          UpdateCustomerDto(
            firstName: customer.firstName,
            lastName: customer.lastName,
            shortDescription: customer.shortDescription,
            contactEmail: customer.contactEmail,
            contactPhoneNumber: customer.contactPhoneNumber,
          ),
          token);
      emit(CustomerProfileState.loaded(customer));
    } catch (e) {
      emit(CustomerProfileState.error(e.toString()));
    }
  }

  Future<void> _updateName(String firstName, String lastName,
      Emitter<CustomerProfileState> emit) async {
    await state.maybeWhen(
      loaded: (customer) async {
        emit(const CustomerProfileState.loading());
        try {
          final token = await _localSessionService.getActiveSessionToken();
          if (token == null) {
            emit(const CustomerProfileState.error('No hay una sesión activa.'));
            return;
          }
          final updatedCustomer = await _customerService.updateCustomerProfile(
              UpdateCustomerDto(
                firstName: firstName,
                lastName: lastName,
              ),
              token);
          emit(CustomerProfileState.loaded(updatedCustomer));
        } catch (e) {
          emit(CustomerProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const CustomerProfileState.error(
            'No se puede actualizar el nombre porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateDescription(
      String description, Emitter<CustomerProfileState> emit) async {
    await state.maybeWhen(
      loaded: (customer) async {
        emit(const CustomerProfileState.loading());
        try {
          final token = await _localSessionService.getActiveSessionToken();
          if (token == null) {
            emit(const CustomerProfileState.error('No hay una sesión activa.'));
            return;
          }
          final updatedCustomer = await _customerService.updateCustomerProfile(
              UpdateCustomerDto(
                shortDescription: description,
              ),
              token);
          emit(CustomerProfileState.loaded(updatedCustomer));
        } catch (e) {
          emit(CustomerProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const CustomerProfileState.error(
            'No se puede actualizar la descripción porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateProfileImage(
      XFile image, Emitter<CustomerProfileState> emit) async {
    await state.maybeWhen(
      loaded: (customer) async {
        emit(const CustomerProfileState.loading());
        try {
          final token = await _localSessionService.getActiveSessionToken();
          if (token == null) {
            emit(const CustomerProfileState.error('No hay una sesión activa.'));
            return;
          }
          final updatedCustomer = await _customerService.updateProfilePicture(
              customer.id, image, token);
          emit(CustomerProfileState.loaded(customer.copyWith(
            profileThumbnail: updatedCustomer.profileThumbnail,
          )));
        } catch (e) {
          emit(CustomerProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const CustomerProfileState.error(
            'No se puede actualizar la imagen de perfil porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updateEmail(
      String email, Emitter<CustomerProfileState> emit) async {
    await state.maybeWhen(
      loaded: (customer) async {
        emit(const CustomerProfileState.loading());
        try {
          final token = await _localSessionService.getActiveSessionToken();
          if (token == null) {
            emit(const CustomerProfileState.error('No hay una sesión activa.'));
            return;
          }
          final updatedCustomer = await _customerService.updateCustomerProfile(
              UpdateCustomerDto(
                contactEmail: email,
              ),
              token);
          emit(CustomerProfileState.loaded(updatedCustomer));
        } catch (e) {
          emit(CustomerProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const CustomerProfileState.error(
            'No se puede actualizar el email porque el perfil no está cargado.'));
      },
    );
  }

  Future<void> _updatePhoneNumber(
      String phoneNumber, Emitter<CustomerProfileState> emit) async {
    await state.maybeWhen(
      loaded: (customer) async {
        emit(const CustomerProfileState.loading());
        try {
          final token = await _localSessionService.getActiveSessionToken();
          if (token == null) {
            emit(const CustomerProfileState.error('No hay una sesión activa.'));
            return;
          }
          final updatedCustomer = await _customerService.updateCustomerProfile(
              UpdateCustomerDto(
                contactPhoneNumber: phoneNumber,
              ),
              token);
          emit(CustomerProfileState.loaded(updatedCustomer));
        } catch (e) {
          emit(CustomerProfileState.error(e.toString()));
        }
      },
      orElse: () {
        emit(const CustomerProfileState.error(
            'No se puede actualizar el teléfono porque el perfil no está cargado.'));
      },
    );
  }
}
