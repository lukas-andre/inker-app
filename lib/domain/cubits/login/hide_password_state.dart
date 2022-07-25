part of 'hide_password_cubit.dart';

abstract class HidePasswordState extends Equatable {
  const HidePasswordState();

  @override
  List<Object> get props => [];
}

class HidePasswordInitial extends HidePasswordState {}

class HidePasswordVisible extends HidePasswordState {}
