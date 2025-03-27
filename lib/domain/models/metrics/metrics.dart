/// Represents analytics metrics for content (works and stencils)
class Metrics {
  final int viewCount;
  final int likeCount;
  final bool userHasLiked;

  const Metrics({
    this.viewCount = 0,
    this.likeCount = 0,
    this.userHasLiked = false,
  });

  /// Create a Metrics object from JSON
  factory Metrics.fromJson(Map<String, dynamic> json) {
    return Metrics(
      viewCount: json['viewCount'] ?? 0,
      likeCount: json['likeCount'] ?? 0,
      userHasLiked: json['userHasLiked'] ?? false,
    );
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'viewCount': viewCount,
      'likeCount': likeCount,
      'userHasLiked': userHasLiked,
    };
  }

  /// Create a copy with some fields updated
  Metrics copyWith({
    int? viewCount,
    int? likeCount,
    bool? userHasLiked,
  }) {
    return Metrics(
      viewCount: viewCount ?? this.viewCount,
      likeCount: likeCount ?? this.likeCount,
      userHasLiked: userHasLiked ?? this.userHasLiked,
    );
  }
} 