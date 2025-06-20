import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointment_dto.dart';
import 'package:inker_studio/ui/shared/event/unified_confirmation_handler.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:intl/intl.dart';

class AppointmentGroupList extends StatelessWidget {
  final String title;
  final List<CustomerAppointmentDto> appointments;
  final String emptyMessage;

  const AppointmentGroupList({
    super.key,
    required this.title,
    required this.appointments,
    this.emptyMessage = 'No hay citas en esta categoría.',
  });

  @override
  Widget build(BuildContext context) {
    if (appointments.isEmpty) {
      // Don't show the title if the list is empty
      return const SizedBox.shrink();
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Text(
            title,
            style: TextStyleTheme.subtitle1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ListView.builder(
          itemCount: appointments.length,
          shrinkWrap: true, // Important for nested lists
          physics: const NeverScrollableScrollPhysics(), // Important for nested lists
          itemBuilder: (context, index) {
            final appointmentDto = appointments[index];
            final canConfirm = appointmentDto.actions.canConfirmEvent;

            final statusColor = _getStatusColor(appointmentDto.event.status, context);
            final cardColor = _getCardBackgroundColor(appointmentDto.event.status);
            
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: Responsive.value(context, mobile: 16, tablet: 20, desktop: 24),
                vertical: 6,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    cardColor,
                    Color.lerp(cardColor, statusColor, 0.05)!,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: statusColor.withOpacity(0.25),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: statusColor.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/appointmentDetail',
                      arguments: {'appointmentId': appointmentDto.event.id},
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(
                      Responsive.value(context, mobile: 12, tablet: 16, desktop: 18),
                    ),
                    child: Row(
                      children: [
                        // Status indicator
                        Container(
                          width: 4,
                          height: 50,
                          decoration: BoxDecoration(
                            color: statusColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                appointmentDto.event.title,
                                style: TextStyleTheme.bodyText1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: Responsive.value(context, mobile: 14, tablet: 15, desktop: 16),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    size: 14,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    appointmentDto.artist.username ?? 'Artista',
                                    style: TextStyleTheme.bodyText2.copyWith(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 14,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    DateFormat('d MMM, hh:mm a', 'es_CL').format(appointmentDto.event.startDate),
                                    style: TextStyleTheme.bodyText2.copyWith(
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                              // Show status badge
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: statusColor.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: statusColor.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      _getStatusIcon(appointmentDto.event.status),
                                      size: 12,
                                      color: statusColor,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      _getStatusText(appointmentDto.event.status),
                                      style: TextStyleTheme.caption.copyWith(
                                        color: statusColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Action button
                        if (canConfirm)
                          ElevatedButton(
                            onPressed: () {
                              showUnifiedConfirmDialog(
                                context: context,
                                eventId: appointmentDto.event.id,
                                agendaId: appointmentDto.event.agenda!.id,
                                canAcceptConsent: appointmentDto.actions.canAcceptConsent,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4CAF50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                              elevation: 0,
                            ),
                            child: Text(
                              'Confirmar',
                              style: TextStyleTheme.button.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
  
  // Helper method to get appropriate color for status
  Color _getStatusColor(String status, BuildContext context) {
    switch (status.toUpperCase()) {
      case 'SCHEDULED':
      case 'CONFIRMED':
        return const Color(0xFF4CAF50);
      case 'IN_PROGRESS':
        return const Color(0xFFFF9800);
      case 'COMPLETED':
        return const Color(0xFF2196F3);
      case 'CANCELLED':
      case 'CANCELED':
        return redColor;
      case 'RESCHEDULED':
        return const Color(0xFF9C27B0);
      case 'NO_SHOW':
        return const Color(0xFFE91E63);
      case 'WAITING_FOR_PHOTOS':
        return const Color(0xFF00BCD4);
      case 'WAITING_FOR_REVIEW':
        return const Color(0xFF673AB7);
      case 'REVIEWED':
        return const Color(0xFF3F51B5);
      case 'PENDING':
        return const Color(0xFFFF5722);
      default:
        return Theme.of(context).colorScheme.secondary;
    }
  }
  
  // Helper method to get user-friendly status text
  String _getStatusText(String status) {
    switch (status.toUpperCase()) {
      case 'SCHEDULED':
        return 'Programada';
      case 'CONFIRMED':
        return 'Confirmada';
      case 'IN_PROGRESS':
        return 'En Progreso';
      case 'COMPLETED':
        return 'Completada';
      case 'CANCELLED':
      case 'CANCELED':
        return 'Cancelada';
      case 'RESCHEDULED':
        return 'Reprogramada';
      case 'NO_SHOW':
        return 'No asistió';
      case 'WAITING_FOR_PHOTOS':
        return 'Esperando Fotos';
      case 'WAITING_FOR_REVIEW':
        return 'Esperando Reseña';
      case 'REVIEWED':
        return 'Reseñada';
      case 'PENDING':
        return 'Pendiente';
      default:
        return status;
    }
  }
  
  // Helper method to get status icon
  IconData _getStatusIcon(String status) {
    switch (status.toUpperCase()) {
      case 'SCHEDULED':
        return Icons.check_circle_outline;
      case 'CONFIRMED':
        return Icons.verified;
      case 'IN_PROGRESS':
        return Icons.pending_actions;
      case 'COMPLETED':
        return Icons.task_alt;
      case 'CANCELLED':
      case 'CANCELED':
        return Icons.cancel_outlined;
      case 'RESCHEDULED':
        return Icons.update;
      case 'NO_SHOW':
        return Icons.person_off;
      case 'WAITING_FOR_PHOTOS':
        return Icons.photo_camera_outlined;
      case 'WAITING_FOR_REVIEW':
        return Icons.rate_review_outlined;
      case 'REVIEWED':
        return Icons.star;
      case 'PENDING':
        return Icons.hourglass_empty;
      default:
        return Icons.event;
    }
  }
  
  // Helper method to get card background color
  Color _getCardBackgroundColor(String status) {
    final baseColor = explorerSecondaryColor;
    
    switch (status.toUpperCase()) {
      case 'SCHEDULED':
      case 'CONFIRMED':
        return Color.lerp(baseColor, const Color(0xFF4CAF50), 0.03)!;
      case 'IN_PROGRESS':
        return Color.lerp(baseColor, const Color(0xFFFF9800), 0.03)!;
      case 'COMPLETED':
        return Color.lerp(baseColor, const Color(0xFF2196F3), 0.03)!;
      case 'CANCELLED':
      case 'CANCELED':
        return Color.lerp(baseColor, redColor, 0.03)!;
      case 'PENDING':
        return Color.lerp(baseColor, const Color(0xFFFF5722), 0.03)!;
      case 'WAITING_FOR_PHOTOS':
      case 'WAITING_FOR_REVIEW':
        return Color.lerp(baseColor, const Color(0xFF673AB7), 0.03)!;
      default:
        return baseColor;
    }
  }
} 