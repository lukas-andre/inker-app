import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';

class UserTattooHistoryResponseDto {
  final List<UserTattooDesignDto> designs;
  final int? total;

  const UserTattooHistoryResponseDto({
    required this.designs,
    this.total,
  });

  factory UserTattooHistoryResponseDto.fromJson(Map<String, dynamic> json) {
    return UserTattooHistoryResponseDto(
      designs: (json['designs'] as List<dynamic>)
          .map((e) => UserTattooDesignDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'designs': designs.map((e) => e.toJson()).toList(),
      if (total != null) 'total': total,
    };
  }
} 