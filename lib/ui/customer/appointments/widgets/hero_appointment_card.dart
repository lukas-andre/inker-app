import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointment_dto.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/event/unified_confirmation_handler.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:intl/intl.dart';

class HeroAppointmentCard extends StatelessWidget {
  final CustomerAppointmentDto appointment;

  const HeroAppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(appointment.event.status, context);
    final isRequiringAction = appointment.actions.canConfirmEvent || 
                             appointment.actions.canAcceptConsent;
    
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/appointmentDetail',
          arguments: {'appointmentId': appointment.event.id},
        );
      },
      child: Container(
        margin: EdgeInsets.all(
          Responsive.value(context, mobile: 16, tablet: 20, desktop: 24),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isRequiringAction
              ? [
                  statusColor,
                  Color.lerp(statusColor, Theme.of(context).colorScheme.error, 0.3)!,
                ]
              : [
                  statusColor.withOpacity(0.9),
                  statusColor.withOpacity(0.7),
                ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: statusColor.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background pattern with gradient
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.05),
                        Colors.white.withOpacity(0.15),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appointment.contextualInfo.title,
                    style: TextStyleTheme.headline2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.person, color: Colors.white, size: 20),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        appointment.artist.username ?? 'Artista',
                        style: TextStyleTheme.bodyText1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.calendar_today, color: Colors.white, size: 20),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        DateFormat('EEEE d \'de\' MMMM, hh:mm a', 'es_CL').format(appointment.event.startDate),
                        style: TextStyleTheme.bodyText1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              _getStatusIcon(appointment.event.status),
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              _getStatusText(appointment.event.status),
                              style: TextStyleTheme.bodyText2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          appointment.contextualInfo.message,
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (appointment.contextualInfo.tip != null) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.error.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.error.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lightbulb_outline,
                            color: Theme.of(context).colorScheme.error,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              appointment.contextualInfo.tip!,
                              style: TextStyleTheme.bodyText2.copyWith(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  if (appointment.actions.canConfirmEvent)
                    ElevatedButton(
                      onPressed: () {
                        showUnifiedConfirmDialog(
                          context: context,
                          eventId: appointment.event.id,
                          agendaId: appointment.event.agenda!.id,
                          canAcceptConsent: appointment.actions.canAcceptConsent,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Theme.of(context).colorScheme.secondary,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Confirmar Cita',
                            style: TextStyleTheme.button.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.check_circle_outline,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 18,
                          ),
                        ],
                      ),
                    )
                  else if (appointment.availableActions.isNotEmpty)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/appointmentDetail',
                          arguments: {'appointmentId': appointment.event.id},
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Theme.of(context).colorScheme.error,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            S.of(context).viewDetails,
                            style: TextStyleTheme.button.copyWith(
                              color: Theme.of(context).colorScheme.error,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Theme.of(context).colorScheme.error,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
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
      case 'PENDING':
        return const Color(0xFFFF5722);
      case 'WAITING_FOR_PHOTOS':
        return const Color(0xFF00BCD4);
      case 'WAITING_FOR_REVIEW':
        return const Color(0xFF673AB7);
      case 'REVIEWED':
        return const Color(0xFF3F51B5);
      default:
        return Theme.of(context).colorScheme.secondary;
    }
  }
  
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
      case 'PENDING':
        return 'Pendiente';
      case 'WAITING_FOR_PHOTOS':
        return 'Esperando Fotos';
      case 'WAITING_FOR_REVIEW':
        return 'Esperando Reseña';
      case 'REVIEWED':
        return 'Reseñada';
      default:
        return status;
    }
  }
  
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
      case 'PENDING':
        return Icons.hourglass_empty;
      case 'WAITING_FOR_PHOTOS':
        return Icons.photo_camera_outlined;
      case 'WAITING_FOR_REVIEW':
        return Icons.rate_review_outlined;
      case 'REVIEWED':
        return Icons.star;
      default:
        return Icons.event;
    }
  }
} 