import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_query_params.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_search_dto.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';

abstract class StencilService {
  Future<List<Stencil>> getStencilsByArtistId(String artistId, StencilQueryParams params, String token);
  Future<Stencil> getStencilById(String id, String token);
  Future<Stencil> createStencil(CreateStencilDto createStencilDto, XFile? imageFile, String token);
  Future<Stencil> updateStencil(String id, UpdateStencilDto updateStencilDto, XFile? imageFile, String token);
  Future<void> deleteStencil(String id, String token);
  Future<int> recordStencilView(String id, String token);
  Future<int> likeStencil(String id, String token);
  Future<List<TagSuggestionResponseDto>> getTagSuggestions(String prefix, int limit, String token);
  Future<List<TagSuggestionResponseDto>> getPopularTags(int limit, String token);
  Future<TagSuggestionResponseDto> createTag(String name, String token);
  Future<PaginatedStencilSearchResponseDto> searchStencils(
      StencilSearchQueryDto queryParams, String token, {bool skipCache = false});
  Future<List<SearchRankingInfoDto>> getStencilSearchRankingInfo(String token);
}