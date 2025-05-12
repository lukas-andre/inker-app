import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:inker_studio/ui/shared/event/event_main_info_card.dart';
import 'package:inker_studio/ui/shared/event/event_description_card.dart';
import 'package:inker_studio/ui/shared/event/event_location_card.dart';
import 'package:inker_studio/ui/shared/event/work_evidence_card.dart';
import 'package:inker_studio/ui/shared/event/quotation_details_card.dart';

class AppointmentDetailPage extends StatefulWidget {
  final String appointmentId;

  const AppointmentDetailPage({
    super.key,
    required this.appointmentId,
  });

  @override
  State<AppointmentDetailPage> createState() => _AppointmentDetailPageState();
}

class _AppointmentDetailPageState extends State<AppointmentDetailPage> {
  @override
  void initState() {
    super.initState();
    // Load appointment details
    context.read<AppointmentBloc>().add(
      AppointmentEvent.getAppointmentById(widget.appointmentId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(l10n.appointmentDetails, style: TextStyleTheme.headline2),
        backgroundColor: primaryColor,
        elevation: 1.0,
        shadowColor: Colors.black54,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          // Handle action states like success, failure, etc.
          state.maybeWhen(
            actionSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.actionSuccessful),
                  backgroundColor: Colors.green,
                ),
              );
              // Reload appointment details
              context.read<AppointmentBloc>().add(
                AppointmentEvent.getAppointmentById(widget.appointmentId),
              );
            },
            actionFailed: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error: $message'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (appointments, currentPage, totalPages, hasReachedMax, isLoadingMore, currentFilter, selectedAppointment) {
              if (selectedAppointment == null) {
                return const Center(child: InkerProgressIndicator());
              }
              return _buildAppointmentDetail(context, selectedAppointment);
            },
            actionInProgress: () => const Center(child: InkerProgressIndicator()),
            orElse: () => const Center(child: InkerProgressIndicator()),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (appointments, currentPage, totalPages, hasReachedMax, isLoadingMore, currentFilter, selectedAppointment) {
              if (selectedAppointment == null) {
                return const SizedBox.shrink();
              }
              
              // Only show action buttons for upcoming appointments
              if (selectedAppointment.event.status == AppointmentStatus.scheduled || 
                  selectedAppointment.event.status == AppointmentStatus.pending) {
                return _buildActionButtons(context, selectedAppointment);
              }
              
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildAppointmentDetail(BuildContext context, AppointmentDetailDto detail) {
    final appointment = detail.event;
    final artist = detail.artist;
    final location = detail.location;
    final quotation = detail.quotation;
    final workEvidence = appointment.workEvidence;
    return SingleChildScrollView(
      child: Column(
        children: [
          EventMainInfoCard(
            title: appointment.title,
            color: appointment.color,
            status: appointment.status,
            startDate: appointment.startDate,
            endDate: appointment.endDate,
            artist: artist,
            onArtistTap: () {
              Navigator.pushNamed(
                context,
                '/artistProfile',
                arguments: {'artistId': artist.id},
              );
            },
          ),
          const SizedBox(height: 16),
          EventDescriptionCard(
            description: appointment.info,
            notes: appointment.notes, // Si existe, si no pásale null
          ),
          const SizedBox(height: 16),
          EventLocationCard(
            location: location,
            onMapTap: () => _openMap(
              context,
              location.lat,
              location.lng,
              location.formattedAddress,
            ),
          ),
          if (workEvidence != null && workEvidence.metadata.isNotEmpty) ...[
            const SizedBox(height: 16),
            WorkEvidenceCard(workEvidence: workEvidence),
          ],
          if (quotation != null) ...[
            const SizedBox(height: 16),
            QuotationDetailsCard(quotation: quotation),
          ],
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, AppointmentDetailDto appointment) {
    final bool canCancel = appointment.event.startDate.isAfter(
      DateTime.now().add(const Duration(hours: 24)),
    );
    
    return Container(
      color: explorerSecondaryColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (appointment.event.status == AppointmentStatus.scheduled || 
              appointment.event.status == AppointmentStatus.pending) ...[
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _contactArtist(context, appointment),
                icon: const Icon(Icons.message_outlined, size: 18),
                label: Text(S.of(context).message),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: tertiaryColor),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            const SizedBox(width: 12),
          ],
          if (canCancel) ...[
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => _showCancelDialog(context, appointment),
                icon: const Icon(Icons.cancel_outlined, size: 18),
                label: Text(S.of(context).cancel),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ] else if (appointment.event.status == AppointmentStatus.scheduled) ...[
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => _showRescheduleDialog(context, appointment),
                icon: const Icon(Icons.update, size: 18),
                label: Text(S.of(context).requestChange),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _contactArtist(BuildContext context, AppointmentDetailDto appointment) async {
    // Get artist contact info
    final artist = appointment.artist;
    final String artistName = artist.username ?? S.of(context).artist;
    final artistContact = artist.contact;
    
    // Open contact options dialog
    showModalBottomSheet(
      context: context,
      backgroundColor: explorerSecondaryColor,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(S.of(context).contactArtist),
            subtitle: Text(artistName),
          ),
          const Divider(),
          if (artistContact != null)
            ListTile(
              leading: const Icon(Icons.email),
              title: Text(artistContact.email),
              onTap: () async {
                final url = 'mailto:${artistContact.email}';
                // if (await canLaunchUrlString(url)) {
                //   await launchUrlString(url);
                // }
                if (context.mounted) Navigator.pop(context);
              },
            ),
          if (artistContact != null)
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text(artistContact.phone),
              onTap: () async {
                final url = 'tel:${artistContact.phone}';
                // if (await canLaunchUrlString(url)) {
                //   await launchUrlString(url);
                // }
                if (context.mounted) Navigator.pop(context);
              },
            ),
          ListTile(
            leading: const Icon(Icons.chat_bubble_outline),
            title: Text(S.of(context).sendMessageInApp),
            onTap: () {
              Navigator.pop(context);
              // Navigate to chat with artist (placeholder)
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).thisFeatureWillBeAvailableSoon)),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _showCancelDialog(BuildContext context, AppointmentDetailDto appointment) {
    final reasonController = TextEditingController();
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(S.of(context).cancelAppointment),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).cancelAppointmentConfirmation),
            const SizedBox(height: 16),
            TextField(
              controller: reasonController,
              decoration: InputDecoration(
                labelText: S.of(context).cancellationReason,
                border: const OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(S.of(context).cancel),
          ),
          ElevatedButton(
            onPressed: () {
              if (reasonController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(S.of(context).pleaseProvideReason)),
                );
                return;
              }
              
              Navigator.pop(context);
              context.read<AppointmentBloc>().add(
                AppointmentEvent.cancelAppointment(
                  appointmentId: appointment.event.id,
                  reason: reasonController.text.trim(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(S.of(context).confirm),
          ),
        ],
      ),
    );
  }

  void _showRescheduleDialog(BuildContext context, AppointmentDetailDto appointment) {
    // This would ideally use a date picker with the schedule assistant
    // For now, we'll just show a dialog with a message about contacting the artist
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(S.of(context).changeAppointment),
        content: Text(S.of(context).changeAppointmentInstruction),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(S.of(context).cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _contactArtist(context, appointment);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
            ),
            child: Text(S.of(context).contactArtist),
          ),
        ],
      ),
    );
  }

  void _openMap(BuildContext context, double latitude, double longitude, String title) async {
    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isNotEmpty) {
      await availableMaps.first.showMarker(
        coords: Coords(latitude, longitude),
        title: title,
      );
    }
  }
}