import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/models/customer_page_nav_bar_icons.dart';

part 'customer_app_event.dart';
part 'customer_app_state.dart';

class CustomerAppBloc extends Bloc<CustomerAppEvent, CustomerAppState> {
  CustomerAppBloc()
      : super(CustomerAppState(
            customerPageNavBarIcons: kCustomerPageNavBarIcons)) {
    on<CustomerAppPageIndexChanged>(_mapCustomerAppPageIndexChanged);
  }

  Future<void> _mapCustomerAppPageIndexChanged(
      CustomerAppPageIndexChanged event, Emitter<CustomerAppState> emit) async {
    if (event.index != state.index) {
      emit(state.copyWith(index: event.index));
    }
  }
}
