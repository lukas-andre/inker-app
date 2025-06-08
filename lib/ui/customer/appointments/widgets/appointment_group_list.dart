import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointment_dto.dart';
import 'package:inker_studio/ui/customer/appointments/widgets/appointment_card.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

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
            // We need to convert CustomerAppointmentDto back to Appointment for the old card
            // This is a temporary step until we refactor the card itself.
            // For now, let's just show the title. A full conversion is complex.
            // A better approach is to adapt AppointmentCard to take a CustomerAppointmentDto.
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
                subtitle: Text(
                  appointmentDto.artist.username ?? 'Artista',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
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