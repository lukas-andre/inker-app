import 'package:inker_studio/data/api/location/dtos/findArtistByLocationRequest.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationResponse.dart';

abstract class LocationService {
  Future<List<FindArtistByLocationResponse>> getArtistByLocation(
      FindArtistByLocationRequest request);
}
