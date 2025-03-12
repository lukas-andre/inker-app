import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class AgendaEventDetailPage extends StatelessWidget {
  final int eventId;

  const AgendaEventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ArtistAgendaEventDetailBloc>();
    bloc.add(ArtistAgendaEventDetailEvent.started(eventId));

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          S.of(context).eventDetails,
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: primaryColor,
        elevation: 1.0,
        shadowColor: Colors.black54,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocBuilder<ArtistAgendaEventDetailBloc,
          ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
                child: CircularProgressIndicator(color: Colors.white)),
            loading: () => const Center(
                child: CircularProgressIndicator(color: Colors.white)),
            loaded: (data) => _buildContent(context, data),
            error: (message) => Center(
              child: Text(
                'Error loading event details: $message',
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ArtistAgendaEventDetailBloc,
          ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (data) => !data.event.done
                ? _buildActionButtons(context, data)
                : const SizedBox(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, AgendaEventDetailResponse data) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildMainEventCard(context, data),
          const SizedBox(height: 16),
          _buildDescriptionCard(context, data),
          if (data.event.workEvidence != null) ...[
            const SizedBox(height: 16),
            _buildWorkEvidenceCard(context, data),
          ],
          const SizedBox(height: 16),
          _buildLocationCard(context, data),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildMainEventCard(
      BuildContext context, AgendaEventDetailResponse data) {
    final DateFormat dateFormat = DateFormat('d MMMM yyyy', Intl.defaultLocale);
    final DateFormat timeFormat = DateFormat('HH:mm', Intl.defaultLocale);

    return Card(
      margin: const EdgeInsets.all(16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(
                        int.parse(data.event.color.replaceAll('#', '0xFF'))),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    data.event.title,
                    style: TextStyleTheme.headline3,
                  ),
                ),
                _StatusChip(isDone: data.event.done),
              ],
            ),
            const Divider(height: 32),
            _InfoRow(
              icon: Icons.calendar_today,
              title: S.of(context).date,
              content: dateFormat.format(data.event.start),
            ),
            const SizedBox(height: 12),
            _InfoRow(
              icon: Icons.access_time,
              title: S.of(context).time,
              content:
                  '${timeFormat.format(data.event.start)} - ${timeFormat.format(data.event.end)}',
            ),
            if (data.event.quotationId != null) ...[
              const SizedBox(height: 12),
              _InfoRow(
                icon: Icons.description_outlined,
                title: S.of(context).quotationNumber,
                content: '#${data.event.quotationId}',
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionCard(
      BuildContext context, AgendaEventDetailResponse data) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).description,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 12),
            Text(
              data.event.info ?? 'No hay descripción :(',
              style: TextStyleTheme.bodyText1.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkEvidenceCard(
      BuildContext context, AgendaEventDetailResponse data) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).workEvidence,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: data.event.workEvidence!.metadata.length,
              itemBuilder: (context, index) {
                final metadata = data.event.workEvidence!.metadata[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    metadata.url,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationCard(
      BuildContext context, AgendaEventDetailResponse data) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).location,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _openMap(
                context,
                data.location.lat,
                data.location.lng,
                data.location.formattedAddress,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: secondaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.location.formattedAddress,
                          style: TextStyleTheme.bodyText1.copyWith(
                            color: secondaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        if (data.location.name != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            data.location.name!,
                            style: TextStyleTheme.caption.copyWith(
                              color: tertiaryColor,
                            ),
                          ),
                        ],
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

  Widget _buildActionButtons(
      BuildContext context, AgendaEventDetailResponse data) {
    return Container(
      color: explorerSecondaryColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () => _navigateToEditEvent(context, data),
              icon: const Icon(Icons.edit, color: Colors.white),
              label: Text(
                S.of(context).edit,
                style: TextStyleTheme.button,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.cancel, color: Colors.white),
              label: Text(
                S.of(context).cancel,
                style: TextStyleTheme.button,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
  

  void _openMap(BuildContext context, double latitude, double longitude,
      String title) async {
    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isNotEmpty) {
      await availableMaps.first.showMarker(
        coords: Coords(latitude, longitude),
        title: title,
      );
    }
  }
  
  void _navigateToEditEvent(BuildContext context, AgendaEventDetailResponse data) {
    // Show alert dialog with warning about customer reselection
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        title: Text(
          S.of(context).edit,
          style: TextStyleTheme.subtitle1,
        ),
        content: Text(
          'Al editar este evento, deberás volver a seleccionar el cliente. ¿Deseas continuar?',
          style: TextStyleTheme.bodyText1,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              S.of(context).cancel,
              style: TextStyleTheme.button.copyWith(color: Colors.white70),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(dialogContext); // Close dialog
              
              // Convert AgendaEventDetailResponse to ArtistAgendaEventDetails
              final eventDetails = _convertToEventDetails(data);
              
              // Navigate to the edit page with required bloc providers
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider.value(
                        value: context.read<ArtistAgendaCreateEventBloc>(),
                      ),
                      BlocProvider.value(
                        value: context.read<AvailableTimeSlotsBloc>(),
                      ),
                    ],
                    child: EventFormPage.edit(
                      eventToEdit: eventDetails,
                      title: S.of(context).editEvent,
                    ),
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
            ),
            child: Text(
              S.of(context).confirm,
              style: TextStyleTheme.button,
            ),
          ),
        ],
      ),
    );
  }
  
  // Helper method to convert AgendaEventDetailResponse to ArtistAgendaEventDetails
  ArtistAgendaEventDetails _convertToEventDetails(AgendaEventDetailResponse data) {
    return ArtistAgendaEventDetails(
      id: data.event.id.toString(),
      title: data.event.title,
      description: data.event.info ?? '',
      startDate: data.event.start,
      endDate: data.event.end,
      location: data.location.formattedAddress,
      notes: data.event.notes,
      // Note: We can also store the customerId for potential use in the form
      // but we don't directly pass a CustomerDTO object
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: tertiaryColor, size: 20),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
            ),
            const SizedBox(height: 4),
            Text(
              content,
              style: TextStyleTheme.bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  final bool isDone;

  const _StatusChip({required this.isDone});

  @override
  Widget build(BuildContext context) {
    final color = isDone ? Colors.green : Colors.orange;
    final text = isDone ? S.of(context).completed : S.of(context).upcomming;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color),
      ),
      child: Text(
        text,
        style: TextStyleTheme.caption.copyWith(color: color),
      ),
    );
  }
}
