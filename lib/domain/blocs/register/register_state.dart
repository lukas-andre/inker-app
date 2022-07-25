part of 'register_bloc.dart';

enum RegisterType {
  artist,
  customer,
  unknown,
}

enum RegisterStatus {
  unknown,
  initial,
  registered,
  error,
}

class RegisterState extends Equatable {
  const RegisterState({
    this.registerType = RegisterType.unknown,
    this.initialProgress = 0.25,
    this.createdUserId,
    this.registerStatus = RegisterStatus.unknown,
  });

  final double initialProgress;
  final RegisterType registerType;
  final RegisterStatus registerStatus;
  final String? createdUserId;

  RegisterState copyWith({
    double? initialProgress,
    RegisterType? registerType,
    RegisterStatus? registerStatus,
    String? createdUserId,
  }) {
    return RegisterState(
      initialProgress: initialProgress ?? this.initialProgress,
      registerType: registerType ?? this.registerType,
      registerStatus: registerStatus ?? this.registerStatus,
      createdUserId: createdUserId ?? this.createdUserId,
    );
  }

  @override
  List<Object> get props => [initialProgress, registerType];

  @override
  bool get stringify => true;
}
