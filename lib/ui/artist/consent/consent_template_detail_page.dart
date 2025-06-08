import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/form_template/form_template_bloc.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/consent/form_schema.dart';
import 'package:inker_studio/domain/models/consent/consent_type.dart';
import 'package:inker_studio/ui/shared/widgets/dynamic_form_renderer.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ConsentTemplateDetailPage extends StatefulWidget {
  static const String routeName = '/consent-template-detail';
  
  final FormTemplate template;
  
  const ConsentTemplateDetailPage({
    super.key,
    required this.template,
  });

  @override
  State<ConsentTemplateDetailPage> createState() => _ConsentTemplateDetailPageState();
}

class _ConsentTemplateDetailPageState extends State<ConsentTemplateDetailPage> 
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Map<String, dynamic> _previewData = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          widget.template.title,
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) => _handleAction(context, value),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    Icon(Icons.edit, size: 16),
                    SizedBox(width: 8),
                    Text('Edit Template'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'duplicate',
                child: Row(
                  children: [
                    Icon(Icons.copy, size: 16),
                    SizedBox(width: 8),
                    Text('Duplicate'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: widget.template.isActive ? 'deactivate' : 'activate',
                child: Row(
                  children: [
                    Icon(
                      widget.template.isActive
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(widget.template.isActive ? 'Deactivate' : 'Activate'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    Icon(Icons.delete, size: 16, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Delete', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).colorScheme.secondary,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          tabs: const [
            Tab(text: 'Details'),
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
              // Go back to templates list
              Navigator.of(context).pop(true);
            },
            error: (message) {
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
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildDetailsTab(),
            _buildPreviewTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Info Card
          _buildHeaderCard(),
          const SizedBox(height: 16),
          
          // Form Fields Card
          _buildFormFieldsCard(),
          const SizedBox(height: 16),
          
          // Metadata Card
          _buildMetadataCard(),
        ],
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Card(
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _getConsentTypeColor(widget.template.consentType)
                        .withAlpha(51),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    _getConsentTypeIcon(widget.template.consentType),
                    color: _getConsentTypeColor(widget.template.consentType),
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.template.title,
                        style: TextStyleTheme.headline3,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _getConsentTypeLabel(widget.template.consentType),
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: _getConsentTypeColor(widget.template.consentType),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: widget.template.isActive
                        ? Colors.green.withAlpha(51)
                        : Colors.grey.withAlpha(51),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        widget.template.isActive ? Icons.check_circle : Icons.cancel,
                        size: 16,
                        color: widget.template.isActive ? Colors.green : Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        widget.template.isActive ? 'Active' : 'Inactive',
                        style: TextStyleTheme.caption.copyWith(
                          color: widget.template.isActive ? Colors.green : Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            if (widget.template.content.description != null) ...[
              const SizedBox(height: 16),
              Text(
                'Description',
                style: TextStyleTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.template.content.description!,
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFormFieldsCard() {
    return Card(
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.list, color: Colors.white),
                const SizedBox(width: 8),
                Text(
                  'Form Fields (${widget.template.content.fields.length})',
                  style: TextStyleTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            if (widget.template.content.fields.isEmpty)
              Text(
                'No fields defined in this template',
                style: TextStyleTheme.bodyText2.copyWith(color: Colors.white54),
              )
            else
              ...widget.template.content.fields.asMap().entries.map((entry) {
                final index = entry.key;
                final field = entry.value;
                return _buildFieldItem(field, index);
              }),
          ],
        ),
      ),
    );
  }

  Widget _buildFieldItem(FormSchemaField field, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white24,
            child: Text(
              '${index + 1}',
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      field.label,
                      style: TextStyleTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (field.required) ...[
                      const SizedBox(width: 4),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
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
                        fontFamily: 'monospace',
                      ),
                    ),
                  ],
                ),
                if (field.placeholder != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Placeholder: ${field.placeholder}',
                    style: TextStyleTheme.caption.copyWith(
                      color: Colors.white54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ],
            ),
          ),
          Icon(
            _getFieldTypeIcon(field.type),
            color: Colors.white54,
            size: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildMetadataCard() {
    return Card(
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.info_outline, color: Colors.white),
                const SizedBox(width: 8),
                Text(
                  'Metadata',
                  style: TextStyleTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            _buildMetadataRow('Template ID', widget.template.id),
            _buildMetadataRow('Version', widget.template.version.toString()),
            _buildMetadataRow('Artist ID', widget.template.artistId),
            _buildMetadataRow('Created', widget.template.createdAt?.toString() ?? 'Unknown'),
            _buildMetadataRow('Updated', widget.template.updatedAt?.toString() ?? 'Unknown'),
          ],
        ),
      ),
    );
  }

  Widget _buildMetadataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyleTheme.bodyText2.copyWith(
                fontFamily: 'monospace',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreviewTab() {
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
                    'This is how the form will appear to users when they sign it',
                    style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          Card(
            color: explorerSecondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: DynamicFormRenderer(
                schema: widget.template.content,
                initialData: _previewData,
                onDataChanged: (data) {
                  setState(() {
                    _previewData.clear();
                    _previewData.addAll(data);
                  });
                },
                formKey: GlobalKey<FormState>(),
                // isPreviewMode: true, // This flag should disable actual form submission
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleAction(BuildContext context, String action) async {
    switch (action) {
      case 'edit':
        final result = await Navigator.pushNamed(
          context,
          '/consent-template-form',
          arguments: widget.template,
        );
        
        // Go back if template was updated
        if (result == true && mounted) {
          Navigator.of(context).pop(true); // Return true to indicate refresh needed
        }
        break;
      case 'duplicate':
        _duplicateTemplate(context);
        break;
      case 'activate':
      case 'deactivate':
        _toggleTemplateStatus(context);
        break;
      case 'delete':
        _showDeleteConfirmation(context);
        break;
    }
  }
  
  void _duplicateTemplate(BuildContext context) {
    final duplicateDto = CreateFormTemplateDto(
      title: 'Copy of ${widget.template.title}',
      content: widget.template.content,
      version: 1,
      consentType: widget.template.consentType,
      artistId: widget.template.artistId,
      isActive: false, // Set as inactive by default
    );
    
    context.read<FormTemplateBloc>().add(
      FormTemplateEvent.createTemplate(duplicateDto),
    );
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Creating duplicate template...'),
        backgroundColor: Colors.blue,
      ),
    );
  }
  
  void _toggleTemplateStatus(BuildContext context) {
    final updatedDto = CreateFormTemplateDto(
      title: widget.template.title,
      content: widget.template.content,
      version: widget.template.version,
      consentType: widget.template.consentType,
      artistId: widget.template.artistId,
      isActive: !widget.template.isActive,
    );
    
    context.read<FormTemplateBloc>().add(
      FormTemplateEvent.updateTemplate(widget.template.id, updatedDto),
    );
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(widget.template.isActive ? 'Deactivating template...' : 'Activating template...'),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        title: const Text('Delete Template'),
        content: Text(
          'Are you sure you want to delete "${widget.template.title}"? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              context.read<FormTemplateBloc>().add(
                    FormTemplateEvent.deleteTemplate(widget.template.id),
                  );
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
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
      case 'radio':
        return Icons.radio_button_checked;
      case 'select':
        return Icons.arrow_drop_down;
      case 'signature':
        return Icons.draw;
      default:
        return Icons.input;
    }
  }
} 