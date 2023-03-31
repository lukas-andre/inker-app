import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/data/gcp/dto/place_details_response.dart';

abstract class PlacesService {
  Future<List<Prediction>> getAutoComplete(String hint);
  Future<PlaceDetailsResult?> getPlaceDetails(String id);
}
