import 'package:inker_studio/domain/errors/remote/bad_request_exception.dart';
import 'package:inker_studio/domain/errors/remote/un_processable_exception.dart';

class ArtistAlreadyExistsException extends BadRequest {
  ArtistAlreadyExistsException();
}

class ProblemsSavingArtist extends UnprocessableEntity {
  ProblemsSavingArtist();
}

class ProblemsSavingAgendaForUser extends UnprocessableEntity {
  ProblemsSavingAgendaForUser();
}

class TroubleSavingLocation extends UnprocessableEntity {
  TroubleSavingLocation();
}
