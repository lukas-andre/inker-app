// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_tattoo_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateTattooResponseDtoImpl _$$GenerateTattooResponseDtoImplFromJson(
        Map json) =>
    _$GenerateTattooResponseDtoImpl(
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              GeneratedImageDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      totalCost: (json['totalCost'] as num).toDouble(),
      fromCache: json['fromCache'] as bool? ?? false,
    );

Map<String, dynamic> _$$GenerateTattooResponseDtoImplToJson(
        _$GenerateTattooResponseDtoImpl instance) =>
    <String, dynamic>{
      'images': instance.images.map((e) => e.toJson()).toList(),
      'totalCost': instance.totalCost,
      'fromCache': instance.fromCache,
    };

_$GeneratedImageDtoImpl _$$GeneratedImageDtoImplFromJson(Map json) =>
    _$GeneratedImageDtoImpl(
      imageUrl: json['imageUrl'] as String,
      imageId: json['imageId'] as String,
      cost: (json['cost'] as num).toDouble(),
    );

Map<String, dynamic> _$$GeneratedImageDtoImplToJson(
        _$GeneratedImageDtoImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'imageId': instance.imageId,
      'cost': instance.cost,
    };
