part of 'register_artist_bloc.dart';

abstract class RegisterArtistEvent extends Equatable {
  const RegisterArtistEvent();

  @override
  List<Object> get props => [];
}

class RegisterArtistNameChanged extends RegisterArtistEvent {
  final String name;

  const RegisterArtistNameChanged(this.name);

  @override
  List<Object> get props => [name];
}

class RegisterArtistLastNameChanged extends RegisterArtistEvent {
  final String name;

  const RegisterArtistLastNameChanged(this.name);

  @override
  List<Object> get props => [name];
}

class RegisterArtistUsernameChanged extends RegisterArtistEvent {
  final String username;

  const RegisterArtistUsernameChanged(this.username);

  @override
  List<Object> get props => [username];
}

class RegisterArtistEmailChanged extends RegisterArtistEvent {
  final String email;

  const RegisterArtistEmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class RegisterArtistPhoneNumberChanged extends RegisterArtistEvent {
  final PhoneNumber phoneNumber;

  const RegisterArtistPhoneNumberChanged(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

class RegisterArtistPasswordChanged extends RegisterArtistEvent {
  final String password;

  const RegisterArtistPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class RegisterArtistConfirmedPasswordChanged extends RegisterArtistEvent {
  final String password;

  const RegisterArtistConfirmedPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class RegisterArtistLocationChanged extends RegisterArtistEvent {
  final String location;

  const RegisterArtistLocationChanged(this.location);

  @override
  List<Object> get props => [location];
}

class RegisterArtistNextPagePressed extends RegisterArtistEvent {
  final int page;
  const RegisterArtistNextPagePressed(this.page);

  @override
  List<Object> get props => [page];
}
