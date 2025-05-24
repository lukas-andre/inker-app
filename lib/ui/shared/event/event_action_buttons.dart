import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EventActionButton {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color color;
  final bool isDestructive;

  const EventActionButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.color,
    this.isDestructive = false,
  });
}

class EventActionButtons extends StatelessWidget {
  final List<EventActionButton> actions;
  final bool isLoading;

  const EventActionButtons({
    super.key,
    required this.actions,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (actions.isEmpty || isLoading) {
      return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: _buildButtonLayout(),
        ),
      ),
    );
  }

  Widget _buildButtonLayout() {
    if (actions.length <= 2) {
      return Row(
        children: actions.map((action) => 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _buildActionButton(action),
            ),
          ),
        ).toList(),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: actions.map((action) => 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              width: 140,
              child: _buildActionButton(action),
            ),
          ),
        ).toList(),
      ),
    );
  }

  Widget _buildActionButton(EventActionButton action) {
    return ElevatedButton.icon(
      onPressed: action.onPressed,
      icon: Icon(action.icon, size: 20),
      label: Text(
        action.label,
        style: TextStyleTheme.button.copyWith(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: action.color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: action.isDestructive ? 3 : 2,
      ),
    );
  }
}

class EventActionDialogs {
  static void showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String actionText,
    required Color actionColor,
    required VoidCallback onConfirm,
    String? cancelText,
    Widget? icon,
    Widget? customContent,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Row(
          children: [
            if (icon != null) ...[
              icon,
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                title,
                style: TextStyleTheme.headline3,
              ),
            ),
          ],
        ),
        content: customContent ?? Text(
          content,
          style: TextStyleTheme.bodyText1,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              cancelText ?? 'Cancel',
              style: TextStyleTheme.button.copyWith(color: Colors.white70),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              onConfirm();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: actionColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              actionText,
              style: TextStyleTheme.button,
            ),
          ),
        ],
      ),
    );
  }

  static void showTextInputDialog({
    required BuildContext context,
    required String title,
    required String hintText,
    required String actionText,
    required Color actionColor,
    required Function(String) onConfirm,
    String? cancelText,
    Widget? icon,
    String? initialText,
    int maxLines = 1,
    bool required = false,
  }) {
    final controller = TextEditingController(text: initialText);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Row(
          children: [
            if (icon != null) ...[
              icon,
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                title,
                style: TextStyleTheme.headline3,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyleTheme.bodyText2.copyWith(
                  color: Colors.white54,
                ),
                fillColor: primaryColor.withOpacity(0.3),
                filled: true,
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
              style: TextStyleTheme.bodyText1,
              maxLines: maxLines,
              textCapitalization: TextCapitalization.sentences,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              cancelText ?? 'Cancel',
              style: TextStyleTheme.button.copyWith(color: Colors.white70),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final text = controller.text.trim();
              if (required && text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please provide the required information'),
                    backgroundColor: Colors.orange,
                  ),
                );
                return;
              }
              Navigator.pop(dialogContext);
              onConfirm(text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: actionColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              actionText,
              style: TextStyleTheme.button,
            ),
          ),
        ],
      ),
    );
  }
} 