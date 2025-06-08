import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointment_dto.dart';
import 'package:inker_studio/ui/shared/event/unified_confirmation_handler.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
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

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              color: Theme.of(context).colorScheme.surface.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                title: Text(
                  appointmentDto.event.title,
                  style: TextStyleTheme.bodyText1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appointmentDto.artist.username ?? 'Artista',
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      DateFormat('d MMM, hh:mm a', 'es_CL').format(appointmentDto.event.startDate),
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                trailing: canConfirm
                    ? ElevatedButton(
                        onPressed: () {
                          showUnifiedConfirmDialog(
                            context: context,
                            eventId: appointmentDto.event.id,
                            agendaId: appointmentDto.event.agenda!.id,
                            canAcceptConsent: appointmentDto.actions.canAcceptConsent,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                        child: Text(
                          'Confirmar',
                          style: TextStyleTheme.button.copyWith(fontSize: 12),
                        ),
                      )
                    : null,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/appointmentDetail',
                    arguments: {'appointmentId': appointmentDto.event.id},
                  );
                },
              ),
            );
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
} 