import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:inker_studio/domain/models/consent/form_schema.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class DynamicFormRenderer extends StatefulWidget {
  final FormSchema schema;
  final Map<String, dynamic> initialData;
  final Function(Map<String, dynamic>) onDataChanged;
  final GlobalKey<FormState> formKey;

  const DynamicFormRenderer({
    super.key,
    required this.schema,
    required this.initialData,
    required this.onDataChanged,
    required this.formKey,
  });

  @override
  State<DynamicFormRenderer> createState() => _DynamicFormRendererState();
}

class _DynamicFormRendererState extends State<DynamicFormRenderer> {
  late Map<String, dynamic> _formData;
  final Map<String, SignatureController> _signatureControllers = {};
  final Map<String, TextEditingController> _textControllers = {};

  @override
  void initState() {
    super.initState();
    _formData = Map.from(widget.initialData);
    
    // Initialize controllers
    for (final field in widget.schema.fields) {
      if (field.type == 'signature') {
        _signatureControllers[field.name] = SignatureController(
          penStrokeWidth: 2,
          penColor: Colors.white,
          exportBackgroundColor: Colors.transparent,
        );
      } else if (['text', 'textarea', 'email', 'phone'].contains(field.type)) {
        _textControllers[field.name] = TextEditingController(
          text: _formData[field.name]?.toString() ?? field.defaultValue?.toString() ?? '',
        );
      }
    }
  }

  @override
  void dispose() {
    for (final controller in _signatureControllers.values) {
      controller.dispose();
    }
    for (final controller in _textControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _updateFormData(String fieldName, dynamic value) {
    setState(() {
      _formData[fieldName] = value;
    });
    widget.onDataChanged(_formData);
  }

  bool _shouldShowField(FormSchemaField field) {
    final logic = widget.schema.logic?[field.name];
    if (logic?.showIf == null) return true;

    for (final condition in logic!.showIf!) {
      if (!_evaluateCondition(condition)) {
        return false;
      }
    }
    return true;
  }

  bool _evaluateCondition(FormSchemaLogicCondition condition) {
    final fieldValue = _formData[condition.field];
    
    switch (condition.condition) {
      case 'IS_CHECKED':
        return fieldValue == true;
      case 'EQUALS_VALUE':
        return fieldValue == condition.value;
      case 'IS_FILLED':
        return fieldValue != null && fieldValue.toString().isNotEmpty;
      case 'GREATER_THAN':
        if (fieldValue is num && condition.value is num) {
          return fieldValue > condition.value;
        }
        return false;
      default:
        return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Form title and description
          Text(
            widget.schema.title,
            style: TextStyleTheme.headline2,
          ),
          if (widget.schema.description != null) ...[
            const SizedBox(height: 8),
            Text(
              widget.schema.description!,
              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
            ),
          ],
          const SizedBox(height: 24),

          // Dynamic fields
          ...widget.schema.fields.where(_shouldShowField).map((field) => 
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _buildField(field),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildField(FormSchemaField field) {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'phone':
        return _buildTextInput(field);
      case 'textarea':
        return _buildTextArea(field);
      case 'date':
        return _buildDatePicker(field);
      case 'checkbox':
        return _buildCheckbox(field);
      case 'radio':
        return _buildRadioGroup(field);
      case 'dropdown':
        return _buildDropdown(field);
      case 'signature':
        return _buildSignaturePad(field);
      default:
        return _buildTextInput(field);
    }
  }

  Widget _buildTextInput(FormSchemaField field) {
    final controller = _textControllers[field.name]!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          field.label,
          style: TextStyleTheme.subtitle1.copyWith(
            color: field.required ? Colors.white : Colors.white70,
          ),
        ),
        if (field.required)
          Text(
            ' *',
            style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
          ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          style: TextStyleTheme.bodyText1,
          decoration: InputDecoration(
            hintText: field.placeholder,
            hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white54),
            filled: true,
            fillColor: explorerSecondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 2,
              ),
            ),
          ),
          keyboardType: field.type == 'email' 
              ? TextInputType.emailAddress 
              : field.type == 'phone'
                  ? TextInputType.phone
                  : TextInputType.text,
          validator: (value) => _validateField(field, value),
          onChanged: (value) => _updateFormData(field.name, value),
        ),
      ],
    );
  }

  Widget _buildTextArea(FormSchemaField field) {
    final controller = _textControllers[field.name]!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              field.label,
              style: TextStyleTheme.subtitle1.copyWith(
                color: field.required ? Colors.white : Colors.white70,
              ),
            ),
            if (field.required)
              Text(
                ' *',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
              ),
          ],
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          style: TextStyleTheme.bodyText1,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: field.placeholder,
            hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white54),
            filled: true,
            fillColor: explorerSecondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 2,
              ),
            ),
          ),
          validator: (value) => _validateField(field, value),
          onChanged: (value) => _updateFormData(field.name, value),
        ),
      ],
    );
  }

  Widget _buildDatePicker(FormSchemaField field) {
    final currentValue = _formData[field.name] as DateTime?;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              field.label,
              style: TextStyleTheme.subtitle1.copyWith(
                color: field.required ? Colors.white : Colors.white70,
              ),
            ),
            if (field.required)
              Text(
                ' *',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
              ),
          ],
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: currentValue ?? DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  child: child!,
                );
              },
            );
            if (date != null) {
              _updateFormData(field.name, date);
            }
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: explorerSecondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(width: 12),
                Text(
                  currentValue != null
                      ? '${currentValue.day}/${currentValue.month}/${currentValue.year}'
                      : field.placeholder ?? 'Select date',
                  style: TextStyleTheme.bodyText1.copyWith(
                    color: currentValue != null ? Colors.white : Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (field.required && currentValue == null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'This field is required',
              style: TextStyleTheme.caption.copyWith(color: Colors.red),
            ),
          ),
      ],
    );
  }

  Widget _buildCheckbox(FormSchemaField field) {
    final currentValue = _formData[field.name] as bool? ?? false;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: currentValue,
              onChanged: (value) => _updateFormData(field.name, value ?? false),
              activeColor: Theme.of(context).colorScheme.secondary,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _updateFormData(field.name, !currentValue),
                child: Text(
                  field.label,
                  style: TextStyleTheme.bodyText1.copyWith(
                    color: field.required ? Colors.white : Colors.white70,
                  ),
                ),
              ),
            ),
            if (field.required)
              Text(
                ' *',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
              ),
          ],
        ),
        if (field.required && !currentValue)
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'This field is required',
              style: TextStyleTheme.caption.copyWith(color: Colors.red),
            ),
          ),
      ],
    );
  }

  Widget _buildRadioGroup(FormSchemaField field) {
    final currentValue = _formData[field.name];
    final options = field.options as List<dynamic>? ?? [];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              field.label,
              style: TextStyleTheme.subtitle1.copyWith(
                color: field.required ? Colors.white : Colors.white70,
              ),
            ),
            if (field.required)
              Text(
                ' *',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
              ),
          ],
        ),
        const SizedBox(height: 8),
        ...options.map((option) {
          final value = option is Map ? option['value'] : option;
          final label = option is Map ? option['label'] : option.toString();
          
          return RadioListTile<dynamic>(
            title: Text(
              label,
              style: TextStyleTheme.bodyText1,
            ),
            value: value,
            groupValue: currentValue,
            onChanged: (newValue) => _updateFormData(field.name, newValue),
            activeColor: Theme.of(context).colorScheme.secondary,
            contentPadding: EdgeInsets.zero,
          );
        }),
        if (field.required && currentValue == null)
          Text(
            'This field is required',
            style: TextStyleTheme.caption.copyWith(color: Colors.red),
          ),
      ],
    );
  }

  Widget _buildDropdown(FormSchemaField field) {
    final currentValue = _formData[field.name];
    final options = field.options as List<dynamic>? ?? [];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              field.label,
              style: TextStyleTheme.subtitle1.copyWith(
                color: field.required ? Colors.white : Colors.white70,
              ),
            ),
            if (field.required)
              Text(
                ' *',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
              ),
          ],
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField(
          value: currentValue,
          decoration: InputDecoration(
            filled: true,
            fillColor: explorerSecondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 2,
              ),
            ),
          ),
          dropdownColor: explorerSecondaryColor,
          style: TextStyleTheme.bodyText1,
          items: options.map((option) {
            final value = option is Map ? option['value'] : option;
            final label = option is Map ? option['label'] : option.toString();
            
            return DropdownMenuItem(
              value: value,
              child: Text(label),
            );
          }).toList(),
          onChanged: (value) => _updateFormData(field.name, value),
          validator: (value) => _validateField(field, value),
        ),
      ],
    );
  }

  Widget _buildSignaturePad(FormSchemaField field) {
    final controller = _signatureControllers[field.name]!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              field.label,
              style: TextStyleTheme.subtitle1.copyWith(
                color: field.required ? Colors.white : Colors.white70,
              ),
            ),
            if (field.required)
              Text(
                ' *',
                style: TextStyleTheme.subtitle1.copyWith(color: Colors.red),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Signature(
              controller: controller,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {
                controller.clear();
                _updateFormData(field.name, null);
              },
              icon: const Icon(Icons.clear),
              label: const Text('Clear'),
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const Spacer(),
            TextButton.icon(
              onPressed: () async {
                if (controller.isNotEmpty) {
                  final Uint8List? signature = await controller.toPngBytes();
                  if (signature != null) {
                    final base64Signature = 'data:image/png;base64,${base64Encode(signature)}';
                    _updateFormData(field.name, base64Signature);
                  }
                }
              },
              icon: const Icon(Icons.save),
              label: const Text('Save Signature'),
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
        if (field.required && (_formData[field.name] == null || controller.isEmpty))
          Text(
            'Signature is required',
            style: TextStyleTheme.caption.copyWith(color: Colors.red),
          ),
      ],
    );
  }

  String? _validateField(FormSchemaField field, dynamic value) {
    if (field.required && (value == null || value.toString().isEmpty)) {
      return 'This field is required';
    }

    final validation = field.validation;
    if (validation != null && value != null && value.toString().isNotEmpty) {
      final stringValue = value.toString();
      
      if (validation['minLength'] != null) {
        final minLength = validation['minLength'] as int;
        if (stringValue.length < minLength) {
          return 'Minimum length is $minLength characters';
        }
      }
      
      if (validation['maxLength'] != null) {
        final maxLength = validation['maxLength'] as int;
        if (stringValue.length > maxLength) {
          return 'Maximum length is $maxLength characters';
        }
      }
      
      if (validation['pattern'] != null) {
        final pattern = validation['pattern'] as String;
        final regex = RegExp(pattern);
        if (!regex.hasMatch(stringValue)) {
          return 'Invalid format';
        }
      }
      
      if (field.type == 'email') {
        final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
        if (!emailRegex.hasMatch(stringValue)) {
          return 'Invalid email format';
        }
      }
    }

    return null;
  }
} 