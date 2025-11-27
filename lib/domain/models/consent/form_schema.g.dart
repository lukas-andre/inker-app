// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormSchemaFieldImpl _$$FormSchemaFieldImplFromJson(Map json) =>
    _$FormSchemaFieldImpl(
      type: json['type'] as String,
      label: json['label'] as String,
      name: json['name'] as String,
      required: json['required'] as bool,
      options: json['options'] as List<dynamic>?,
      placeholder: json['placeholder'] as String?,
      defaultValue: json['defaultValue'],
      validation: (json['validation'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
    );

Map<String, dynamic> _$$FormSchemaFieldImplToJson(
    _$FormSchemaFieldImpl instance) {
  final val = <String, dynamic>{
    'type': instance.type,
    'label': instance.label,
    'name': instance.name,
    'required': instance.required,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('validation', instance.validation);
  return val;
}

_$FormSchemaLogicConditionImpl _$$FormSchemaLogicConditionImplFromJson(
        Map json) =>
    _$FormSchemaLogicConditionImpl(
      field: json['field'] as String,
      condition: json['condition'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$FormSchemaLogicConditionImplToJson(
    _$FormSchemaLogicConditionImpl instance) {
  final val = <String, dynamic>{
    'field': instance.field,
    'condition': instance.condition,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  return val;
}

_$FormSchemaLogicImpl _$$FormSchemaLogicImplFromJson(Map json) =>
    _$FormSchemaLogicImpl(
      showIf: (json['showIf'] as List<dynamic>?)
          ?.map((e) => FormSchemaLogicCondition.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$FormSchemaLogicImplToJson(
    _$FormSchemaLogicImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('showIf', instance.showIf?.map((e) => e.toJson()).toList());
  return val;
}

_$FormSchemaImpl _$$FormSchemaImplFromJson(Map json) => _$FormSchemaImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      fields: (json['fields'] as List<dynamic>)
          .map((e) =>
              FormSchemaField.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      logic: (json['logic'] as Map?)?.map(
        (k, e) => MapEntry(k as String,
            FormSchemaLogic.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$FormSchemaImplToJson(_$FormSchemaImpl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['fields'] = instance.fields.map((e) => e.toJson()).toList();
  writeNotNull('logic', instance.logic?.map((k, e) => MapEntry(k, e.toJson())));
  return val;
}
