import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEventBackPressed>((event, emit) {
      // TODO: implement event handler
    });

    on<RegisterEventArtistSelected>(
        (event, emit) => _mapRegisterEventArtistSelected(event, emit));

    on<RegisterEventCustomerSelected>(
        (event, emit) => _mapRegisterEventCustomerSelected(event, emit));
  }

  _mapRegisterEventArtistSelected(
      RegisterEventArtistSelected event, Emitter<RegisterState> emit) {}

  _mapRegisterEventCustomerSelected(
      RegisterEventCustomerSelected event, Emitter<RegisterState> emit) {}
}
