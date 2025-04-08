import 'package:inker_studio/data/api/location/dtos/artist_location_dto.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_request.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';

abstract class LocationService {
  Future<List<FindArtistByLocationResponse>> getArtistByLocation(
      String token, FindArtistByLocationRequest request);
      
  // Artist location management
  Future<List<ArtistLocationDto>> getArtistLocations(String token, String artistId);
  
  Future<ArtistLocationDto> createArtistLocation(
      String token, String artistId, CreateArtistLocationRequest request);
      
  Future<ArtistLocationDto> updateArtistLocation(
      String token, String artistId, String locationId, UpdateArtistLocationRequest request);
      
  Future<bool> deleteArtistLocation(
      String token, String artistId, String locationId);
}
