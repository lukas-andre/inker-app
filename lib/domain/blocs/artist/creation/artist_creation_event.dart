part of 'artist_creation_bloc.dart';

abstract class ArtistCreationEvent extends Equatable {
  const ArtistCreationEvent();

  @override
  List<Object> get props => [];
}

class ArtistCreationUsernameChanged extends ArtistCreationEvent {
  const ArtistCreationUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class ArtistCreationFirstNameChanged extends ArtistCreationEvent {
  const ArtistCreationFirstNameChanged(this.firstName);

  final String firstName;

  @override
  List<Object> get props => [firstName];
}

class ArtistCreationLastNameChanged extends ArtistCreationEvent {
  const ArtistCreationLastNameChanged(this.lastName);

  final String lastName;

  @override
  List<Object> get props => [lastName];
}

class ArtistCreationPasswordChanged extends ArtistCreationEvent {
  const ArtistCreationPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class ArtistCreationRepeatedPasswordChanged extends ArtistCreationEvent {
  const ArtistCreationRepeatedPasswordChanged(this.repeteadPassword);

  final String repeteadPassword;

  @override
  List<Object> get props => [repeteadPassword];
}

class ArtistCreationEmailChanged extends ArtistCreationEvent {
  const ArtistCreationEmailChanged(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class ArtistCreationPhoneNumberChanged extends ArtistCreationEvent {
  const ArtistCreationPhoneNumberChanged(this.phoneNumber);

  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class ArtistCreationLocationChanged extends ArtistCreationEvent {
  const ArtistCreationLocationChanged(this.location);

  final String location;

  @override
  List<Object> get props => [location];
}

class ArtistCreationSubmitted extends ArtistCreationEvent {
  const ArtistCreationSubmitted();
}
