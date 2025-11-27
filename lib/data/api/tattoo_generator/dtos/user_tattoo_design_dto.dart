import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';

class UserTattooDesignDto {
  final String id;
  final String userQuery;
  final String style;
  final List<String> imageUrls;
  final bool? isFavorite;
  final Map<String, dynamic>? metadata;
  final DateTime? createdAt;

  const UserTattooDesignDto({
    required this.id,
    required this.userQuery,
    required this.style,
    required this.imageUrls,
    this.isFavorite,
    this.metadata,
    this.createdAt,
  });

  factory UserTattooDesignDto.fromJson(Map<String, dynamic> json) {
    return UserTattooDesignDto(
      id: json['id'] as String,
      userQuery: json['userQuery'] as String,
      style: json['style'] as String,
      imageUrls: (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorite: json['isFavorite'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt'] as String) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userQuery': userQuery,
      'style': style,
      'imageUrls': imageUrls,
      if (isFavorite != null) 'isFavorite': isFavorite,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'createdAt': createdAt?.toIso8601String(),
    };
  }
  
  // Convert backend style string to TattooStyle enum
  TattooStyle getTattooStyle() {
    try {
      // Handle the backend style format (e.g., "TRADITIONAL_AMERICAN" to traditionalAmerican)
      final String normalizedStyle = style.toLowerCase().replaceAll('_', '');
      return TattooStyle.values.firstWhere(
        (e) => e.toString().split('.').last.toLowerCase() == normalizedStyle,
        orElse: () => TattooStyle.blackwork, // Default to blackwork if not found
      );
    } catch (e) {
      return TattooStyle.blackwork; // Default style if conversion fails
    }
  }
} 