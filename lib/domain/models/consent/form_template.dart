import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/consent/consent_type.dart';
import 'package:inker_studio/domain/models/consent/form_schema.dart';

part 'form_template.freezed.dart';
part 'form_template.g.dart';

@freezed
class FormTemplate with _$FormTemplate {
  const factory FormTemplate({
    required String id,
    required String title,
    required FormSchema content,
    required int version,
    required ConsentType consentType,
    required String artistId,
    @Default(true) bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FormTemplate;

  factory FormTemplate.fromJson(Map<String, dynamic> json) => 
      _$FormTemplateFromJson(json);
}

@freezed
class CreateFormTemplateDto with _$CreateFormTemplateDto {
  const factory CreateFormTemplateDto({
    required String title,
    required FormSchema content,
    required int version,
    required ConsentType consentType,
    required String artistId,
    @Default(true) bool? isActive,
  }) = _CreateFormTemplateDto;

  factory CreateFormTemplateDto.fromJson(Map<String, dynamic> json) => 
      _$CreateFormTemplateDtoFromJson(json);
} 