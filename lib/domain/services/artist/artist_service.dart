import 'package:image_picker/image_picker.dart';

import '../../models/artist/artist.dart';

abstract class ArtistService {
  Future<Artist> getArtistProfile();
  Future<void> updateArtistProfile(Artist artist);
  Future<Artist> updateProfilePicture(int artistId, XFile image);
  Future<Artist> updateStudioPhoto(int artistId, XFile image);
}
