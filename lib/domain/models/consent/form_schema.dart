import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_schema.freezed.dart';
part 'form_schema.g.dart';

@freezed
class FormSchemaField with _$FormSchemaField {
  const factory FormSchemaField({
    required String type, // 'checkbox', 'signature', 'text', 'date', 'radio', 'dropdown', 'textarea'
    required String label,
    required String name,
    required bool required,
    List<dynamic>? options, // For checkbox, radio, dropdown
    String? placeholder,
    dynamic defaultValue,
    Map<String, dynamic>? validation, // e.g., { minLength: 5, pattern: '^[A-Za-z]+$' }
  }) = _FormSchemaField;

  factory FormSchemaField.fromJson(Map<String, dynamic> json) => 
      _$FormSchemaFieldFromJson(json);
}

@freezed
class FormSchemaLogicCondition with _$FormSchemaLogicCondition {
  const factory FormSchemaLogicCondition({
    required String field, // name of the field triggering the logic
    required String condition, // 'IS_CHECKED', 'EQUALS_VALUE', 'IS_FILLED', 'GREATER_THAN'
    dynamic value, // Value to compare against for some conditions
  }) = _FormSchemaLogicCondition;

  factory FormSchemaLogicCondition.fromJson(Map<String, dynamic> json) => 
      _$FormSchemaLogicConditionFromJson(json);
}

@freezed
class FormSchemaLogic with _$FormSchemaLogic {
  const factory FormSchemaLogic({
    List<FormSchemaLogicCondition>? showIf,
    // Future: hideIf, requireIf can be added here
  }) = _FormSchemaLogic;

  factory FormSchemaLogic.fromJson(Map<String, dynamic> json) => 
      _$FormSchemaLogicFromJson(json);
}

@freezed
class FormSchema with _$FormSchema {
  const factory FormSchema({
    required String title,
    String? description,
    required List<FormSchemaField> fields,
    Map<String, FormSchemaLogic>? logic, // Key is the field name this logic applies to
  }) = _FormSchema;

  factory FormSchema.fromJson(Map<String, dynamic> json) => 
      _$FormSchemaFromJson(json);
} 