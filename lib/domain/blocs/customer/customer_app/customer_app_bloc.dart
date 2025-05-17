import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'customer_app_event.dart';
part 'customer_app_state.dart';

class CustomerAppBloc extends Bloc<CustomerAppEvent, CustomerAppState> {
  CustomerAppBloc() : super(const CustomerAppState()) {
    on<CustomerAppPageIndexChanged>(_mapCustomerAppPageIndexChanged);
  }

  Future<void> _mapCustomerAppPageIndexChanged(
      CustomerAppPageIndexChanged event, Emitter<CustomerAppState> emit) async {
    if (event.index != state.index) {
      emit(state.copyWith(index: event.index));
    }
  }
}
