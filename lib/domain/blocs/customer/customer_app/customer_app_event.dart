part of 'customer_app_bloc.dart';

abstract class CustomerAppEvent extends Equatable {
  const CustomerAppEvent();

  @override
  List<Object> get props => [];
}

class CustomerAppPageIndexChanged extends CustomerAppEvent {
  final int index;
  const CustomerAppPageIndexChanged({required this.index});
  @override
  List<Object> get props => [index];
}
