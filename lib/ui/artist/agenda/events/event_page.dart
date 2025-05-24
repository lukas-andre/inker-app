import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/domain/models/event/event_detail_response.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart' show WorkEvidence;
import 'package:inker_studio/ui/shared/event/event_main_info_card.dart';
import 'package:inker_studio/ui/shared/event/event_description_card.dart';
import 'package:inker_studio/ui/shared/event/event_location_card.dart';
import 'package:inker_studio/ui/shared/event/quotation_details_card.dart';

class AgendaEventDetailPage extends StatelessWidget {
  final String eventId;

  const AgendaEventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ArtistAgendaEventDetailBloc>();
    bloc.add(ArtistAgendaEventDetailEvent.started(eventId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          S.of(context).eventDetails,
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (data) => !data.event.done && data.actions.canEdit
                  ? IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => _navigateToEditEvent(context, data),
                      tooltip: S.of(context).edit,
                    )
                  : const SizedBox.shrink(),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (data) => _buildContent(context, data),
            error: (message) => _buildErrorState(context, message),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (data) => !data.event.done
                ? _buildActionButtons(context, data)
                : const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          );
        },
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
              S.of(context).errorLoadingEventDetails(message),
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(S.of(context).goBack),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, EventDetailResponse data) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ArtistAgendaEventDetailBloc>()
          .add(ArtistAgendaEventDetailEvent.started(eventId));
      },
      color: Theme.of(context).colorScheme.secondary,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: Column(
                children: [
                  // Main Event Info using shared component
                  EventMainInfoCard(
                    title: data.event.title,
                    color: data.event.color ?? '#000000',
                    status: data.event.done ? 'completed' : 'scheduled',
                    startDate: data.event.startDateTime,
                    endDate: data.event.endDateTime,
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Quotation Details using shared component
                  if (data.quotation != null) ...[
                    _buildSectionHeader(
                      context,
                      icon: Icons.receipt_long,
                      title: S.of(context).quotationDetails,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    QuotationDetailsCard(quotation: data.quotation!),
                    const SizedBox(height: 16),
                  ],
                  
                  // Description using shared component
                  EventDescriptionCard(
                    description: data.event.info ?? '',
                    notes: data.event.notes,
                  ),
                  
                  // Work Evidence using shared component
                  if (data.event.workEvidence != null) ...[
                    const SizedBox(height: 16),
                    _buildSectionHeader(
                      context,
                      icon: Icons.photo_library,
                      title: S.of(context).workEvidence,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    _buildWorkEvidenceCard(context, data.event.workEvidence!),
                  ],
                  
                  const SizedBox(height: 16),
                  
                  // Location using shared component
                  EventLocationCard(
                    location: data.location,
                    onMapTap: () => _openMap(
                      context,
                      data.location.lat,
                      data.location.lng,
                      data.location.formattedAddress,
                    ),
                  ),
                  
                  // Additional information section
                  if (data.quotation != null && _hasAdditionalQuotationInfo(data.quotation!)) ...[
                    const SizedBox(height: 16),
                    _buildAdditionalQuotationInfo(context, data.quotation!),
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

  Widget _buildSectionHeader(BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: TextStyleTheme.subtitle1.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  bool _hasAdditionalQuotationInfo(Quotation quotation) {
    return quotation.proposedDesigns != null ||
           quotation.offers != null ||
           quotation.cancelReasonDetails != null ||
           quotation.customerRejectReason != null ||
           quotation.artistRejectReason != null ||
           quotation.systemCancelReason != null;
  }

  Widget _buildAdditionalQuotationInfo(BuildContext context, Quotation quotation) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Proposed Designs
            if (quotation.proposedDesigns != null && quotation.proposedDesigns!.metadata.isNotEmpty) ...[
              _buildInfoSection(
                context,
                icon: Icons.palette,
                title: S.of(context).proposedDesigns,
                child: _buildImagesGrid(quotation.proposedDesigns!.metadata),
              ),
              const SizedBox(height: 16),
            ],
            
            // Offers
            if (quotation.offers != null && quotation.offers!.isNotEmpty) ...[
              _buildInfoSection(
                context,
                icon: Icons.local_offer,
                title: S.of(context).offers,
                child: Column(
                  children: quotation.offers!.map((offer) => 
                    _buildOfferCard(context, offer)
                  ).toList(),
                ),
              ),
              const SizedBox(height: 16),
            ],
            
            // Cancellation/Rejection Reasons
            if (quotation.cancelReasonDetails != null) ...[
              _buildReasonCard(
                context,
                icon: Icons.cancel,
                title: S.of(context).cancellationReason,
                reason: quotation.cancelReasonDetails!,
                color: Colors.orange,
              ),
            ],
            
            if (quotation.customerRejectReason != null) ...[
              _buildReasonCard(
                context,
                icon: Icons.thumb_down,
                title: S.of(context).rejectionReason,
                reason: _getCustomerRejectReasonText(context, quotation.customerRejectReason!),
                color: Colors.red,
              ),
            ],
            
            if (quotation.artistRejectReason != null) ...[
              _buildReasonCard(
                context,
                icon: Icons.thumb_down,
                title: S.of(context).rejectionReason,
                reason: _getArtistRejectReasonText(context, quotation.artistRejectReason!),
                color: Colors.red,
              ),
            ],
            
            if (quotation.systemCancelReason != null) ...[
              _buildReasonCard(
                context,
                icon: Icons.cancel_schedule_send,
                title: S.of(context).systemCancellationReason,
                reason: _getSystemCancelReasonText(context, quotation.systemCancelReason!),
                color: Colors.grey,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context, {
    required IconData icon,
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.secondary, size: 20),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyleTheme.subtitle2.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }

  Widget _buildReasonCard(BuildContext context, {
    required IconData icon,
    required String title,
    required String reason,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyleTheme.caption.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  reason,
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: const Color(0xFFF2F2F2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesGrid(List<dynamic> images) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        final img = images[index];
        return Hero(
          tag: 'image-$index-${img.url}',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _viewFullImage(context, img.url),
                child: Image.network(
                  img.url,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      color: Colors.grey[800],
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOfferCard(BuildContext context, dynamic offer) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            radius: 20,
            child: const Icon(Icons.person, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offer.artistName ?? S.of(context).unknown,
                  style: TextStyleTheme.subtitle2.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (offer.estimatedCost != null)
                  Text(
                    offer.estimatedCost!.formatWithSymbol(),
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, EventDetailResponse data) {
    final List<_ActionButton> actionButtons = [];
    
    // Define all possible actions with improved styling
    if (data.actions.canEdit) {
      actionButtons.add(_ActionButton(
        onPressed: () => _navigateToEditEvent(context, data),
        icon: Icons.edit,
        label: S.of(context).edit,
        color: Theme.of(context).colorScheme.secondary,
      ));
    }

    if (data.actions.canCancel) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showCancelDialog(context, data),
        icon: Icons.cancel,
        label: S.of(context).cancel,
        color: redColor,
      ));
    }

    if (data.actions.canReschedule) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showRescheduleDialog(context, data),
        icon: Icons.schedule,
        label: 'Reschedule',
        color: Colors.blue,
      ));
    }

    if (data.actions.canSendMessage) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showMessageDialog(context, data),
        icon: Icons.message,
        label: S.of(context).sendMessage,
        color: Colors.purple,
      ));
    }

    if (data.actions.canAddWorkEvidence) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showAddWorkEvidenceDialog(context, data),
        icon: Icons.add_photo_alternate,
        label: 'Add Evidence',
        color: Colors.orange,
      ));
    }

    if (data.actions.canLeaveReview) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showReviewDialog(context, data),
        icon: Icons.star_rate,
        label: 'Leave Review',
        color: Colors.amber,
      ));
    }

    if (data.actions.canConfirmEvent) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showConfirmDialog(context, data),
        icon: Icons.check_circle,
        label: S.of(context).confirm,
        color: Colors.green,
      ));
    }

    if (data.actions.canRejectEvent) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showRejectDialog(context, data),
        icon: Icons.highlight_off,
        label: S.of(context).reject,
        color: Colors.redAccent,
      ));
    }

    if (data.actions.canAppeal) {
      actionButtons.add(_ActionButton(
        onPressed: () => _showAppealDialog(context, data),
        icon: Icons.policy,
        label: S.of(context).appeal,
        color: Colors.indigo,
      ));
    }

    if (actionButtons.isEmpty) {
      return const SizedBox.shrink();
    }

    // Improved button layout with better visual hierarchy
    return Container(
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: actionButtons.length <= 2
            ? Row(
                children: actionButtons.map((button) => 
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: _buildActionButton(button),
                    ),
                  ),
                ).toList(),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: actionButtons.map((button) => 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: SizedBox(
                        width: 140,
                        child: _buildActionButton(button),
                      ),
                    ),
                  ).toList(),
                ),
              ),
        ),
      ),
    );
  }

  Widget _buildActionButton(_ActionButton button) {
    return ElevatedButton.icon(
      onPressed: button.onPressed,
      icon: Icon(button.icon, size: 20),
      label: Text(
        button.label,
        style: TextStyleTheme.button.copyWith(fontSize: 14),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: button.color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
      ),
    );
  }

  // Navigation and dialog methods
  void _navigateToArtistProfile(BuildContext context, String artistId) {
    // TODO: Implement navigation to artist profile
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Navigate to artist profile: $artistId')),
    );
  }

  void _viewFullImage(BuildContext context, String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Hero(
              tag: 'image-full-$imageUrl',
              child: InteractiveViewer(
                child: Image.network(imageUrl),
              ),
            ),
          ),
        ),
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
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No maps application available')),
      );
    }
  }

  // Dialog methods
  void _showCancelDialog(BuildContext context, EventDetailResponse data) {
    _showActionDialog(
      context: context,
      title: S.of(context).cancelEvent,
      content: 'Are you sure you want to cancel this event?',
      actionText: S.of(context).cancel,
      actionColor: redColor,
      onConfirm: () {
        // TODO: Implement cancel logic
        print('Cancel event: ${data.actions.reasons.canCancel}');
      },
    );
  }

  void _showRescheduleDialog(BuildContext context, EventDetailResponse data) {
    _showActionDialog(
      context: context,
      title: 'Reschedule Event',
      content: 'Do you want to reschedule this event?',
      actionText: 'Reschedule',
      actionColor: Colors.blue,
      onConfirm: () {
        // TODO: Implement reschedule logic
        print('Reschedule event: ${data.actions.reasons.canReschedule}');
      },
    );
  }

  void _showMessageDialog(BuildContext context, EventDetailResponse data) {
    // TODO: Implement message dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Send message functionality coming soon')),
    );
  }

  void _showAddWorkEvidenceDialog(BuildContext context, EventDetailResponse data) {
    // TODO: Implement add work evidence dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add work evidence functionality coming soon')),
    );
  }

  void _showReviewDialog(BuildContext context, EventDetailResponse data) {
    // TODO: Implement review dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Leave review functionality coming soon')),
    );
  }

  void _showConfirmDialog(BuildContext context, EventDetailResponse data) {
    _showActionDialog(
      context: context,
      title: 'Confirm Event',
      content: 'Are you sure you want to confirm this event?',
      actionText: S.of(context).confirm,
      actionColor: Colors.green,
      onConfirm: () {
        // TODO: Implement confirm logic
        print('Confirm event: ${data.actions.reasons.canConfirmEvent}');
      },
    );
  }

  void _showRejectDialog(BuildContext context, EventDetailResponse data) {
    _showActionDialog(
      context: context,
      title: 'Reject Event',
      content: 'Are you sure you want to reject this event?',
      actionText: S.of(context).reject,
      actionColor: Colors.redAccent,
      onConfirm: () {
        // TODO: Implement reject logic
        print('Reject event: ${data.actions.reasons.canRejectEvent}');
      },
    );
  }

  void _showAppealDialog(BuildContext context, EventDetailResponse data) {
    _showActionDialog(
      context: context,
      title: 'Appeal Event',
      content: 'Do you want to appeal this event decision?',
      actionText: S.of(context).appeal,
      actionColor: Colors.indigo,
      onConfirm: () {
        // TODO: Implement appeal logic
        print('Appeal event: ${data.actions.reasons.canAppeal}');
      },
    );
  }

  void _showActionDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String actionText,
    required Color actionColor,
    required VoidCallback onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          title,
          style: TextStyleTheme.headline3,
        ),
        content: Text(
          content,
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
              Navigator.pop(dialogContext);
              onConfirm();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: actionColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              actionText,
              style: TextStyleTheme.button,
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToEditEvent(BuildContext context, EventDetailResponse data) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Row(
          children: [
            Icon(Icons.edit, color: Theme.of(context).colorScheme.secondary),
            const SizedBox(width: 12),
            Text(
              S.of(context).edit,
              style: TextStyleTheme.headline3,
            ),
          ],
        ),
        content: Text(
          S.of(context).editEventWarning,
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
              Navigator.pop(dialogContext);
              final eventDetails = _convertToEventDetails(data);
              
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
              backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
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
  
  ArtistAgendaEventDetails _convertToEventDetails(EventDetailResponse data) {
    return ArtistAgendaEventDetails(
      id: data.event.id.toString(),
      title: data.event.title,
      description: data.event.info ?? '',
      startDate: data.event.startDateTime,
      endDate: data.event.endDateTime ,
      location: data.location.formattedAddress,
      notes: data.event.notes,
    );
  }

  // Helper methods for quotation reasons
  String _getCustomerRejectReasonText(BuildContext context, QuotationCustomerRejectReason reason) {
    switch (reason) {
      case QuotationCustomerRejectReason.tooExpensive:
        return S.of(context).tooExpensive;
      case QuotationCustomerRejectReason.notWhatIWanted:
        return S.of(context).notWhatIWanted;
      case QuotationCustomerRejectReason.changedMyMind:
        return S.of(context).changedMyMind;
      case QuotationCustomerRejectReason.foundAnotherArtist:
        return S.of(context).foundAnotherArtist;
      case QuotationCustomerRejectReason.other:
        return S.of(context).other;
      default:
        return '-';
    }
  }

  String _getArtistRejectReasonText(BuildContext context, QuotationArtistRejectReason reason) {
    switch (reason) {
      case QuotationArtistRejectReason.schedulingConflict:
        return S.of(context).schedulingConflict;
      case QuotationArtistRejectReason.artisticDisagreement:
        return S.of(context).artisticDisagreement;
      case QuotationArtistRejectReason.insufficientDetails:
        return S.of(context).insufficientDetails;
      case QuotationArtistRejectReason.beyondExpertise:
        return S.of(context).beyondExpertise;
      case QuotationArtistRejectReason.other:
        return S.of(context).other;
      default:
        return '-';
    }
  }

  String _getSystemCancelReasonText(BuildContext context, QuotationSystemCancelReason reason) {
    switch (reason) {
      case QuotationSystemCancelReason.notAttended:
        return S.of(context).notAttended;
      case QuotationSystemCancelReason.systemTimeout:
        return S.of(context).systemTimeout;
      default:
        return '-';
    }
  }

  Widget _buildWorkEvidenceCard(BuildContext context, WorkEvidence workEvidence) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (workEvidence.metadata.isEmpty) 
              Text(
                S.of(context).noWorkEvidence, 
                style: TextStyleTheme.bodyText1,
              )
            else ...[
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: workEvidence.metadata.length,
                itemBuilder: (context, index) {
                  final imageUrl = workEvidence.metadata[index].url;
                  return Hero(
                    tag: 'work-evidence-$index-$imageUrl',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => _viewFullImage(context, imageUrl),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.grey[800],
                              child: const Center(
                                child: Icon(Icons.broken_image, color: Colors.grey, size: 24),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// Helper class for action buttons
class _ActionButton {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color color;

  const _ActionButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.color,
  });
}
