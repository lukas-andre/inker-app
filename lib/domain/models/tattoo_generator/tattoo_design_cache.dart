import 'package:freezed_annotation/freezed_annotation.dart';

part 'tattoo_design_cache.freezed.dart';
part 'tattoo_design_cache.g.dart';

@freezed
class TattooDesignCache with _$TattooDesignCache {
  const factory TattooDesignCache({
    required String id,
    required String userQuery,
    String? style,
    required List<String> imageUrls,
    String? prompt,
    Map<String, dynamic>? metadata,
    @Default(1) int usageCount,
    @Default(false) bool isFavorite,
    required DateTime createdAt,
    required DateTime updatedAt,
    // searchVector is usually DB-specific, omitting from Dart model
  }) = _TattooDesignCache;

  factory TattooDesignCache.fromJson(Map<String, dynamic> json) =>
      _$TattooDesignCacheFromJson(json);
} 