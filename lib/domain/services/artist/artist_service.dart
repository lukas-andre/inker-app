import 'package:inker_studio/domain/models/artist/artist.dart';

abstract class ArtistService {
  Future<Artist> getArtistProfile();
  Future<void> updateArtistProfile(Artist artist);
}
