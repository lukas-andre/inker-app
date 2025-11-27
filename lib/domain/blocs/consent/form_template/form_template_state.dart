part of 'form_template_bloc.dart';

@freezed
class FormTemplateState with _$FormTemplateState {
  const factory FormTemplateState.initial() = FormTemplateInitial;
  const factory FormTemplateState.loading() = FormTemplateLoading;
  const factory FormTemplateState.loaded({
    required List<FormTemplate> templates,
    FormTemplate? selectedTemplate,
  }) = FormTemplateLoaded;
  const factory FormTemplateState.actionInProgress() = FormTemplateActionInProgress;
  const factory FormTemplateState.actionSuccess(String message) = FormTemplateActionSuccess;
  const factory FormTemplateState.error(String message) = FormTemplateError;
} 