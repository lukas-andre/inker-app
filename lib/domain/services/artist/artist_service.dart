import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/search_artist.dto.dart';
import 'package:inker_studio/data/api/artist/dtos/search_artist_response.dto.dart';
import 'package:inker_studio/data/api/artist/dtos/update_artist_dto.dart';

import '../../models/artist/artist.dart';

abstract class ArtistService {
  Future<Artist> getArtistProfile();
  Future<void> updateArtistProfile(UpdateArtistDto updateArtistDto);
  Future<Artist> updateProfilePicture(String artistId, XFile image);
  Future<Artist> updateStudioPhoto(String artistId, XFile image);
  Future<SearchArtistResponseDto> searchArtists(SearchArtistDto searchParams);
}
