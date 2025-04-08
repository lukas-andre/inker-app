import 'dart:io';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/json_parse_exception.dart';
import 'package:inker_studio/domain/errors/remote/resource_not_found.dart';
import 'package:inker_studio/domain/services/review/review_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiReviewService extends ReviewService {
  static const String _basePath = 'reviews';
  late final HttpClientService _httpClient;

  ApiReviewService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<void> reactToReview({
    required String reviewId,
    required String customerId,
    required bool like,
    required String token,
  }) async {
    try {
      await _httpClient.post(
        path: '$_basePath/$reviewId/reviewers/$customerId',
        token: token,
        queryParams: {
          'reaction': like ? 'like' : 'dislike',
        },
        body: {},
        fromJson: (json) => null,
      );
    } on CustomHttpException catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        if (e.message.contains('Resource not found')) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }
      if (e.statusCode != HttpStatus.created) {
        throw Exception('Error while reacting to review');
      }
      rethrow;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<GetReviewsResponse> getReviews({
    required String artistId,
    required int page,
    required int limit,
    required String token,
  }) async {
    try {
      return await _httpClient.get(
        path: '$_basePath/artists/$artistId',
        token: token,
        queryParams: {
          'page': page.toString(),
          'limit': limit.toString(),
        },
        fromJson: GetReviewsResponse.fromJson,
      );
    } on CustomHttpException catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        if (e.message.contains('Resource not found')) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }
      if (e.statusCode != HttpStatus.ok) {
        throw Exception('Error while getting reviews');
      }
      rethrow;
    } catch (e) {
      if (e is FormatException) {
        throw JsonParseException();
      }
      dev.logError(e, StackTrace.current);
      rethrow;
    }
  }

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
  Future<void> updateReview(Review review) {
    // TODO: implement updateReview
    throw UnimplementedError();
  }
}