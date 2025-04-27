
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';

typedef TattooGeneratedImageURL = String;

abstract class TattooGeneratorService {
  Future<List<TattooGeneratedImageURL>> generateTattoo(
      {required String prompt, required TattooStyle style, required String token});
}
