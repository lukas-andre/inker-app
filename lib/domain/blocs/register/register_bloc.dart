import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEventArtistSelected>(
        (event, emit) => _mapRegisterEventArtistSelected(event, emit));

    on<RegisterEventCustomerSelected>(
        (event, emit) => _mapRegisterEventCustomerSelected(event, emit));
    on<RegisterEventSetCreatedUserId>(
        (event, emit) => _mapRegisterEventSetCreatedUserId(event, emit));
  }

  _mapRegisterEventArtistSelected(
      RegisterEventArtistSelected event, Emitter<RegisterState> emit) {
    throw UnimplementedError();
  }

  _mapRegisterEventCustomerSelected(
      RegisterEventCustomerSelected event, Emitter<RegisterState> emit) {
    throw UnimplementedError();
  }

  _mapRegisterEventSetCreatedUserId(
      RegisterEventSetCreatedUserId event, Emitter<RegisterState> emit) {
    emit(state.copyWith(createdUserId: event.userId));
  }
}
