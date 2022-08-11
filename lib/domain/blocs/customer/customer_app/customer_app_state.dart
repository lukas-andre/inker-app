part of 'customer_app_bloc.dart';

class CustomerAppState extends Equatable {
  const CustomerAppState(
      {this.index = 0,
      required this.customerPageNavBarIcons,
      this.pgStack,
      this.isError,
      this.errorMessage});

  final int index;
  final CustomerPageNavBarIcons customerPageNavBarIcons;
  final List<int>? pgStack;
  final bool? isError;
  final String? errorMessage;

  @override
  List<Object?> get props =>
      [index, customerPageNavBarIcons, pgStack, isError, errorMessage];

  @override
  bool get stringify => true;

  CustomerAppState copyWith({
    int? index,
    CustomerPageNavBarIcons? customerPageNavBarIcons,
    List<int>? pgStack,
    bool? isError,
    String? errorMessage,
  }) {
    return CustomerAppState(
      index: index ?? this.index,
      customerPageNavBarIcons:
          customerPageNavBarIcons ?? this.customerPageNavBarIcons,
      pgStack: pgStack ?? this.pgStack,
      isError: isError ?? this.isError,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
