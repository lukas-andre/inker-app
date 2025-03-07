import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;
  final VoidCallback onTap;

  const AppointmentCard({
    Key? key,
    required this.appointment,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('EEEE d MMM, yyyy', Intl.defaultLocale);
    final DateFormat timeFormat = DateFormat('HH:mm', Intl.defaultLocale);
    
    // Determine if appointment is in the past
    final bool isPastAppointment = appointment.endDate.isBefore(DateTime.now());
    
    // Get artist image or placeholder
    Widget artistImage;
    if (appointment.artist.profileThumbnail != null) {
      artistImage = CircleAvatar(
        backgroundImage: NetworkImage(appointment.artist.profileThumbnail!),
        radius: 24,
      );
    } else {
      artistImage = CircleAvatar(
        backgroundColor: Colors.grey[700],
        radius: 24,
        child: Text(
          appointment.artist.username?.substring(0, 1).toUpperCase() ?? '',
          style: TextStyleTheme.headline3.copyWith(color: Colors.white),
        ),
      );
    }
    
    // Determine status badge color and text
    Color statusColor;
    IconData statusIcon;
    
    switch (appointment.status) {
      case AppointmentStatus.scheduled:
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        break;
      case AppointmentStatus.inProgress:
        statusColor = Colors.amber;
        statusIcon = Icons.pending_actions;
        break;
      case AppointmentStatus.completed:
        statusColor = Colors.blue;
        statusIcon = Icons.task_alt;
        break;
      case AppointmentStatus.canceled:
        statusColor = Colors.red;
        statusIcon = Icons.cancel;
        break;
      case AppointmentStatus.rescheduled:
        statusColor = Colors.purple;
        statusIcon = Icons.update;
        break;
      case AppointmentStatus.waitingForPhotos:
        statusColor = Colors.cyan;
        statusIcon = Icons.image_search;
        break;
      case AppointmentStatus.waitingForReview:
        statusColor = Colors.deepPurple;
        statusIcon = Icons.rate_review;
        break;
      case AppointmentStatus.reviewed:
        statusColor = Colors.indigo;
        statusIcon = Icons.thumb_up;
        break;
      case AppointmentStatus.pending:
        statusColor = Colors.orange;
        statusIcon = Icons.watch_later;
        break;
    }
    
    // For unread appointments, show a notification dot
    final bool isUnread = appointment.readByCustomer == false;
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: explorerSecondaryColor,
      elevation: isUnread ? 3 : 1,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  artistImage,
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                appointment.artist.username ?? 'noname',
                                style: TextStyleTheme.subtitle1.copyWith(
                                  color: isUnread ? Colors.white : Colors.white70,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (isUnread)
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          appointment.title,
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: isUnread ? Colors.white : Colors.white70,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: tertiaryColor,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            dateFormat.format(appointment.startDate),
                            style: TextStyleTheme.caption.copyWith(
                              color: isPastAppointment ? Colors.white60 : Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: tertiaryColor,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${timeFormat.format(appointment.startDate)} - ${timeFormat.format(appointment.endDate)}',
                        style: TextStyleTheme.caption.copyWith(
                          color: isPastAppointment ? Colors.white60 : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: tertiaryColor,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        appointment.location.name,
                        style: TextStyleTheme.caption.copyWith(
                          color: isPastAppointment ? Colors.white60 : Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        statusIcon,
                        size: 16,
                        color: statusColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        _getStatusText(appointment.status),
                        style: TextStyleTheme.caption.copyWith(
                          color: statusColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getStatusText(AppointmentStatus status) {
    switch (status) {
      case AppointmentStatus.scheduled:
        return 'Programado';
      case AppointmentStatus.inProgress:
        return 'En progreso';
      case AppointmentStatus.completed:
        return 'Completado';
      case AppointmentStatus.canceled:
        return 'Cancelado';
      case AppointmentStatus.rescheduled:
        return 'Reprogramado';
      case AppointmentStatus.waitingForPhotos:
        return 'Esperando fotos';
      case AppointmentStatus.waitingForReview:
        return 'Esperando reseña';
      case AppointmentStatus.reviewed:
        return 'Reseñado';
      case AppointmentStatus.pending:
        return 'Pendiente';
    }
  }
}