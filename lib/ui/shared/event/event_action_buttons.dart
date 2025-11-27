import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EventActionButton {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color color;
  final bool isDestructive;
  final bool isPrimary;

  const EventActionButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.color,
    this.isDestructive = false,
    this.isPrimary = false,
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
      return isLoading ? _buildLoadingState() : const SizedBox.shrink();
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

  Widget _buildLoadingState() {
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
          height: 60,
          child: const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonLayout() {
    // For 1-2 buttons, use horizontal layout
    if (actions.length <= 2) {
      return Row(
        children: actions.map((action) => 
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: actions.indexOf(action) == 0 ? 0 : 8,
                right: actions.indexOf(action) == actions.length - 1 ? 0 : 8,
              ),
              child: _buildActionButton(action, isFullWidth: true),
            ),
          ),
        ).toList(),
      );
    }

    // For 3+ buttons, use clean vertical list
    return _buildVerticalList();
  }

  Widget _buildVerticalList() {
    // Sort actions: primary first, then others
    final sortedActions = [...actions];
    sortedActions.sort((a, b) {
      if (a.isPrimary && !b.isPrimary) return -1;
      if (!a.isPrimary && b.isPrimary) return 1;
      return 0;
    });

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: sortedActions.asMap().entries.map((entry) {
        final index = entry.key;
        final action = entry.value;
        final isLast = index == sortedActions.length - 1;
        
        return Padding(
          padding: EdgeInsets.only(bottom: isLast ? 0 : 8),
          child: _buildActionButton(action, isFullWidth: true),
        );
      }).toList(),
    );
  }

  Widget _buildActionButton(
    EventActionButton action, {
    bool isFullWidth = false,
  }) {
    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: ElevatedButton.icon(
        onPressed: action.onPressed,
        icon: Icon(action.icon, size: 20),
        label: Text(
          action.label,
          style: TextStyleTheme.button.copyWith(
            fontSize: 14,
            color: Colors.white,
            fontWeight: action.isPrimary ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: action.color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: action.isDestructive ? 3 : (action.isPrimary ? 2 : 1),
        ),
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