import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/image_edit_widget.dart';
import 'package:inker_studio/ui/shared/widgets/text_edit_widget.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

enum EditFieldType {
  text,
  image,
}

class EditFieldArguments {
  final EditFieldType type;
  final dynamic initialValue;
  final String label;
  final String labelKey;
  final String? Function(String?)? validator;

  EditFieldArguments({
    required this.type,
    this.initialValue,
    required this.label,
    required this.labelKey,
    this.validator,
  });
}

class EditFieldResult {
  final EditFieldType type;
  final dynamic value;
  final String labelKey;

  EditFieldResult({
    required this.type,
    required this.value,
    required this.labelKey,
  });
}

class EditFieldPage extends StatelessWidget {
  final EditFieldArguments arguments;

  const EditFieldPage({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          '${S.of(context).edit} ${arguments.label}',
          style: TextStyleTheme.headline1,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Expanded(child: _buildEditWidget(context)),
        ],
      ),
    );
  }

  Widget _buildEditWidget(BuildContext context) {
    switch (arguments.type) {
      case EditFieldType.text:
        return TextEditWidget(
          initialValue: arguments.initialValue as String?,
          label: arguments.label,
          validator: arguments.validator,
          onSaved: (value) => _onSave(context, value),
        );
      case EditFieldType.image:
        return ImageEditWidget(
          initialValue: arguments.initialValue as String?,
          label: arguments.label,
          onSaved: (value) => _onSave(context, value),
        );
    }
  }

  void _onSave(BuildContext context, dynamic value) {
    final result = EditFieldResult(
      type: arguments.type,
      value: value,
      labelKey: arguments.labelKey,
    );
    Navigator.of(context).pop(result);
  }
}
