import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';

class Review {}

abstract class ReviewService {
  Future<void> createReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> deleteReview(Review review);
  Future<void> reactToReview(
      {required String reviewId,
      required String customerId,
      required bool like,
      required String token});
  Future<GetReviewsResponse> getReviews(
      {required String artistId,
      required int page,
      required int limit,
      required String token});
}
