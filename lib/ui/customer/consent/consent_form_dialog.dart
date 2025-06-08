import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/signed_consent/signed_consent_bloc.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/consent/signed_consent.dart';
import 'package:inker_studio/ui/shared/widgets/dynamic_form_renderer.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ConsentFormDialog extends StatefulWidget {
  final FormTemplate template;
  final String eventId;
  final String userId;

  const ConsentFormDialog({
    super.key,
    required this.template,
    required this.eventId,
    required this.userId,
  });

  @override
  State<ConsentFormDialog> createState() => _ConsentFormDialogState();
}

class _ConsentFormDialogState extends State<ConsentFormDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _formData = {};
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        decoration: BoxDecoration(
          color: explorerSecondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.description,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      widget.template.title,
                      style: TextStyleTheme.headline3,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Form Content
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: DynamicFormRenderer(
                  schema: widget.template.content,
                  initialData: _formData,
                  onDataChanged: (data) {
                    setState(() {
                      _formData.clear();
                      _formData.addAll(data);
                    });
                  },
                  formKey: _formKey,
                ),
              ),
            ),

            // Footer with actions
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _isSubmitting ? null : () => Navigator.of(context).pop(),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white54),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyleTheme.button.copyWith(color: Colors.white54),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: _isSubmitting ? null : _submitForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: _isSubmitting
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                          : Text(
                              'Sign Consent',
                              style: TextStyleTheme.button,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Check if all required fields are filled
    for (final field in widget.template.content.fields) {
      if (field.required) {
        final value = _formData[field.name];
        if (value == null || 
            (value is String && value.isEmpty) ||
            (field.type == 'checkbox' && value != true)) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Please complete all required fields'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }
      }
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      // Create digital signature (for now, we'll use a simple text representation)
      final digitalSignature = _createDigitalSignature();

      final dto = SignConsentDto(
        eventId: widget.eventId,
        formTemplateId: widget.template.id,
        signedData: _formData,
        digitalSignature: digitalSignature,
      );

      context.read<SignedConsentBloc>().add(
        SignedConsentEvent.signConsent(dto),
      );

      // Close dialog
      Navigator.of(context).pop(true);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error signing consent: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  String _createDigitalSignature() {
    // Look for signature field in form data
    for (final field in widget.template.content.fields) {
      if (field.type == 'signature' && _formData[field.name] != null) {
        return _formData[field.name] as String;
      }
    }

    // Fallback: create a text-based signature
    final timestamp = DateTime.now().toIso8601String();
    final userName = _formData['fullName'] ?? _formData['name'] ?? 'User';
    return 'Digitally signed by $userName on $timestamp';
  }
} 