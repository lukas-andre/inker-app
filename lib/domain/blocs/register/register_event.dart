part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterEventArtistSelected extends RegisterEvent {
  const RegisterEventArtistSelected();

  @override
  List<Object> get props => [];
}

class RegisterEventCustomerSelected extends RegisterEvent {
  const RegisterEventCustomerSelected();

  @override
  List<Object> get props => [];
}

class RegisterEventUpdateProgress extends RegisterEvent {
  final double progress;

  const RegisterEventUpdateProgress(this.progress);

  @override
  List<Object> get props => [progress];
}
