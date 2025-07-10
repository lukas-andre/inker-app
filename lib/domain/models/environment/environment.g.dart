// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnvironmentImpl _$$EnvironmentImplFromJson(Map json) => _$EnvironmentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      apiUrl: json['apiUrl'] as String,
      additionalConfig: (json['additionalConfig'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
    );

Map<String, dynamic> _$$EnvironmentImplToJson(_$EnvironmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'apiUrl': instance.apiUrl,
      'additionalConfig': instance.additionalConfig,
    };

_$EnvironmentsConfigImpl _$$EnvironmentsConfigImplFromJson(Map json) =>
    _$EnvironmentsConfigImpl(
      environments: (json['environments'] as Map).map(
        (k, e) => MapEntry(k as String,
            Environment.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$EnvironmentsConfigImplToJson(
        _$EnvironmentsConfigImpl instance) =>
    <String, dynamic>{
      'environments':
          instance.environments.map((k, e) => MapEntry(k, e.toJson())),
    };
