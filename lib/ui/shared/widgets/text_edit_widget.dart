import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class TextEditWidget extends StatefulWidget {
  final String? initialValue;
  final String label;
  final String? Function(String?)? validator;
  final void Function(String) onSaved;

  const TextEditWidget({
    Key? key,
    this.initialValue,
    required this.label,
    this.validator,
    required this.onSaved,
  }) : super(key: key);

  @override
  _TextEditWidgetState createState() => _TextEditWidgetState();
}

class _TextEditWidgetState extends State<TextEditWidget> {
  late TextEditingController _controller;
  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      _hasChanges = _controller.text != widget.initialValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: TextStyleTheme.bodyText1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: primaryColor,
              ),
              style: TextStyleTheme.bodyText1,
              maxLines: null,
            ),
          ),
        ),
        _buildBottomButtons(),
      ],
    );
  }

  Widget _buildBottomButtons() {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_hasChanges)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _saveChanges,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  S.of(context).saveChanges,
                  style: TextStyleTheme.button.copyWith(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _saveChanges() {
    if (widget.validator == null ||
        widget.validator!(_controller.text) == null) {
      widget.onSaved(_controller.text);
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }
}
