import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/un_processable_exception.dart';

class TroubleFindingLocations extends UnprocessableEntity {
  TroubleFindingLocations();
}

class NoArtistsFound extends HttpNotFound {
  NoArtistsFound();
}

class ProblemsFilteringArtists extends UnprocessableEntity {
  ProblemsFilteringArtists();
}
