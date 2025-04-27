import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/generate_tattoo_request_dto.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/generate_tattoo_response_dto.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';

class TattooGeneratorClient implements TattooGeneratorService{
  final HttpClientService _httpClient;

  TattooGeneratorClient(this._httpClient);

  @override
  Future<List<TattooGeneratedImageURL>> generateTattoo(
      {required String prompt, required TattooStyle style, required String token}) async {
    
    final request = GenerateTattooRequestDto(userInput: prompt, style: style);
    final response = await _httpClient.post(
      path: '/tattoo-generator/generate',
      body: request.toJson(),
      fromJson: GenerateTattooResponseDto.fromJson,
      token: token,
    );

    return response.images.map((e) => e.imageUrl).toList();
  }
}