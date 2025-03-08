import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/generated/l10n.dart';
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
              data.event.info,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => _showNotesDialog(context, data),
                  icon: const Icon(Icons.note_add, color: Colors.white),
                  label: Text(
                    'Añadir Notas',
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
                  onPressed: () => _showRescheduleDialog(context, data),
                  icon: const Icon(Icons.schedule, color: Colors.white),
                  label: Text(
                    'Reprogramar',
                    style: TextStyleTheme.button,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
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
        ],
      ),
    );
  }
  
  void _showNotesDialog(BuildContext context, AgendaEventDetailResponse data) {
    final TextEditingController notesController = TextEditingController();
    notesController.text = data.event.notes ?? '';
    final bloc = context.read<ArtistAgendaEventDetailBloc>();
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        title: Text(
          'Notas de la Cita',
          style: TextStyleTheme.subtitle1,
        ),
        content: TextField(
          controller: notesController,
          style: TextStyleTheme.bodyText1,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Añade notas sobre la cita...',
            hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white54),
            fillColor: primaryColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancelar',
              style: TextStyleTheme.button.copyWith(color: Colors.white70),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Save notes logic
              bloc.add(ArtistAgendaEventDetailEvent.updateNotes(
                agendaId: 1, // Replace with actual agenda ID
                eventId: data.event.id,
                notes: notesController.text,
              ));
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Notas guardadas correctamente'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
            ),
            child: Text(
              'Guardar',
              style: TextStyleTheme.button,
            ),
          ),
        ],
      ),
    );
  }
  
  void _showRescheduleDialog(BuildContext context, AgendaEventDetailResponse data) {
    final TextEditingController reasonController = TextEditingController();
    DateTime? newStartDate = data.event.start;
    DateTime? newEndDate = data.event.end;
    final difference = data.event.end.difference(data.event.start);
    final bloc = context.read<ArtistAgendaEventDetailBloc>();
    
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            backgroundColor: explorerSecondaryColor,
            title: Text(
              'Reprogramar Cita',
              style: TextStyleTheme.subtitle1,
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fecha y hora actual:',
                    style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${DateFormat('d MMM yyyy, HH:mm').format(data.event.start)} - ${DateFormat('HH:mm').format(data.event.end)}',
                    style: TextStyleTheme.bodyText1,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Nueva fecha:',
                    style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: newStartDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                        builder: (context, child) {
                          return Theme(
                            data: ThemeData.dark().copyWith(
                              colorScheme: ColorScheme.dark(
                                primary: secondaryColor,
                                onPrimary: Colors.white,
                                surface: primaryColor,
                                onSurface: Colors.white,
                              ),
                              dialogBackgroundColor: primaryColor,
                            ),
                            child: child!,
                          );
                        },
                      );
                      
                      if (date != null) {
                        setState(() {
                          newStartDate = DateTime(
                            date.year,
                            date.month,
                            date.day,
                            newStartDate?.hour ?? 0,
                            newStartDate?.minute ?? 0,
                          );
                          newEndDate = newStartDate?.add(difference) ?? newStartDate;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: secondaryColor),
                          const SizedBox(width: 8),
                          Text(
                            DateFormat('d MMMM yyyy').format(newStartDate ?? DateTime.now()),
                            style: TextStyleTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Nueva hora de inicio:',
                    style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(newStartDate ?? DateTime.now()),
                        builder: (context, child) {
                          return Theme(
                            data: ThemeData.dark().copyWith(
                              colorScheme: ColorScheme.dark(
                                primary: secondaryColor,
                                onPrimary: Colors.white,
                                surface: primaryColor,
                                onSurface: Colors.white,
                              ),
                              dialogBackgroundColor: primaryColor,
                            ),
                            child: child!,
                          );
                        },
                      );
                      
                      if (time != null) {
                        setState(() {
                          newStartDate = DateTime(
                            newStartDate?.year ?? DateTime.now().year,
                            newStartDate?.month ?? DateTime.now().month,
                            newStartDate?.day ?? DateTime.now().day,
                            time.hour,
                            time.minute,
                          );
                          newEndDate = newStartDate?.add(difference) ?? newStartDate;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.access_time, color: secondaryColor),
                          const SizedBox(width: 8),
                          Text(
                            DateFormat('HH:mm').format(newStartDate ?? DateTime.now()),
                            style: TextStyleTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Nueva hora de finalización:',
                    style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(newEndDate ?? DateTime.now()),
                        builder: (context, child) {
                          return Theme(
                            data: ThemeData.dark().copyWith(
                              colorScheme: ColorScheme.dark(
                                primary: secondaryColor,
                                onPrimary: Colors.white,
                                surface: primaryColor,
                                onSurface: Colors.white,
                              ),
                              dialogBackgroundColor: primaryColor,
                            ),
                            child: child!,
                          );
                        },
                      );
                      
                      if (time != null) {
                        setState(() {
                          newEndDate = DateTime(
                            newEndDate?.year ?? DateTime.now().year,
                            newEndDate?.month ?? DateTime.now().month,
                            newEndDate?.day ?? DateTime.now().day,
                            time.hour,
                            time.minute,
                          );
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.access_time, color: secondaryColor),
                          const SizedBox(width: 8),
                          Text(
                            DateFormat('HH:mm').format(newEndDate ?? DateTime.now()),
                            style: TextStyleTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: reasonController,
                    style: TextStyleTheme.bodyText1,
                    decoration: InputDecoration(
                      labelText: 'Motivo de reprogramación',
                      labelStyle: TextStyleTheme.caption.copyWith(color: Colors.white70),
                      fillColor: primaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Cancelar',
                  style: TextStyleTheme.button.copyWith(color: Colors.white70),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Reschedule the event
                  bloc.add(ArtistAgendaEventDetailEvent.rescheduleEvent(
                    agendaId: 1, // Replace with actual agenda ID
                    eventId: data.event.id,
                    newStartDate: newStartDate ?? DateTime.now(),
                    newEndDate: newEndDate ?? DateTime.now(),
                    reason: reasonController.text.isNotEmpty 
                        ? reasonController.text 
                        : null,
                  ));
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Cita reprogramada correctamente'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                ),
                child: Text(
                  'Reprogramar',
                  style: TextStyleTheme.button,
                ),
              ),
            ],
          );
        },
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
