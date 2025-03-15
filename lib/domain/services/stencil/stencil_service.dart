import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_query_params.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';

abstract class StencilService {
  Future<List<Stencil>> getStencilsByArtistId(int artistId, StencilQueryParams params, String token);
  Future<Stencil> getStencilById(int id, String token);
  Future<Stencil> createStencil(CreateStencilDto createStencilDto, XFile? imageFile, String token);
  Future<Stencil> updateStencil(int id, UpdateStencilDto updateStencilDto, XFile? imageFile, String token);
  Future<void> deleteStencil(int id, String token);
  Future<int> recordStencilView(int id, String token);
  Future<int> likeStencil(int id, String token);
  Future<List<TagSuggestionResponseDto>> getTagSuggestions(String prefix, int limit, String token);
  Future<List<TagSuggestionResponseDto>> getPopularTags(int limit, String token);
}