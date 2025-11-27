import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/generate_tattoo_request_dto.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/generate_tattoo_response_dto.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/update_tattoo_favorite_dto.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_history_response_dto.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';

class TattooGeneratorClient implements TattooGeneratorService {
  final HttpClientService _httpClient;

  TattooGeneratorClient(this._httpClient);

  @override
  Future<List<GeneratedTattooImage>> generateTattoo(
      {required String prompt, required TattooStyle style, required String token}) async {
    
    final request = GenerateTattooRequestDto(userInput: prompt, style: style);
    final response = await _httpClient.post(
      path: '/tattoo-generator/generate',
      body: request.toJson(),
      fromJson: GenerateTattooResponseDto.fromJson,
      token: token,
    );

    return response.images.map((e) => GeneratedTattooImage(
      imageUrl: e.imageUrl,
      imageId: e.imageId,
    )).toList();
  }
  
  @override
  Future<UserTattooHistoryResponseDto> getUserTattooHistory({
    required String token,
    bool? favoritesOnly,
    int? limit,
    int? offset,
  }) async {
    final Map<String, dynamic> queryParams = {};
    
    if (favoritesOnly != null) {
      queryParams['favorites'] = favoritesOnly.toString();
    }
    
    if (limit != null) {
      queryParams['limit'] = limit.toString();
    }
    
    if (offset != null) {
      queryParams['offset'] = offset.toString();
    }
    
    final response = await _httpClient.get(
      path: '/tattoo-generator/history',
      queryParams: queryParams,
      fromJson: UserTattooHistoryResponseDto.fromJson,
      token: token,
    );
    
    return response;
  }
  
  @override
  Future<void> updateTattooFavorite({
    required String designId,
    required bool isFavorite,
    required String token,
  }) async {
    final request = UpdateTattooFavoriteDto(
      designId: designId,
      isFavorite: isFavorite,
    );
    
    await _httpClient.patch<void>(
      path: '/tattoo-generator/favorite',
      body: request.toJson(),
      token: token,
      fromJson: (json) => {},
    );
  }
}