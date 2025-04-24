import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_query_params.dart';
import 'package:inker_studio/data/api/work/dtos/work_search_dto.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';

class WorkClientService implements WorkService {
  final HttpClientService _httpClient;

  WorkClientService(this._httpClient);
  
  @override
  Future<PaginatedWorkSearchResponseDto> searchWorks(
      WorkSearchQueryDto queryParams, String token, {bool skipCache = false}) async {
    try {
      final params = <String, String>{
        'page': queryParams.page.toString(),
        'limit': queryParams.limit.toString(),
        'includeHidden': queryParams.includeHidden.toString(),
        'sortBy': queryParams.sortBy,
      };
      
      if (queryParams.query != null && queryParams.query!.isNotEmpty) {
        params['query'] = queryParams.query!;
      }
      
      if (queryParams.tagIds != null && queryParams.tagIds!.isNotEmpty) {
        params['tagIds'] = queryParams.tagIds!.join(',');
      }
      
      if (queryParams.artistId != null) {
        params['artistId'] = queryParams.artistId.toString();
      }
      
      if (queryParams.onlyFeatured != null) {
        params['onlyFeatured'] = queryParams.onlyFeatured.toString();
      }
      
      if (queryParams.source != null) {
        params['source'] = queryParams.source!;
      }
      
      final response = await _httpClient.get(
        path: '/work-search',
        queryParams: params,
        fromJson: (data) => PaginatedWorkSearchResponseDto.fromJson(data),
        token: token,
        skipCache: skipCache,
      );
      
      return response;
    } catch (e) {
      log('Error searching works: $e');
      rethrow;
    }
  }
  
  @override
  Future<List<SearchRankingInfoDto>> getWorkSearchRankingInfo(String token) async {
    try {
      final response = await _httpClient.getList(
        path: '/work-search/ranking-info',
        fromJson: (data) => SearchRankingInfoDto.fromJson(data),
        token: token,
      );
      
      return response;
    } catch (e) {
      log('Error getting work search ranking info: $e');
      rethrow;
    }
  }

  @override
  Future<List<Work>> getWorksByArtistId(
      String artistId, WorkQueryParams params, String token) async {
    try {
      final queryParams = {
        'page': params.page.toString(),
        'limit': params.limit.toString(),
        if (params.featured != null) 'featured': params.featured.toString(),
        'includeHidden': params.includeHidden.toString(),
        if (params.tagIds != null && params.tagIds!.isNotEmpty)
          'tagIds': params.tagIds!.join(','),
        if (params.searchText != null && params.searchText!.isNotEmpty)
          'searchText': params.searchText!,
        if (params.source != null) 'source': params.source,
      };

      final response = await _httpClient.get(
        path: '/works/artist/$artistId',
        queryParams: queryParams,
        fromJson: (data) => PaginatedWorkResponse.fromJson(data),
        token: token,
      );

      return response.items
          .map((item) => Work.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log('Error getting works by artist ID: $e');
      rethrow;
    }
  }

  @override
  Future<Work> getWorkById(String id, String token) async {
    try {
      final response = await _httpClient.get(
        path: '/works/$id',
        fromJson: (data) => Work.fromJson(data),
        token: token,
      );
      return response;
    } catch (e) {
      log('Error getting work by ID: $e');
      rethrow;
    }
  }

  @override
  Future<Work> createWork(
      CreateWorkDto createWorkDto, XFile? imageFile, String token) async {
    try {
      if (imageFile == null) {
        // If no image file is provided, use the imageUrl from DTO
        final response = await _httpClient.post(
          path: '/works',
          body: createWorkDto.toJson(),
          fromJson: (data) => Work.fromJson(data),
          token: token,
        );
        return response;
      } else {
        // If image file is provided, use multipart request
        final baseUrl = await _httpClient.getBaseUrl();
        final uri = Uri.https(baseUrl, '/works');

        final request = http.MultipartRequest(
          'POST',
          uri,
        );

        // Add the file
        final fileStream = http.ByteStream(imageFile.openRead());
        final length = await imageFile.length();
        final multipartFile = http.MultipartFile(
          'file',
          fileStream,
          length,
          filename: imageFile.name,
        );
        request.files.add(multipartFile);

        // Add all other fields
        final Map<String, dynamic> dto = createWorkDto.toJson();
        dto.forEach((key, value) {
          if (value != null) {
            if (key == 'tagIds' && value is List) {
              request.fields[key] = value.join(',');
            } else {
              request.fields[key] = value.toString();
            }
          }
        });

        request.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';

        // Send the request
        final streamedResponse = await request.send();
        final response = await http.Response.fromStream(streamedResponse);

        if (response.statusCode >= 200 && response.statusCode < 300) {
          return Work.fromJson(json.decode(response.body));
        } else {
          throw HttpException(
              'Failed to create work: ${response.statusCode} ${response.body}');
        }
      }
    } catch (e) {
      log('Error creating work: $e');
      rethrow;
    }
  }

  @override
  Future<Work> updateWork(String id, UpdateWorkDto updateWorkDto,
      XFile? imageFile, String token) async {
    try {
      if (imageFile == null) {
        // If no image file is provided, use the imageUrl from DTO
        final response = await _httpClient.put(
          path: '/works/$id',
          body: updateWorkDto.toJson(),
          fromJson: (data) => Work.fromJson(data),
          token: token,
        );
        return response;
      } else {
        // If image file is provided, use multipart request
        final baseUrl = await _httpClient.getBaseUrl();
        final uri = Uri.https(baseUrl, '/works/$id');

        final request = http.MultipartRequest(
          'PUT',
          uri,
        );

        // Add the file
        final fileStream = http.ByteStream(imageFile.openRead());
        final length = await imageFile.length();
        final multipartFile = http.MultipartFile(
          'file',
          fileStream,
          length,
          filename: imageFile.name,
        );
        request.files.add(multipartFile);

        // Add all other fields
        final Map<String, dynamic> dto = updateWorkDto.toJson();
        dto.forEach((key, value) {
          if (value != null) {
            if (key == 'tagIds' && value is List) {
              request.fields[key] = json.encode(value);
            } else {
              request.fields[key] = value.toString();
            }
          }
        });

        request.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';

        // Send the request
        final streamedResponse = await request.send();
        final response = await http.Response.fromStream(streamedResponse);

        if (response.statusCode >= 200 && response.statusCode < 300) {
          return Work.fromJson(json.decode(response.body));
        } else {
          throw HttpException(
              'Failed to update work: ${response.statusCode} ${response.body}');
        }
      }
    } catch (e) {
      log('Error updating work: $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteWork(String id, String token) async {
    try {
      await _httpClient.delete(
        path: '/works/$id',
        body: {},
        token: token,
      );
    } catch (e) {
      log('Error deleting work: $e');
      rethrow;
    }
  }

  @override
  Future<String> recordWorkView(String id, String token) async {
    try {
      final createInteractionDto = {
        'interactionType': 'view',
        'entityType': 'work',
        'entityId': id,
      };
      
      final response = await _httpClient.post(
        path: '/interactions',
        body: createInteractionDto,
        fromJson: (data) => data['id'] as String,
        token: token,
      );
      return response;
    } catch (e) {
      log('Error recording work view: $e');
      rethrow;
    }
  }

  @override
  Future<String> likeWork(String id, String token) async {
    try {
      final createInteractionDto = {
        'interactionType': 'like',
        'entityType': 'work',
        'entityId': id,
      };
      
      final response = await _httpClient.post(
        path: '/interactions',
        body: createInteractionDto,
        fromJson: (data) => data['id'] as String,
        token: token,
      );
      return response;
    } catch (e) {
      log('Error liking work: $e');
      rethrow;
    }
  }

  @override
  Future<List<TagSuggestionResponseDto>> getTagSuggestions(
      String prefix, int limit, String token) async {
    try {
      final response = await _httpClient.getList(
        path: '/work-search/tags/suggest',
        queryParams: {
          'prefix': prefix,
          'limit': limit.toString(),
        },
        fromJson: (data) => TagSuggestionResponseDto.fromJson(data),
        token: token,
      );

      return response;
    } catch (e) {
      log('Error getting tag suggestions: $e');
      rethrow;
    }
  }

  @override
  Future<List<TagSuggestionResponseDto>> getPopularTags(
      int limit, String token) async {
    try {
      final response = await _httpClient.get(
        path: '/work-search/tags/popular',
        queryParams: {
          'limit': limit.toString(),
        },
        fromJson: (data) {
          // Handle case when data is an empty array
          if (data.isEmpty) {
            return <TagSuggestionResponseDto>[];
          }

          // Handle normal case with data
          return List<TagSuggestionResponseDto>.from(
              (data as List<dynamic>).map((item) =>
                  TagSuggestionResponseDto.fromJson(
                      item as Map<String, dynamic>)));
        },
        token: token,
      );
      
      return response;
    } catch (e) {
      // Handle error case
      rethrow;
    }
  }

  @override
  Future<TagSuggestionResponseDto> createTag(
      String name, String token) async {
    try {
      final createTagDto = CreateTagDto(name: name);
      
      final response = await _httpClient.post(
        path: 'work-search/tags',
        body: createTagDto.toJson(),
        fromJson: (data) => TagSuggestionResponseDto.fromJson(data),
        token: token,
      );
      
      return response;
    } catch (e) {
      log('Error creating tag: $e');
      rethrow;
    }
  }
}