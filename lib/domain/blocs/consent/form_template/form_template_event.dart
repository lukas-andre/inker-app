part of 'form_template_bloc.dart';

@freezed
class FormTemplateEvent with _$FormTemplateEvent {
  const factory FormTemplateEvent.started() = _Started;
  const factory FormTemplateEvent.loadTemplatesForArtist(String artistId, {bool? isActive}) = _LoadTemplatesForArtist;
  const factory FormTemplateEvent.loadTemplateById(String templateId) = _LoadTemplateById;
  const factory FormTemplateEvent.createTemplate(CreateFormTemplateDto dto) = _CreateTemplate;
  const factory FormTemplateEvent.updateTemplate(String templateId, CreateFormTemplateDto dto) = _UpdateTemplate;
  const factory FormTemplateEvent.deleteTemplate(String templateId) = _DeleteTemplate;
  const factory FormTemplateEvent.clearSelectedTemplate() = _ClearSelectedTemplate;
} 