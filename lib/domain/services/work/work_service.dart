import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_query_params.dart';
import 'package:inker_studio/data/api/work/dtos/work_search_dto.dart';
import 'package:inker_studio/domain/models/work/work.dart';

abstract class WorkService {
  Future<List<Work>> getWorksByArtistId(String artistId, WorkQueryParams params, String token);
  Future<Work> getWorkById(String id, String token);
  Future<Work> createWork(CreateWorkDto createWorkDto, XFile? imageFile, String token);
  Future<Work> updateWork(String id, UpdateWorkDto updateWorkDto, XFile? imageFile, String token);
  Future<void> deleteWork(String id, String token);
  Future<int> recordWorkView(String id, String token);
  Future<int> likeWork(String id, String token);
  Future<List<TagSuggestionResponseDto>> getTagSuggestions(String prefix, int limit, String token);
  Future<List<TagSuggestionResponseDto>> getPopularTags(int limit, String token);
  Future<TagSuggestionResponseDto> createTag(String name, String token);
  Future<PaginatedWorkSearchResponseDto> searchWorks(WorkSearchQueryDto queryParams, String token, {bool skipCache = false});
  Future<List<SearchRankingInfoDto>> getWorkSearchRankingInfo(String token);
}