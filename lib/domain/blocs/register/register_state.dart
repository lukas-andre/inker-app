part of 'register_bloc.dart';

enum RegisterType {
  artist,
  customer,
  unknown,
}

class RegisterState extends Equatable {
  const RegisterState(
      {this.registerType = RegisterType.unknown, this.initialProgress = 0.25});

  final double initialProgress;
  final RegisterType registerType;

  @override
  List<Object> get props => [initialProgress, registerType];

  @override
  bool get stringify => true;
}
