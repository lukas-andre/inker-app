import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';

abstract class PlacesService {
  Future<List<Prediction>> getAutoComplete(String hint);
  Future<dynamic> getPlaceDetails(String id);
}
