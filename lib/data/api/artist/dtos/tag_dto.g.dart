// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagSuggestionResponseDtoImpl _$$TagSuggestionResponseDtoImplFromJson(
        Map json) =>
    _$TagSuggestionResponseDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TagSuggestionResponseDtoImplToJson(
    _$TagSuggestionResponseDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

_$TagSuggestionQueryDtoImpl _$$TagSuggestionQueryDtoImplFromJson(Map json) =>
    _$TagSuggestionQueryDtoImpl(
      prefix: json['prefix'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$TagSuggestionQueryDtoImplToJson(
        _$TagSuggestionQueryDtoImpl instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'limit': instance.limit,
    };

_$TagDtoImpl _$$TagDtoImplFromJson(Map json) => _$TagDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      createdBy: json['createdBy'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TagDtoImplToJson(_$TagDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdBy', instance.createdBy);
  val['createdAt'] = instance.createdAt.toIso8601String();
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  return val;
}

_$CreateTagDtoImpl _$$CreateTagDtoImplFromJson(Map json) => _$CreateTagDtoImpl(
      name: json['name'] as String,
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$$CreateTagDtoImplToJson(_$CreateTagDtoImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdBy', instance.createdBy);
  return val;
}
