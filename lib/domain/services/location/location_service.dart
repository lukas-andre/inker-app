import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_request.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';

abstract class LocationService {
  Future<List<FindArtistByLocationResponse>> getArtistByLocation(
      String token, FindArtistByLocationRequest request);
}
