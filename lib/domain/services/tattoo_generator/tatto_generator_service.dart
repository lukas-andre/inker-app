import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_history_response_dto.dart';

class GeneratedTattooImage {
  final String imageUrl;
  final String imageId;
  
  const GeneratedTattooImage({
    required this.imageUrl,
    required this.imageId,
  });
}

abstract class TattooGeneratorService {
  /// Generate a tattoo based on prompt and style
  Future<List<GeneratedTattooImage>> generateTattoo(
      {required String prompt, required TattooStyle style, required String token});
      
  /// Get user's tattoo generation history
  Future<UserTattooHistoryResponseDto> getUserTattooHistory({
    required String token,
    bool? favoritesOnly,
    int? limit,
    int? offset,
  });
  
  /// Update favorite status for a tattoo design
  Future<void> updateTattooFavorite({
    required String designId,
    required bool isFavorite,
    required String token,
  });
}
