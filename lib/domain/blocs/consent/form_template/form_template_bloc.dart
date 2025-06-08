import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'form_template_event.dart';
part 'form_template_state.dart';
part 'form_template_bloc.freezed.dart';

class FormTemplateBloc extends Bloc<FormTemplateEvent, FormTemplateState> {
  final ConsentService _consentService;
  final LocalSessionService _sessionService;

  FormTemplateBloc({
    required ConsentService consentService,
    required LocalSessionService sessionService,
  })  : _consentService = consentService,
        _sessionService = sessionService,
        super(const FormTemplateState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadTemplatesForArtist>(_onLoadTemplatesForArtist);
    on<_LoadTemplateById>(_onLoadTemplateById);
    on<_CreateTemplate>(_onCreateTemplate);
    on<_UpdateTemplate>(_onUpdateTemplate);
    on<_DeleteTemplate>(_onDeleteTemplate);
    on<_ClearSelectedTemplate>(_onClearSelectedTemplate);
  }

  Future<void> _onStarted(_Started event, Emitter<FormTemplateState> emit) async {
    emit(const FormTemplateState.initial());
  }

  Future<void> _onLoadTemplatesForArtist(
    _LoadTemplatesForArtist event,
    Emitter<FormTemplateState> emit,
  ) async {
    print('FormTemplateBloc: Loading templates for artist: ${event.artistId}');
    emit(const FormTemplateState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      print('FormTemplateBloc: Got token: ${token != null ? "YES" : "NO"}');
      
      if (token == null) {
        print('FormTemplateBloc: No authentication token found');
        emit(const FormTemplateState.error('No authentication token found'));
        return;
      }

      print('FormTemplateBloc: Calling consent service...');
      final templates = await _consentService.getFormTemplatesForArtist(
        event.artistId,
        token,
        isActive: event.isActive,
      );
      
      print('FormTemplateBloc: Received ${templates.length} templates');
      emit(FormTemplateState.loaded(templates: templates));
    } catch (e) {
      print('FormTemplateBloc: Error loading templates: $e');
      emit(FormTemplateState.error('Error loading templates: ${e.toString()}'));
    }
  }

  Future<void> _onLoadTemplateById(
    _LoadTemplateById event,
    Emitter<FormTemplateState> emit,
  ) async {
    emit(const FormTemplateState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const FormTemplateState.error('No authentication token found'));
        return;
      }

      final template = await _consentService.getFormTemplateById(event.templateId, token);
      
      // Preserve existing templates if any
      final currentTemplates = state.maybeWhen(
        loaded: (templates, _) => templates,
        orElse: () => <FormTemplate>[],
      );
      
      emit(FormTemplateState.loaded(
        templates: currentTemplates,
        selectedTemplate: template,
      ));
    } catch (e) {
      emit(FormTemplateState.error('Error loading template: ${e.toString()}'));
    }
  }

  Future<void> _onCreateTemplate(
    _CreateTemplate event,
    Emitter<FormTemplateState> emit,
  ) async {
    emit(const FormTemplateState.actionInProgress());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const FormTemplateState.error('No authentication token found'));
        return;
      }

      final newTemplate = await _consentService.createFormTemplate(event.dto, token);
      
      // Add to existing templates
      final currentTemplates = state.maybeWhen(
        loaded: (templates, _) => templates,
        actionInProgress: () => <FormTemplate>[], // Handle action in progress state
        orElse: () => <FormTemplate>[],
      );
      
      final updatedTemplates = [...currentTemplates, newTemplate];
      
      emit(FormTemplateState.loaded(
        templates: updatedTemplates,
        selectedTemplate: newTemplate,
      ));
      
      // Emit success message
      emit(const FormTemplateState.actionSuccess('Template created successfully'));
      
      // Return to loaded state
      emit(FormTemplateState.loaded(
        templates: updatedTemplates,
        selectedTemplate: newTemplate,
      ));
    } catch (e) {
      emit(FormTemplateState.error('Error creating template: ${e.toString()}'));
    }
  }

  Future<void> _onUpdateTemplate(
    _UpdateTemplate event,
    Emitter<FormTemplateState> emit,
  ) async {
    emit(const FormTemplateState.actionInProgress());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const FormTemplateState.error('No authentication token found'));
        return;
      }

      final updatedTemplate = await _consentService.updateFormTemplate(
        event.templateId,
        event.dto,
        token,
      );
      
      // Update in existing templates
      final currentTemplates = state.maybeWhen(
        loaded: (templates, _) => templates,
        actionInProgress: () => <FormTemplate>[], // Handle action in progress state
        orElse: () => <FormTemplate>[],
      );
      
      final updatedTemplates = currentTemplates.map((template) {
        return template.id == event.templateId ? updatedTemplate : template;
      }).toList();
      
      emit(FormTemplateState.loaded(
        templates: updatedTemplates,
        selectedTemplate: updatedTemplate,
      ));
      
      // Emit success message
      emit(const FormTemplateState.actionSuccess('Template updated successfully'));
      
      // Return to loaded state
      emit(FormTemplateState.loaded(
        templates: updatedTemplates,
        selectedTemplate: updatedTemplate,
      ));
    } catch (e) {
      emit(FormTemplateState.error('Error updating template: ${e.toString()}'));
    }
  }

  Future<void> _onDeleteTemplate(
    _DeleteTemplate event,
    Emitter<FormTemplateState> emit,
  ) async {
    emit(const FormTemplateState.actionInProgress());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const FormTemplateState.error('No authentication token found'));
        return;
      }

      await _consentService.deleteFormTemplate(event.templateId, token);
      
      // Remove from existing templates
      final currentTemplates = state.maybeWhen(
        loaded: (templates, _) => templates,
        actionInProgress: () => <FormTemplate>[], // Handle action in progress state
        orElse: () => <FormTemplate>[],
      );
      
      final updatedTemplates = currentTemplates
          .where((template) => template.id != event.templateId)
          .toList();
      
      emit(FormTemplateState.loaded(templates: updatedTemplates));
      
      // Emit success message
      emit(const FormTemplateState.actionSuccess('Template deleted successfully'));
      
      // Return to loaded state
      emit(FormTemplateState.loaded(templates: updatedTemplates));
    } catch (e) {
      emit(FormTemplateState.error('Error deleting template: ${e.toString()}'));
    }
  }

  Future<void> _onClearSelectedTemplate(
    _ClearSelectedTemplate event,
    Emitter<FormTemplateState> emit,
  ) async {
    state.maybeWhen(
      loaded: (templates, _) {
        emit(FormTemplateState.loaded(templates: templates));
      },
      orElse: () {},
    );
  }
} 