import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';

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
              if (selectedAppointment.status == AppointmentStatus.scheduled || 
                  selectedAppointment.status == AppointmentStatus.pending) {
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

  Widget _buildAppointmentDetail(BuildContext context, Appointment appointment) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildMainInfoCard(context, appointment),
          const SizedBox(height: 16),
          _buildDescriptionCard(context, appointment),
          const SizedBox(height: 16),
          _buildLocationCard(context, appointment),
          if (appointment.workEvidence != null && appointment.workEvidence!.count > 0) ...[
            const SizedBox(height: 16),
            _buildWorkEvidenceCard(context, appointment),
          ],
          if (appointment.quotationId != null) ...[
            const SizedBox(height: 16),
            _buildQuotationLink(context, appointment),
          ],
          const SizedBox(height: 80), // Bottom padding for action buttons
        ],
      ),
    );
  }

  Widget _buildMainInfoCard(BuildContext context, Appointment appointment) {
    final l10n = S.of(context);
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
                Expanded(
                  child: Text(
                    appointment.title,
                    style: TextStyleTheme.headline3,
                  ),
                ),
                _buildStatusChip(context, appointment.status),
              ],
            ),
            const Divider(height: 32),
            _buildInfoRow(
              context,
              Icons.person,
              l10n.artist,
              appointment.artist.username ?? l10n.artist,
              onTap: () {
                // Navigate to artist profile
                Navigator.pushNamed(
                  context,
                  '/artistProfile',
                  arguments: {'artistId': appointment.artistId},
                );
              },
            ),
            const SizedBox(height: 12),
            _buildInfoRow(
              context,
              Icons.calendar_today,
              l10n.date,
              dateFormat.format(appointment.startDate),
            ),
            const SizedBox(height: 12),
            _buildInfoRow(
              context,
              Icons.access_time,
              l10n.time,
              '${timeFormat.format(appointment.startDate)} - ${timeFormat.format(appointment.endDate)}',
            ),
            const SizedBox(height: 12),
            _buildInfoRow(
              context,
              Icons.hourglass_empty,
              l10n.duration,
              _formatDuration(appointment.startDate, appointment.endDate),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionCard(BuildContext context, Appointment appointment) {
    final l10n = S.of(context);
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.description,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 12),
            Text(
              appointment.title,
              style: TextStyleTheme.bodyText1.copyWith(height: 1.5),
            ),
            ...[
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            Text(
              'Here should be the notes',
              style: TextStyleTheme.subtitle2,
            ),
            const SizedBox(height: 8),
            Text(
              'Here should be the notes',
              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70, height: 1.5),
            ),
          ],
          ],
        ),
      ),
    );
  }

  Widget _buildLocationCard(BuildContext context, Appointment appointment) {
    final l10n = S.of(context);
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.location,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _openMap(
                context,
                appointment.location.lat,
                appointment.location.lng,
                appointment.location.formattedAddress,
              ),
              child: Row(
                children: [
                  const Icon(
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
                          appointment.location.formattedAddress,
                          style: TextStyleTheme.bodyText1.copyWith(
                            color: secondaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        ...[
                        const SizedBox(height: 4),
                        Text(
                          appointment.location.name,
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

  Widget _buildWorkEvidenceCard(BuildContext context, Appointment appointment) {
    final l10n = S.of(context);
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.workEvidence,
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
              itemCount: appointment.workEvidence!.metadata.length,
              itemBuilder: (context, index) {
                final imageUrl = appointment.workEvidence!.metadata[index].url;
                return GestureDetector(
                  onTap: () {
                    // Show fullscreen image viewer
                    _openImageViewer(context, imageUrl, index, appointment.workEvidence!.metadata.map((e) => e.url).toList());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuotationLink(BuildContext context, Appointment appointment) {
    final l10n = S.of(context);
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: InkWell(
        onTap: () {
          // Navigate to quotation detail
          Navigator.pushNamed(
            context, 
            '/quotationDetail',
            arguments: {'quotationId': appointment.quotationId.toString()},
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(
                Icons.description_outlined,
                color: secondaryColor,
                size: 24,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.relatedQuotation,
                      style: TextStyleTheme.subtitle2.copyWith(
                        color: tertiaryColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${l10n.quotationNumber}: #${appointment.quotationId}',
                      style: TextStyleTheme.bodyText1.copyWith(
                        color: secondaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white70,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    BuildContext context,
    IconData icon,
    String title,
    String content,
    {VoidCallback? onTap}
  ) {
    final row = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: tertiaryColor, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: onTap != null
                    ? TextStyleTheme.bodyText1.copyWith(
                        color: secondaryColor,
                        decoration: TextDecoration.underline,
                      )
                    : TextStyleTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        child: row,
      );
    }

    return row;
  }

  Widget _buildStatusChip(BuildContext context, AppointmentStatus status) {
    Color color;
    String text;
    
    switch (status) {
      case AppointmentStatus.scheduled:
        color = Colors.green;
        text = S.of(context).confirmed;
        break;
      case AppointmentStatus.pending:
        color = Colors.orange;
        text = S.of(context).pending;
        break;
      case AppointmentStatus.completed:
        color = Colors.blue;
        text = S.of(context).completed;
        break;
      case AppointmentStatus.canceled:
        color = Colors.red;
        text = S.of(context).canceled;
        break;
      case AppointmentStatus.rescheduled:
        color = Colors.purple;
        text = S.of(context).rescheduled;
        break;
      case AppointmentStatus.inProgress:
        color = Colors.blue;
        text = S.of(context).inProgress;
        break;
      case AppointmentStatus.waitingForPhotos:
        color = Colors.amber;
        text = S.of(context).waitingForPhotos;
        break;
      case AppointmentStatus.waitingForReview:
        color = Colors.purple;
        text = S.of(context).waitingForReview;
        break;
      case AppointmentStatus.reviewed:
        color = Colors.green;
        text = S.of(context).reviewed;
        break;
      default:
        color = Colors.grey;
        text = S.of(context).unknown;
        break;
    }

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

  Widget _buildActionButtons(BuildContext context, Appointment appointment) {
    final bool canCancel = appointment.startDate.isAfter(
      DateTime.now().add(const Duration(hours: 24)),
    );
    
    return Container(
      color: explorerSecondaryColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (appointment.status == AppointmentStatus.scheduled || 
              appointment.status == AppointmentStatus.pending) ...[
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
          ] else if (appointment.status == AppointmentStatus.scheduled) ...[
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

  void _contactArtist(BuildContext context, Appointment appointment) async {
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

  void _showCancelDialog(BuildContext context, Appointment appointment) {
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
                  appointmentId: appointment.id,
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

  void _showRescheduleDialog(BuildContext context, Appointment appointment) {
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

  void _openImageViewer(BuildContext context, String imageUrl, int initialIndex, List<String> images) {
    // Image viewer implementation depends on available packages
    // For now, just show a dialog with the image
    showDialog(
      context: context,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.zero,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Stack(
            children: [
              Center(
                child: InteractiveViewer(
                  panEnabled: true,
                  boundaryMargin: const EdgeInsets.all(20),
                  minScale: 0.5,
                  maxScale: 4,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDuration(DateTime start, DateTime end) {
    final duration = end.difference(start);
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    
    if (hours > 0) {
      return '$hours ${hours == 1 ? S.of(context).hour : S.of(context).hours}${minutes > 0 ? ' $minutes ${minutes == 1 ? S.of(context).minute : S.of(context).minutes}' : ''}';
    } else {
      return '$minutes ${minutes == 1 ? S.of(context).minute : S.of(context).minutes}';
    }
  }
}