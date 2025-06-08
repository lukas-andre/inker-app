import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EventActionDialogs {
  static void showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String actionText,
    required Color actionColor,
    required VoidCallback onConfirm,
    Widget? icon,
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
        content: Text(
          content,
          style: TextStyleTheme.bodyText1,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              S.of(dialogContext).cancel,
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
    Widget? icon,
    String? initialValue,
    int maxLines = 1,
    bool required = false,
  }) {
    final controller = TextEditingController(text: initialValue);
    bool isEmpty = initialValue?.isEmpty ?? true;

    showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
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
          content: TextField(
            controller: controller,
            maxLines: maxLines,
            style: TextStyleTheme.bodyText1,
            onChanged: (value) {
              setState(() {
                isEmpty = value.trim().isEmpty;
              });
            },
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyleTheme.bodyText1.copyWith(
                color: Colors.white54,
              ),
              filled: true,
              fillColor: primaryColor.withOpacity(0.3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(
                S.of(dialogContext).cancel,
                style: TextStyleTheme.button.copyWith(color: Colors.white70),
              ),
            ),
            ElevatedButton(
              onPressed: required && isEmpty
                  ? null
                  : () {
                      Navigator.pop(dialogContext);
                      onConfirm(controller.text.trim());
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
      ),
    );
  }

  static void showRatingDialog({
    required BuildContext context,
    required String title,
    required String actionText,
    required Function(int rating, String comment, bool isAnonymous) onConfirm,
    Widget? icon,
  }) {
    final commentController = TextEditingController();
    int selectedRating = 0;
    bool isAnonymous = false;

    showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
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
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Star rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    final starIndex = index + 1;
                    return IconButton(
                      icon: Icon(
                        starIndex <= selectedRating
                            ? Icons.star
                            : Icons.star_border,
                        color: starIndex <= selectedRating
                            ? Colors.amber
                            : Colors.white54,
                        size: 32,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedRating = starIndex;
                        });
                      },
                    );
                  }),
                ),
                const SizedBox(height: 16),
                // Comment field
                TextField(
                  controller: commentController,
                  maxLines: 4,
                  style: TextStyleTheme.bodyText1,
                  decoration: InputDecoration(
                    hintText: S.of(context).comment,
                    hintStyle: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white54,
                    ),
                    filled: true,
                    fillColor: primaryColor.withOpacity(0.3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
                const SizedBox(height: 16),
                // Anonymous checkbox
                Row(
                  children: [
                    Checkbox(
                      value: isAnonymous,
                      onChanged: (value) {
                        setState(() {
                          isAnonymous = value ?? false;
                        });
                      },
                      activeColor: Theme.of(context).colorScheme.secondary,
                    ),
                    Expanded(
                      child: Text(
                        S.of(context).anonymous,
                        style: TextStyleTheme.bodyText2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(
                S.of(dialogContext).cancel,
                style: TextStyleTheme.button.copyWith(color: Colors.white70),
              ),
            ),
            ElevatedButton(
              onPressed: selectedRating > 0
                  ? () {
                      Navigator.pop(dialogContext);
                      onConfirm(
                        selectedRating,
                        commentController.text.trim(),
                        isAnonymous,
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
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
      ),
    );
  }

  static void showRescheduleDialog({
    required BuildContext context,
    required String title,
    required DateTime currentStartDate,
    required DateTime currentEndDate,
    required Function(DateTime newStartDate, DateTime newEndDate, String? reason) onConfirm,
    Widget? icon,
  }) {
    DateTime newStartDate = currentStartDate;
    DateTime newEndDate = currentEndDate;
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
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
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date and time pickers
                ListTile(
                  leading: const Icon(Icons.calendar_today, color: Colors.white70),
                  title: Text(
                    S.of(context).startDate,
                    style: TextStyleTheme.caption,
                  ),
                  subtitle: Text(
                    _formatDateTime(newStartDate),
                    style: TextStyleTheme.bodyText1,
                  ),
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: newStartDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    if (date != null) {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(newStartDate),
                      );
                      if (time != null) {
                        setState(() {
                          newStartDate = DateTime(
                            date.year,
                            date.month,
                            date.day,
                            time.hour,
                            time.minute,
                          );
                          // Update end date if needed
                          final duration = currentEndDate.difference(currentStartDate);
                          newEndDate = newStartDate.add(duration);
                        });
                      }
                    }
                  },
                ),
                const Divider(color: Colors.white24),
                ListTile(
                  leading: const Icon(Icons.schedule, color: Colors.white70),
                  title: Text(
                    S.of(context).endDate,
                    style: TextStyleTheme.caption,
                  ),
                  subtitle: Text(
                    _formatDateTime(newEndDate),
                    style: TextStyleTheme.bodyText1,
                  ),
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: newEndDate,
                      firstDate: newStartDate,
                      lastDate: newStartDate.add(const Duration(days: 7)),
                    );
                    if (date != null) {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(newEndDate),
                      );
                      if (time != null) {
                        setState(() {
                          newEndDate = DateTime(
                            date.year,
                            date.month,
                            date.day,
                            time.hour,
                            time.minute,
                          );
                        });
                      }
                    }
                  },
                ),
                const SizedBox(height: 16),
                // Reason field
                TextField(
                  controller: reasonController,
                  maxLines: 3,
                  style: TextStyleTheme.bodyText1,
                  decoration: InputDecoration(
                    hintText: S.of(context).reason,
                    hintStyle: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white54,
                    ),
                    filled: true,
                    fillColor: primaryColor.withOpacity(0.3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(
                S.of(dialogContext).cancel,
                style: TextStyleTheme.button.copyWith(color: Colors.white70),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(dialogContext);
                onConfirm(
                  newStartDate,
                  newEndDate,
                  reasonController.text.trim().isEmpty
                      ? null
                      : reasonController.text.trim(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                S.of(context).save,
                style: TextStyleTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  static void showWorkEvidenceDialog({
    required BuildContext context,
    required String title,
    required Function(List<String> imagePaths) onConfirm,
    Widget? icon,
  }) {
    final List<String> selectedImages = [];

    showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
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
          content: Container(
            width: double.maxFinite,
            constraints: const BoxConstraints(maxHeight: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (selectedImages.isEmpty)
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white24,
                        style: BorderStyle.solid,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.add_photo_alternate,
                            size: 48,
                            color: Colors.white54,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            S.of(context).addPhoto,
                            style: TextStyleTheme.bodyText2.copyWith(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: selectedImages.length + 1,
                      itemBuilder: (context, index) {
                        if (index == selectedImages.length) {
                          return InkWell(
                            onTap: () {
                              // TODO: Implement image picker
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(S.of(context).thisFeatureWillBeAvailableSoon),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white24,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          );
                        }
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(selectedImages[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 4,
                              right: 4,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedImages.removeAt(index);
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Implement image picker
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(S.of(context).thisFeatureWillBeAvailableSoon),
                      ),
                    );
                  },
                  icon: const Icon(Icons.photo_library),
                  label: Text(S.of(context).gallery),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor.withOpacity(0.5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(
                S.of(dialogContext).cancel,
                style: TextStyleTheme.button.copyWith(color: Colors.white70),
              ),
            ),
            ElevatedButton(
              onPressed: selectedImages.isNotEmpty
                  ? () {
                      Navigator.pop(dialogContext);
                      onConfirm(selectedImages);
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                S.of(context).save,
                style: TextStyleTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 