import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:inker_studio/ui/shared/event/event_main_info_card.dart';
import 'package:inker_studio/ui/shared/event/event_description_card.dart';
import 'package:inker_studio/ui/shared/event/event_location_card.dart';
import 'package:inker_studio/ui/shared/event/work_evidence_card.dart';
import 'package:inker_studio/ui/shared/event/quotation_details_card.dart';
import 'package:inker_studio/ui/shared/event/event_action_buttons.dart';
import 'package:inker_studio/ui/shared/event/event_section_header.dart';

class AppointmentDetailPage extends StatelessWidget {
  final String appointmentId;

  const AppointmentDetailPage({
    super.key,
    required this.appointmentId,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          l10n.appointmentDetails, 
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          BlocBuilder<AppointmentBloc, AppointmentState>(
            builder: (context, state) {
              final isRefreshing = state.maybeWhen(
                loaded: (_, __, ___, ____, _____, isRefreshing, ______, _______) => isRefreshing,
                orElse: () => false,
              );
              
              return IconButton(
                icon: isRefreshing 
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Icon(Icons.refresh),
                onPressed: isRefreshing ? null : () => _loadAppointmentDetails(context, isRefresh: true),
                tooltip: l10n.refresh,
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.actionSuccessful),
                  backgroundColor: Colors.green,
                ),
              );
              _loadAppointmentDetails(context, isRefresh: true);
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
          // Load data when the state is initial (first time)
          state.maybeWhen(
            initial: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _loadAppointmentDetails(context, isRefresh: false);
              });
            },
            orElse: () {},
          );
          
          return state.maybeWhen(
            loaded: (appointments, currentPage, totalPages, hasReachedMax,
                isLoadingMore, isRefreshing, currentFilter, selectedAppointment) {
              
              if (selectedAppointment == null) {
                return _buildErrorState(context, S.of(context).appointmentNotFound);
              }
              
              return _buildContent(context, selectedAppointment, isRefreshing);
            },
            actionInProgress: () => _buildLoadingState(context),
            error: (message, _) => _buildErrorState(context, message),
            orElse: () => _buildLoadingState(context),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (appointments, currentPage, totalPages, hasReachedMax,
                isLoadingMore, isRefreshing, currentFilter, selectedAppointment) {
              
              if (selectedAppointment == null) {
                return const SizedBox.shrink();
              }
              return _buildActionButtons(context, selectedAppointment);
            },
            actionInProgress: () => const EventActionButtons(actions: [], isLoading: true),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  void _loadAppointmentDetails(BuildContext context, {bool isRefresh = false}) {
    if (isRefresh) {
      context.read<AppointmentBloc>().add(
        AppointmentEvent.refreshAppointmentDetail(appointmentId),
      );
    } else {
      context.read<AppointmentBloc>().add(
        AppointmentEvent.getAppointmentById(appointmentId),
      );
    }
  }

  Widget _buildLoadingState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const InkerProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            S.of(context).loadingAppointmentDetails,
            style: const TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => _loadAppointmentDetails(context, isRefresh: true),
              icon: const Icon(Icons.refresh),
              label: Text(S.of(context).tryAgain),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AppointmentDetailDto detail, bool isRefreshing) {
    final appointment = detail.event;
    final artist = detail.artist;
    final location = detail.location;
    final quotation = detail.quotation;
    final workEvidence = appointment.workEvidence;

    return RefreshIndicator(
      onRefresh: () async {
        _loadAppointmentDetails(context, isRefresh: true);
        
        // Wait for the refresh to complete using a simple delay
        // The UI will update through BlocBuilder when refresh is done
        await Future.delayed(const Duration(milliseconds: 500));
      },
      color: Theme.of(context).colorScheme.secondary,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(), // Ensures pull to refresh works even when content doesn't fill screen
        slivers: [
          SliverToBoxAdapter(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: Column(
                children: [
                  // Main Event Info
                  EventMainInfoCard(
                    title: appointment.title,
                    color: appointment.color,
                    status: appointment.status.toString().split('.').last,
                    startDate: appointment.startDate,
                    endDate: appointment.endDate,
                    artist: artist,
                    onArtistTap: () => _navigateToArtistProfile(context, artist.id),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Description Section
                  EventDescriptionCard(
                    description: appointment.info,
                    notes: appointment.notes,
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Location Section
                  EventLocationCard(
                    location: location,
                    onMapTap: () => _openMap(
                      context,
                      location.lat,
                      location.lng,
                      location.formattedAddress,
                    ),
                  ),
                  
                  // Work Evidence Section
                  if (workEvidence != null && workEvidence.metadata.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    EventSectionHeader(
                      icon: Icons.photo_library,
                      title: S.of(context).workEvidence,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    WorkEvidenceCard(workEvidence: workEvidence),
                  ],
                  
                  // Quotation Section
                  const SizedBox(height: 16),
                  EventSectionHeader(
                    icon: Icons.receipt_long,
                    title: S.of(context).quotationDetails,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  QuotationDetailsCard(quotation: quotation),
                  
                  // Additional Info Section (if needed)
                  if (_hasAdditionalInfo(appointment)) ...[
                    const SizedBox(height: 16),
                    _buildAdditionalInfoCard(context, appointment),
                  ],
                  
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _hasAdditionalInfo(AppointmentEventDto appointment) {
    return appointment.status == AppointmentStatus.canceled ||
           appointment.status == AppointmentStatus.rescheduled;
  }

  Widget _buildAdditionalInfoCard(BuildContext context, AppointmentEventDto appointment) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  S.of(context).additionalInformation,
                  style: TextStyleTheme.subtitle2.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            
            if (appointment.status == AppointmentStatus.canceled) 
              _buildInfoChip(
                context,
                icon: Icons.cancel,
                text: S.of(context).appointmentCanceled,
                color: Colors.red,
              ),
            
            if (appointment.status == AppointmentStatus.rescheduled)
              _buildInfoChip(
                context,
                icon: Icons.update,
                text: S.of(context).appointmentRescheduled,
                color: Colors.purple,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, {
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyleTheme.bodyText2.copyWith(color: color),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, AppointmentDetailDto detail) {
    final appointment = detail.event;
    final artist = detail.artist;
    final l10n = S.of(context);
    
    List<EventActionButton> actions = [];
    
    // Only show actions for active appointments
    if (appointment.status == AppointmentStatus.scheduled ||
        appointment.status == AppointmentStatus.pending) {
      
      // Contact Artist Action
      actions.add(EventActionButton(
        onPressed: () => _showContactOptions(context, artist),
        icon: Icons.message,
        label: l10n.contactArtist,
        color: Theme.of(context).colorScheme.secondary,
      ));
      
      // Cancel/Reschedule Actions based on timing
      final now = DateTime.now();
      final hoursDifference = appointment.startDate.difference(now).inHours;
      
      if (hoursDifference > 24) {
        // Can cancel if more than 24 hours away
        actions.add(EventActionButton(
          onPressed: () => _showCancelDialog(context, detail),
          icon: Icons.cancel,
          label: l10n.cancelAppointment,
          color: redColor,
          isDestructive: true,
        ));
      } else if (hoursDifference > 2) {
        // Can request change if more than 2 hours away
        actions.add(EventActionButton(
          onPressed: () => _showRescheduleDialog(context, detail),
          icon: Icons.update,
          label: l10n.requestChange,
          color: Colors.orange,
        ));
      }
    }
    
    // Review action for completed appointments
    if (appointment.status == AppointmentStatus.completed &&
        appointment.workEvidence != null) {
      actions.add(EventActionButton(
        onPressed: () => _showReviewDialog(context, detail),
        icon: Icons.star_rate,
        label: S.of(context).leaveReview,
        color: Colors.amber,
      ));
    }

    return EventActionButtons(actions: actions);
  }

  // Navigation and utility methods
  void _navigateToArtistProfile(BuildContext context, String artistId) {
    Navigator.pushNamed(
      context,
      '/artistProfile',
      arguments: {'artistId': artistId},
    );
  }

  void _openMap(BuildContext context, double latitude, double longitude, String title) async {
    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isNotEmpty) {
      await availableMaps.first.showMarker(
        coords: Coords(latitude, longitude),
        title: title,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(S.of(context).noMapsApplicationAvailable)),
      );
    }
  }

  // Dialog methods using shared components
  void _showContactOptions(BuildContext context, dynamic artist) {
    final l10n = S.of(context);
    
    showModalBottomSheet(
      context: context,
      backgroundColor: explorerSecondaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle bar
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            
            // Header
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: artist.profileThumbnail != null
                    ? NetworkImage(artist.profileThumbnail!)
                    : null,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  child: artist.profileThumbnail == null
                    ? Text(
                        artist.username?.substring(0, 1).toUpperCase() ?? 'A',
                        style: TextStyleTheme.headline3.copyWith(color: Colors.white),
                      )
                    : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.contactArtist,
                        style: TextStyleTheme.headline3,
                      ),
                      Text(
                        artist.username ?? l10n.artist,
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            
            // Contact options
            if (artist.contact?.email != null)
              _buildContactOption(
                context: context,
                icon: Icons.email,
                title: S.of(context).sendEmail,
                subtitle: artist.contact!.email,
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Launch email
                },
              ),
            
            if (artist.contact?.phone != null)
              _buildContactOption(
                context: context,
                icon: Icons.phone,
                title: S.of(context).callArtist,
                subtitle: artist.contact!.phone,
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Launch phone
                },
              ),
            
            _buildContactOption(
              context: context,
              icon: Icons.chat_bubble_outline,
              title: l10n.sendMessageInApp,
              subtitle: S.of(context).chatDirectlyWithArtist,
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.thisFeatureWillBeAvailableSoon)),
                );
              },
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildContactOption({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Theme.of(context).colorScheme.secondary),
        ),
        title: Text(title, style: TextStyleTheme.subtitle1),
        subtitle: Text(subtitle, style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70)),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void _showCancelDialog(BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);
    
    EventActionDialogs.showTextInputDialog(
      context: context,
      title: l10n.cancelAppointment,
      hintText: l10n.cancellationReason,
      actionText: l10n.confirm,
      actionColor: redColor,
      icon: const Icon(Icons.cancel, color: redColor),
      maxLines: 3,
      required: true,
      onConfirm: (reason) {
        context.read<AppointmentBloc>().add(
          AppointmentEvent.cancelAppointment(
            appointmentId: detail.event.id,
            reason: reason,
          ),
        );
      },
    );
  }

  void _showRescheduleDialog(BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);
    
    EventActionDialogs.showConfirmationDialog(
      context: context,
      title: l10n.changeAppointment,
      content: l10n.changeAppointmentInstruction,
      actionText: l10n.contactArtist,
      actionColor: Theme.of(context).colorScheme.secondary,
      icon: const Icon(Icons.update, color: Colors.orange),
      onConfirm: () => _showContactOptions(context, detail.artist),
    );
  }

  void _showReviewDialog(BuildContext context, AppointmentDetailDto detail) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(S.of(context).reviewFunctionalityComingSoon)),
    );
  }
}
