import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/domain/models/notifications/notification.dart' as model;
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class NotificationItem extends StatelessWidget {
  final model.InkerNotification notification;
  final VoidCallback onTap;

  const NotificationItem({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        decoration: BoxDecoration(
          color: notification.read 
              ? Colors.grey[50]  // Light background for read notifications
              : primaryColor.withOpacity(0.08),  // Subtle purple highlight for unread
          border: Border(
            bottom: BorderSide(
              color: primaryColor.withOpacity(0.1),  // Purple tinted border
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNotificationIcon(),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          notification.title,
                          style: TextStyleTheme.subtitle1.copyWith(
                            fontWeight: notification.read 
                                ? FontWeight.w500 
                                : FontWeight.bold,
                            color: primaryColor,  // Use primary purple for title
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        _formatTimestamp(notification.createdAt),
                        style: TextStyleTheme.caption.copyWith(
                          color: Colors.grey[600],  // Medium grey
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    notification.body,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.grey[700],  // Darker grey for better contrast
                      height: 1.4,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // Show related metadata if available
                  if (_hasRelevantMetadata()) ...[
                    const SizedBox(height: 8.0),
                    _buildMetadataChip(l10n),
                  ],
                  const SizedBox(height: 4.0),
                  // Unread indicator
                  if (!notification.read) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: primaryColor,  // Purple dot
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: primaryColor.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Check if the notification has metadata that would be useful to display
  bool _hasRelevantMetadata() {
    return notification.data.containsKey('artistName') || 
           notification.data.containsKey('customerName') ||
           notification.data.containsKey('status');
  }
  
  // Show small chip with relevant info
  Widget _buildMetadataChip(S l10n) {
    String? chipText;
    
    if (notification.data.containsKey('artistName')) {
      chipText = "${l10n.artist}: ${notification.data['artistName']}";
    } else if (notification.data.containsKey('customerName')) {
      chipText = "${l10n.customer}: ${notification.data['customerName']}";
    } else if (notification.data.containsKey('status')) {
      chipText = "${l10n.status}: ${_formatStatus(notification.data['status'], l10n)}";
    }
    
    if (chipText == null) return const SizedBox.shrink();
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),  // Purple background
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: primaryColor.withOpacity(0.2),  // Purple border
          width: 1.0,
        ),
      ),
      child: Text(
        chipText,
        style: TextStyleTheme.caption.copyWith(
          color: primaryColor,  // Purple text
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
  
  // Format status strings to be more user-friendly
  String _formatStatus(String status, S l10n) {
    final statusMap = {
      'scheduled': l10n.scheduled,
      'in_progress': l10n.inProgress,
      'completed': l10n.completed,
      'rescheduled': l10n.rescheduled,
      'waiting_for_photos': l10n.waitingForPhotos,
      'waiting_for_review': l10n.waitingForReview,
      'reviewed': l10n.reviewed,
      'canceled': l10n.canceled,
    };
    
    return statusMap[status.toLowerCase()] ?? status;
  }

  Widget _buildNotificationIcon() {
    IconData iconData;
    Color iconColor;

    switch (notification.type) {
      case 'EVENT_STATUS_CHANGED':
        iconData = Icons.event_available;
        iconColor = Colors.green;
        break;
      case 'EVENT_CREATED':
        iconData = Icons.event;
        iconColor = Colors.blue;
        break;
      case 'EVENT_UPDATED':
        iconData = Icons.edit_calendar;
        iconColor = Colors.orange;
        break;
      case 'EVENT_CANCELED':
        iconData = Icons.event_busy;
        iconColor = Colors.red;
        break;
      case 'EVENT_REMINDER':
        iconData = Icons.alarm;
        iconColor = Colors.amber;
        break;
      case 'QUOTATION_CREATED':
        iconData = Icons.request_quote;
        iconColor = Colors.blue;
        break;
      case 'QUOTATION_REPLIED':
        iconData = Icons.question_answer;
        iconColor = Colors.purple;
        break;
      case 'QUOTATION_ACCEPTED':
        iconData = Icons.check_circle;
        iconColor = Colors.green;
        break;
      case 'QUOTATION_REJECTED':
        iconData = Icons.cancel;
        iconColor = Colors.red;
        break;
      case 'QUOTATION_APPEALED':
        iconData = Icons.assignment_return;
        iconColor = Colors.orange;
        break;
      case 'QUOTATION_CANCELED':
        iconData = Icons.block;
        iconColor = Colors.grey;
        break;
      default:
        iconData = Icons.notifications;
        iconColor = Colors.blue;
    }

    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),  // Purple background
        shape: BoxShape.circle,
        border: Border.all(
          color: primaryColor.withOpacity(0.2),  // Purple border
          width: 1.5,
        ),
      ),
      child: Icon(
        iconData,
        color: primaryColor,  // Purple icon
        size: 20.0,
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays == 0) {
      // Today, format as time
      return DateFormat.jm().format(timestamp);
    } else if (difference.inDays < 7) {
      // Within a week, show day of week
      return DateFormat.E().format(timestamp);
    } else {
      // More than a week ago, show date
      return DateFormat.MMMd().format(timestamp);
    }
  }
}