part of 'customer_my_profile_bloc.dart';

@freezed
class CustomerProfileState with _$CustomerProfileState {
  const factory CustomerProfileState.initial() = _Initial;
  const factory CustomerProfileState.loading() = _Loading;
  const factory CustomerProfileState.loaded(Customer customer) = _Loaded;
  const factory CustomerProfileState.error(String message) = _Error;
}