import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/json_parse_exception.dart';
import 'package:inker_studio/domain/errors/remote/resource_not_found.dart';
import 'package:inker_studio/domain/services/review/review_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';

class ApiReviewService extends ReviewService {
  static const String className = 'ApiUserService';

  final HttpClientConfig _httpConfig;

  ApiReviewService()
      : _httpConfig = HttpClientConfig(basePath: 'reviews'),
        super();

  @override
  Future<void> createReview(Review review) {
    // TODO: implement createReview
    throw UnimplementedError();
  }

  @override
  Future<void> deleteReview(Review review) {
    // TODO: implement deleteReview
    throw UnimplementedError();
  }

  @override
  Future<void> reactToReview(
      {required int reviewId,
      required int customerId,
      required bool like,
      required String token}) async {
    final url = _httpConfig.surl(
      basePath: 'reviews',
      path: '$reviewId/reviewers/$customerId',
      queryParams: {
        'reaction': like ? 'like' : 'dislike',
      },
    );

    try {
      final response = await http.post(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response)) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }

      if (response.statusCode != HttpStatus.created) {
        throw Exception('Error while reacting to review');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> updateReview(Review review) {
    // TODO: implement updateReview
    throw UnimplementedError();
  }

  @override
  Future<GetReviewsResponse> getReviews(
      {required int artistId,
      required int page,
      required int limit,
      required String token}) async {
    final url = _httpConfig.surl(
      basePath: 'reviews',
      path: 'artists/$artistId',
      queryParams: {
        'page': page.toString(),
        'limit': limit.toString(),
      },
    );

    try {
      final response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response)) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Error while reacting to review');
      }

      try {
        return getReviewsResponseFromJson(response.body);
      } catch (e) {
        throw JsonParseException();
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
