import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_dto.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_query_params.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_search_dto.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';

class StencilClientService implements StencilService {
  final HttpClientService _httpClient;

  StencilClientService(this._httpClient);
  
  @override
  Future<PaginatedStencilSearchResponseDto> searchStencils(
      StencilSearchQueryDto queryParams, String token) async {
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
      
      if (queryParams.status != null) {
        params['status'] = queryParams.status!;
      }
      
      final response = await _httpClient.get(
        path: '/stencil-search',
        queryParams: params,
        fromJson: (data) => PaginatedStencilSearchResponseDto.fromJson(data),
        token: token,
      );
      
      return response;
    } catch (e) {
      log('Error searching stencils: $e');
      rethrow;
    }
  }
  
  @override
  Future<List<SearchRankingInfoDto>> getStencilSearchRankingInfo(String token) async {
    try {
      final response = await _httpClient.getList(
        path: '/stencil-search/ranking-info',
        fromJson: (data) => SearchRankingInfoDto.fromJson(data),
        token: token,
      );
      
      return response;
    } catch (e) {
      log('Error getting stencil search ranking info: $e');
      rethrow;
    }
  }

  @override
  Future<List<Stencil>> getStencilsByArtistId(
      int artistId, StencilQueryParams params, String token) async {
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
      };

      final response = await _httpClient.get(
        path: '/stencils/artist/$artistId',
        queryParams: queryParams,
        fromJson: (data) => PaginatedStencilResponse.fromJson(data),
        token: token,
      );

      return response.items
          .map((item) => Stencil.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log('Error getting stencils by artist ID: $e');
      rethrow;
    }
  }

  @override
  Future<Stencil> getStencilById(int id, String token) async {
    try {
      final response = await _httpClient.get(
        path: '/stencils/$id',
        fromJson: (data) => Stencil.fromJson(data),
        token: token,
      );
      return response;
    } catch (e) {
      log('Error getting stencil by ID: $e');
      rethrow;
    }
  }

  @override
  Future<Stencil> createStencil(
      CreateStencilDto createStencilDto, XFile? imageFile, String token) async {
    try {
      if (imageFile == null) {
        // If no image file is provided, use the imageUrl from DTO
        final response = await _httpClient.post(
          path: '/stencils',
          body: createStencilDto.toJson(),
          fromJson: (data) => Stencil.fromJson(data),
          token: token,
        );
        return response;
      } else {
        // If image file is provided, use multipart request
        final baseUrl = await _httpClient.getBaseUrl();
        final uri = Uri.https(baseUrl, '/stencils');

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
        final Map<String, dynamic> dto = createStencilDto.toJson();
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
          return Stencil.fromJson(json.decode(response.body));
        } else {
          throw HttpException(
              'Failed to create stencil: ${response.statusCode} ${response.body}');
        }
      }
    } catch (e) {
      log('Error creating stencil: $e');
      rethrow;
    }
  }

  @override
  Future<Stencil> updateStencil(int id, UpdateStencilDto updateStencilDto,
      XFile? imageFile, String token) async {
    try {
      if (imageFile == null) {
        // If no image file is provided, use the imageUrl from DTO
        final response = await _httpClient.put(
          path: '/stencils/$id',
          body: updateStencilDto.toJson(),
          fromJson: (data) => Stencil.fromJson(data),
          token: token,
        );
        return response;
      } else {
        // If image file is provided, use multipart request
        final baseUrl = await _httpClient.getBaseUrl();
        final uri = Uri.https(baseUrl, '/stencils/$id');

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
        final Map<String, dynamic> dto = updateStencilDto.toJson();
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
          return Stencil.fromJson(json.decode(response.body));
        } else {
          throw HttpException(
              'Failed to update stencil: ${response.statusCode} ${response.body}');
        }
      }
    } catch (e) {
      log('Error updating stencil: $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteStencil(int id, String token) async {
    try {
      await _httpClient.delete(
        path: '/stencils/$id',
        body: {},
        token: token,
      );
    } catch (e) {
      log('Error deleting stencil: $e');
      rethrow;
    }
  }

  @override
  Future<int> recordStencilView(int id, String token) async {
    try {
      final createInteractionDto = {
        'interactionType': 'view',
        'entityType': 'stencil',
        'entityId': id,
      };
      
      final response = await _httpClient.post(
        path: '/interactions',
        body: createInteractionDto,
        fromJson: (data) => data['id'] as int,
        token: token,
      );
      return response;
    } catch (e) {
      log('Error recording stencil view: $e');
      rethrow;
    }
  }

  @override
  Future<int> likeStencil(int id, String token) async {
    try {
      final createInteractionDto = {
        'interactionType': 'like',
        'entityType': 'stencil',
        'entityId': id,
      };
      
      final response = await _httpClient.post(
        path: '/interactions',
        body: createInteractionDto,
        fromJson: (data) => data['id'] as int,
        token: token,
      );
      return response;
    } catch (e) {
      log('Error liking stencil: $e');
      rethrow;
    }
  }

  @override
  Future<List<TagSuggestionResponseDto>> getTagSuggestions(
      String prefix, int limit, String token) async {
    try {
      final response = await _httpClient.getList(
        path: '/stencil-search/tags/suggest',
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
        path: '/stencil-search/tags/popular',
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
        path: 'stencil-search/tags',
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
