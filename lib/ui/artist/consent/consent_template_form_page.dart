import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/form_template/form_template_bloc.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/consent/form_schema.dart';
import 'package:inker_studio/domain/models/consent/consent_type.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/ui/shared/widgets/dynamic_form_renderer.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ConsentTemplateFormPage extends StatefulWidget {
  static const String routeName = '/consent-template-form';
  
  final FormTemplate? template; // null for create mode, populated for edit mode
  
  const ConsentTemplateFormPage({
    super.key,
    this.template,
  });

  @override
  State<ConsentTemplateFormPage> createState() => _ConsentTemplateFormPageState();
}

class _ConsentTemplateFormPageState extends State<ConsentTemplateFormPage> 
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _previewData = {};
  
  // Form controllers
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late ConsentType _selectedType;
  late bool _isActive;
  late List<FormSchemaField> _fields;
  
  String? _artistId;
  bool _isLoading = false;
  bool _isSaving = false;

  bool get isEditMode => widget.template != null;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    
    // Initialize form data
    _titleController = TextEditingController(text: widget.template?.title ?? '');
    _descriptionController = TextEditingController(text: widget.template?.content.description ?? '');
    _selectedType = widget.template?.consentType ?? ConsentType.generalTerms;
    _isActive = widget.template?.isActive ?? true;
    _fields = widget.template?.content.fields.map((f) => FormSchemaField(
      type: f.type,
      name: f.name,
      label: f.label,
      required: f.required,
      placeholder: f.placeholder,
      options: f.options,
      validation: f.validation,
    )).toList() ?? [];
    
    _loadArtistId();
  }

  Future<void> _loadArtistId() async {
    setState(() => _isLoading = true);
    try {
      final sessionService = context.read<LocalSessionService>();
      final session = await sessionService.getActiveSession();
      if (mounted) {
        setState(() {
          _artistId = session?.user?.userTypeId;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error loading user data: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading || _artistId == null) {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: const Center(child: InkerProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          isEditMode ? 'Edit Consent Template' : 'Create Consent Template',
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          TextButton.icon(
            onPressed: _isSaving ? null : _saveTemplate,
            icon: _isSaving 
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : const Icon(Icons.save, color: Colors.white),
            label: Text(
              _isSaving ? 'Saving...' : 'Save',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).colorScheme.secondary,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          tabs: const [
            Tab(text: 'Basic Info'),
            Tab(text: 'Form Fields'),
            Tab(text: 'Preview'),
          ],
        ),
      ),
      body: BlocListener<FormTemplateBloc, FormTemplateState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.of(context).pop(true); // Return true to indicate success
            },
            error: (message) {
              if (mounted) {
                setState(() => _isSaving = false);
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        child: Form(
          key: _formKey,
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildBasicInfoTab(),
              _buildFormFieldsTab(),
              _buildPreviewTab(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBasicInfoTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: explorerSecondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Template Information',
                    style: TextStyleTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Title field
                  TextFormField(
                    controller: _titleController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Template Title',
                      labelStyle: const TextStyle(color: Colors.white70),
                      hintText: 'Enter template title',
                      hintStyle: const TextStyle(color: Colors.white38),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.title, color: Colors.white70),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  
                  // Description field
                  TextFormField(
                    controller: _descriptionController,
                    style: const TextStyle(color: Colors.white),
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: const TextStyle(color: Colors.white70),
                      hintText: 'Enter template description',
                      hintStyle: const TextStyle(color: Colors.white38),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.description, color: Colors.white70),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Consent Type dropdown
                  Text(
                    'Consent Type',
                    style: TextStyleTheme.bodyText1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<ConsentType>(
                        value: _selectedType,
                        isExpanded: true,
                        dropdownColor: explorerSecondaryColor,
                        style: const TextStyle(color: Colors.white),
                        onChanged: (ConsentType? newValue) {
                          if (newValue != null) {
                            setState(() {
                              _selectedType = newValue;
                            });
                          }
                        },
                        items: ConsentType.values.map((ConsentType type) {
                          return DropdownMenuItem<ConsentType>(
                            value: type,
                            child: Row(
                              children: [
                                Icon(
                                  _getConsentTypeIcon(type),
                                  color: _getConsentTypeColor(type),
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(_getConsentTypeLabel(type)),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Active status toggle
                  Row(
                    children: [
                      Text(
                        'Active Status',
                        style: TextStyleTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Switch(
                        value: _isActive,
                        onChanged: (bool value) {
                          setState(() {
                            _isActive = value;
                          });
                        },
                        activeColor: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormFieldsTab() {
    return Column(
      children: [
        Expanded(
          child: _fields.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        size: 64,
                        color: Colors.white54,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No form fields yet',
                        style: TextStyleTheme.headline3.copyWith(color: Colors.white54),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Add fields to build your consent form',
                        style: TextStyleTheme.bodyText2.copyWith(color: Colors.white54),
                      ),
                    ],
                  ),
                )
              : ReorderableListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: _fields.length,
                  itemBuilder: (context, index) {
                    final field = _fields[index];
                    return _buildFieldCard(field, index, key: ValueKey(field.name));
                  },
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final field = _fields.removeAt(oldIndex);
                      _fields.insert(newIndex, field);
                    });
                  },
                ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: explorerSecondaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(77), // 30% opacity
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => _showAddFieldDialog(),
                  icon: const Icon(Icons.add),
                  label: const Text('Add Field'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFieldCard(FormSchemaField field, int index, {Key? key}) {
    return Card(
      key: key,
      margin: const EdgeInsets.only(bottom: 12),
      color: explorerSecondaryColor,
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getFieldTypeIcon(field.type),
              color: Colors.white70,
            ),
          ],
        ),
        title: Text(
          field.label,
          style: TextStyleTheme.subtitle1,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha(51), // 20% opacity
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    field.type.toUpperCase(),
                    style: TextStyleTheme.caption.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  field.name,
                  style: TextStyleTheme.caption.copyWith(
                    color: Colors.white54,
                  ),
                ),
                if (field.required) ...[
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.orange.withAlpha(51), // 20% opacity
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'REQUIRED',
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, size: 20),
              onPressed: () => _showEditFieldDialog(field, index),
            ),
            IconButton(
              icon: const Icon(Icons.delete, size: 20, color: Colors.red),
              onPressed: () => _removeField(index),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreviewTab() {
    final schema = FormSchema(
      title: _titleController.text.isEmpty ? 'Untitled Form' : _titleController.text,
      description: _descriptionController.text.isEmpty ? null : _descriptionController.text,
      fields: _fields,
      logic: {},
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: explorerSecondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.preview, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        'Form Preview',
                        style: TextStyleTheme.subtitle1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'This is how your form will appear to users',
                    style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          if (_fields.isEmpty)
            Card(
              color: explorerSecondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 48,
                        color: Colors.white54,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Add fields to see the preview',
                        style: TextStyleTheme.bodyText1.copyWith(color: Colors.white54),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )
          else
            Card(
              color: explorerSecondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: DynamicFormRenderer(
                  schema: schema,
                  initialData: _previewData,
                  onDataChanged: (data) {
                    setState(() {
                      _previewData.clear();
                      _previewData.addAll(data);
                    });
                  },
                  formKey: GlobalKey<FormState>(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _showAddFieldDialog() {
    _showFieldDialog(null, null);
  }

  void _showEditFieldDialog(FormSchemaField field, int index) {
    _showFieldDialog(field, index);
  }

  void _showFieldDialog(FormSchemaField? existingField, int? index) {
    final isEdit = existingField != null;
    final nameController = TextEditingController(text: existingField?.name ?? '');
    final labelController = TextEditingController(text: existingField?.label ?? '');
    final placeholderController = TextEditingController(text: existingField?.placeholder ?? '');
    var fieldType = existingField?.type ?? 'text';
    var isRequired = existingField?.required ?? false;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            backgroundColor: explorerSecondaryColor,
            title: Text(isEdit ? 'Edit Field' : 'Add Field'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Field Type
                  DropdownButtonFormField<String>(
                    value: fieldType,
                    decoration: InputDecoration(
                      labelText: 'Field Type',
                      filled: true,
                      fillColor: Colors.black.withAlpha(51), // 20% opacity
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    dropdownColor: explorerSecondaryColor,
                    style: const TextStyle(color: Colors.white),
                    items: const [
                      DropdownMenuItem(value: 'text', child: Text('Text Input')),
                      DropdownMenuItem(value: 'email', child: Text('Email')),
                      DropdownMenuItem(value: 'phone', child: Text('Phone')),
                      DropdownMenuItem(value: 'textarea', child: Text('Text Area')),
                      DropdownMenuItem(value: 'date', child: Text('Date')),
                      DropdownMenuItem(value: 'checkbox', child: Text('Checkbox')),
                      DropdownMenuItem(value: 'signature', child: Text('Signature')),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setDialogState(() {
                          fieldType = value;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  
                  // Field Name
                  TextField(
                    controller: nameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Field Name (no spaces)',
                      hintText: 'e.g., fullName',
                      filled: true,
                      fillColor: Colors.black.withAlpha(51), // 20% opacity
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Field Label
                  TextField(
                    controller: labelController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Field Label',
                      hintText: 'e.g., Full Name',
                      filled: true,
                      fillColor: Colors.black.withAlpha(51), // 20% opacity
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Placeholder (if applicable)
                  if (!['checkbox', 'signature', 'date'].contains(fieldType))
                    TextField(
                      controller: placeholderController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Placeholder',
                        hintText: 'e.g., Enter your full name',
                        filled: true,
                        fillColor: Colors.black.withAlpha(51), // 20% opacity
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                  
                  // Required checkbox
                  CheckboxListTile(
                    title: const Text('Required Field'),
                    value: isRequired,
                    onChanged: (value) {
                      setDialogState(() {
                        isRequired = value ?? false;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  final name = nameController.text.trim().replaceAll(' ', '_');
                  final label = labelController.text.trim();
                  
                  if (name.isEmpty || label.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please fill in all required fields'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }
                  
                  final newField = FormSchemaField(
                    type: fieldType,
                    name: name,
                    label: label,
                    required: isRequired,
                    placeholder: placeholderController.text.isEmpty ? null : placeholderController.text,
                  );
                  
                  setState(() {
                    if (isEdit && index != null) {
                      _fields[index] = newField;
                    } else {
                      _fields.add(newField);
                    }
                  });
                  
                  Navigator.of(context).pop();
                },
                child: Text(isEdit ? 'Save' : 'Add'),
              ),
            ],
          );
        },
      ),
    );
  }

  void _removeField(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        title: const Text('Remove Field'),
        content: Text('Are you sure you want to remove "${_fields[index].label}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fields.removeAt(index);
              });
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }

  void _saveTemplate() async {
    if (!_formKey.currentState!.validate()) {
      // Switch to basic info tab if validation fails
      _tabController.animateTo(0);
      return;
    }

    if (_fields.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add at least one field to the form'),
          backgroundColor: Colors.orange,
        ),
      );
      _tabController.animateTo(1);
      return;
    }

    setState(() => _isSaving = true);

    final schema = FormSchema(
      title: _titleController.text,
      description: _descriptionController.text.isEmpty ? null : _descriptionController.text,
      fields: _fields,
      logic: {},
    );

    final dto = CreateFormTemplateDto(
      title: _titleController.text,
      content: schema,
      version: widget.template?.version ?? 1,
      consentType: _selectedType,
      artistId: _artistId!,
      isActive: _isActive,
    );

    if (isEditMode) {
      context.read<FormTemplateBloc>().add(
        FormTemplateEvent.updateTemplate(widget.template!.id, dto),
      );
    } else {
      context.read<FormTemplateBloc>().add(
        FormTemplateEvent.createTemplate(dto),
      );
    }
  }

  Color _getConsentTypeColor(ConsentType type) {
    switch (type) {
      case ConsentType.generalTerms:
        return Colors.blue;
      case ConsentType.tattooConsent:
        return Colors.purple;
      case ConsentType.imageRelease:
        return Colors.green;
      case ConsentType.other:
        return Colors.orange;
    }
  }

  IconData _getConsentTypeIcon(ConsentType type) {
    switch (type) {
      case ConsentType.generalTerms:
        return Icons.gavel;
      case ConsentType.tattooConsent:
        return Icons.brush;
      case ConsentType.imageRelease:
        return Icons.photo_camera;
      case ConsentType.other:
        return Icons.description;
    }
  }

  String _getConsentTypeLabel(ConsentType type) {
    switch (type) {
      case ConsentType.generalTerms:
        return 'General Terms';
      case ConsentType.tattooConsent:
        return 'Tattoo Consent';
      case ConsentType.imageRelease:
        return 'Image Release';
      case ConsentType.other:
        return 'Other';
    }
  }

  IconData _getFieldTypeIcon(String type) {
    switch (type.toLowerCase()) {
      case 'text':
        return Icons.text_fields;
      case 'email':
        return Icons.email;
      case 'phone':
        return Icons.phone;
      case 'textarea':
        return Icons.notes;
      case 'date':
        return Icons.calendar_today;
      case 'checkbox':
        return Icons.check_box;
      case 'signature':
        return Icons.draw;
      default:
        return Icons.input;
    }
  }
} 