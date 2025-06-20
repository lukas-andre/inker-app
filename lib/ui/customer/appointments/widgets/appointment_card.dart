import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:intl/intl.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;
  final VoidCallback onTap;

  const AppointmentCard({
    super.key,
    required this.appointment,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('EEEE d MMM, yyyy', Intl.defaultLocale);
    final DateFormat timeFormat = DateFormat('HH:mm', Intl.defaultLocale);
    
    // Determine if appointment is in the past
    final bool isPastAppointment = appointment.endDate.isBefore(DateTime.now());
    
    // For unread appointments, show a notification dot
    final bool isUnread = appointment.readByCustomer == false;
    
    // Get status info for styling
    final statusInfo = _getStatusInfo(appointment.status, context);
    final statusColor = statusInfo['color'] as Color;
    
    // Get artist image or placeholder
    Widget artistImage;
    if (appointment.artist.profileThumbnail != null) {
      artistImage = Hero(
        tag: 'artist-${appointment.artist.id}-${appointment.id}',
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.network(
              appointment.artist.profileThumbnail!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => _buildAvatarPlaceholder(),
            ),
          ),
        ),
      );
    } else {
      artistImage = _buildAvatarPlaceholder();
    }
    
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: statusColor.withOpacity(0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: statusColor.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
          if (isUnread)
            BoxShadow(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.15),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: _getCardBackgroundColor(appointment.status, isPastAppointment),
          child: InkWell(
            onTap: onTap,
            splashColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            highlightColor: Theme.of(context).colorScheme.secondary.withOpacity(0.05),
            child: Stack(
              children: [
                // Status indicator bar with enhanced gradient
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          statusColor,
                          statusColor.withOpacity(0.7),
                          statusColor.withOpacity(0.3),
                        ],
                        stops: const [0.0, 0.5, 1.0],
                      ),
                    ),
                  ),
                ),
                
                // Card content
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header with artist info
                      Row(
                        children: [
                          artistImage,
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        appointment.artist.username ?? 'Artist',
                                        style: TextStyleTheme.headline3.copyWith(
                                          color: isUnread 
                                            ? Theme.of(context).colorScheme.secondary 
                                            : const Color(0xFFF2F2F2),
                                          fontSize: 16,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    if (isUnread)
                                      Container(
                                        margin: const EdgeInsets.only(left: 8),
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.tertiary,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          S.of(context).n,
                                          style: TextStyleTheme.caption.copyWith(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  appointment.title,
                                  style: TextStyleTheme.bodyText2.copyWith(
                                    color: const Color(0xFFF2F2F2).withOpacity(0.8),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // Date and time section with icons
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: statusColor.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: statusColor.withOpacity(0.15),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.calendar_today,
                                    size: 16,
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    dateFormat.format(appointment.startDate),
                                    style: TextStyleTheme.bodyText2.copyWith(
                                      color: isPastAppointment 
                                        ? const Color(0xFFF2F2F2).withOpacity(0.5) 
                                        : const Color(0xFFF2F2F2),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary.withOpacity(0.2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.access_time,
                                    size: 16,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  '${timeFormat.format(appointment.startDate)} - ${timeFormat.format(appointment.endDate)}',
                                  style: TextStyleTheme.bodyText2.copyWith(
                                    color: isPastAppointment 
                                      ? const Color(0xFFF2F2F2).withOpacity(0.5) 
                                      : const Color(0xFFF2F2F2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Footer with location and status
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Location
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 18,
                                  color: Theme.of(context).colorScheme.tertiary.withOpacity(0.8),
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(
                                    appointment.location.name,
                                    style: TextStyleTheme.caption.copyWith(
                                      color: const Color(0xFFF2F2F2).withOpacity(0.7),
                                      fontSize: 13,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Status badge with enhanced styling
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  statusColor.withOpacity(0.15),
                                  statusColor.withOpacity(0.25),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: statusColor.withOpacity(0.4),
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  statusInfo['icon'] as IconData,
                                  size: 14,
                                  color: statusInfo['color'] as Color,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  statusInfo['text'] as String,
                                  style: TextStyleTheme.caption.copyWith(
                                    color: statusInfo['color'] as Color,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarPlaceholder() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            secondaryColor.withOpacity(0.8),
            secondaryColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          appointment.artist.username?.substring(0, 1).toUpperCase() ?? 'A',
          style: TextStyleTheme.headline2.copyWith(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> _getStatusInfo(AppointmentStatus status, BuildContext context) {
    switch (status) {
      case AppointmentStatus.scheduled:
        return {
          'color': const Color(0xFF4CAF50),
          'icon': Icons.check_circle_outline,
          'text': S.of(context).scheduled,
        };
      case AppointmentStatus.confirmed:
        return {
          'color': const Color(0xFF4CAF50),
          'icon': Icons.verified,
          'text': S.of(context).confirmed,
        };
      case AppointmentStatus.inProgress:
        return {
          'color': const Color(0xFFFF9800),
          'icon': Icons.pending_actions,
          'text': S.of(context).inProgress,
        };
      case AppointmentStatus.completed:
        return {
          'color': const Color(0xFF2196F3),
          'icon': Icons.task_alt,
          'text': S.of(context).completed,
        };
      case AppointmentStatus.canceled:
        return {
          'color': redColor,
          'icon': Icons.cancel_outlined,
          'text': S.of(context).canceled,
        };
      case AppointmentStatus.rescheduled:
        return {
          'color': const Color(0xFF9C27B0),
          'icon': Icons.update,
          'text': S.of(context).rescheduled,
        };
      case AppointmentStatus.waitingForPhotos:
        return {
          'color': const Color(0xFF00BCD4),
          'icon': Icons.photo_camera_outlined,
          'text': S.of(context).waitingForPhotos,
        };
      case AppointmentStatus.waitingForReview:
        return {
          'color': const Color(0xFF673AB7),
          'icon': Icons.rate_review_outlined,
          'text': S.of(context).waitingForReview,
        };
      case AppointmentStatus.reviewed:
        return {
          'color': const Color(0xFF3F51B5),
          'icon': Icons.star,
          'text': S.of(context).reviewed,
        };
      case AppointmentStatus.pending:
        return {
          'color': const Color(0xFFFF5722),
          'icon': Icons.hourglass_empty,
          'text': S.of(context).pending,
        };
    }
  }
  
  Color _getCardBackgroundColor(AppointmentStatus status, bool isPast) {
    final baseColor = explorerSecondaryColor;
    if (isPast) {
      return baseColor.withOpacity(0.7);
    }
    
    // Add subtle tint based on status
    switch (status) {
      case AppointmentStatus.scheduled:
      case AppointmentStatus.confirmed:
        return Color.lerp(baseColor, const Color(0xFF4CAF50), 0.03)!;
      case AppointmentStatus.inProgress:
        return Color.lerp(baseColor, const Color(0xFFFF9800), 0.03)!;
      case AppointmentStatus.completed:
        return Color.lerp(baseColor, const Color(0xFF2196F3), 0.03)!;
      case AppointmentStatus.canceled:
        return Color.lerp(baseColor, redColor, 0.03)!;
      case AppointmentStatus.pending:
        return Color.lerp(baseColor, const Color(0xFFFF5722), 0.03)!;
      case AppointmentStatus.waitingForPhotos:
      case AppointmentStatus.waitingForReview:
        return Color.lerp(baseColor, const Color(0xFF673AB7), 0.03)!;
      default:
        return baseColor;
    }
  }
}