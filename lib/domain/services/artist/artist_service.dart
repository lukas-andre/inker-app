import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/update_artist_dto.dart';

import '../../models/artist/artist.dart';

abstract class ArtistService {
  Future<Artist> getArtistProfile();
  Future<void> updateArtistProfile(UpdateArtistDto updateArtistDto);
  Future<Artist> updateProfilePicture(int artistId, XFile image);
  Future<Artist> updateStudioPhoto(int artistId, XFile image);
}
