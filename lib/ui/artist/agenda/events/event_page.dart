import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/domain/models/event/event_detail_response.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';

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
        elevation: 1.0,
        shadowColor: Colors.black54,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocBuilder<ArtistAgendaEventDetailBloc,
          ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(
                child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onSurface)),
            loading: () => Center(
                child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onSurface)),
            loaded: (data) => _buildContent(context, data),
            error: (message) => Center(
              child: Text(
                S.of(context).errorLoadingEventDetails(message),
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

  Widget _buildContent(BuildContext context, EventDetailResponse data) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildMainEventCard(context, data),
          const SizedBox(height: 16),
          if (data.quotation != null) ...[
            _buildQuotationCard(context, data.quotation!),
            const SizedBox(height: 16),
          ],
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
      BuildContext context, EventDetailResponse data) {
    final DateFormat dateFormat = DateFormat('d MMMM yyyy', Intl.defaultLocale);
    final DateFormat timeFormat = DateFormat('HH:mm', Intl.defaultLocale);

    return Card(
      margin: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.surface,
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
                        int.parse(data.event.color?.replaceAll('#', '0xFF') ?? '0xFF000000')),
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
              content: dateFormat.format(data.event.startDateTime),
            ),
            const SizedBox(height: 12),
            _InfoRow(
              icon: Icons.access_time,
              title: S.of(context).time,
              content:
                  '${timeFormat.format(data.event.startDateTime)} - ${timeFormat.format(data.event.endDateTime)}',
            ),
            if (data.event.quotationId != null) ...[
              const SizedBox(height: 12),
              // _InfoRow(
              //   icon: Icons.description_outlined,
              //   title: S.of(context).quotationNumber,
              //   content: '#${data.event.quotationId}',
              // ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionCard(
      BuildContext context, EventDetailResponse data) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).colorScheme.surface,
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
              data.event.info ?? S.of(context).noDescription,
              style: TextStyleTheme.bodyText1.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkEvidenceCard(
      BuildContext context, EventDetailResponse data) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).colorScheme.surface,
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
      BuildContext context, EventDetailResponse data) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).colorScheme.surface,
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
                    color: Theme.of(context).colorScheme.secondary,
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
                            color: Theme.of(context).colorScheme.secondary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        if (data.location.name != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            data.location.name!,
                            style: TextStyleTheme.caption.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
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
      BuildContext context, EventDetailResponse data) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
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
                backgroundColor: Theme.of(context).colorScheme.secondary,
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
  
  void _navigateToEditEvent(BuildContext context, EventDetailResponse data) {
    // Show alert dialog with warning about customer reselection
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          S.of(context).edit,
          style: TextStyleTheme.subtitle1,
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
              backgroundColor: Theme.of(context).colorScheme.secondary,
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
  ArtistAgendaEventDetails _convertToEventDetails(EventDetailResponse data) {
    return ArtistAgendaEventDetails(
      id: data.event.id.toString(),
      title: data.event.title,
      description: data.event.info ?? '',
      startDate: data.event.startDateTime,
      endDate: data.event.endDateTime ,
      location: data.location.formattedAddress,
      notes: data.event.notes,
      // Note: We can also store the customerId for potential use in the form
      // but we don't directly pass a CustomerDTO object
    );
  }

  Widget _buildQuotationCard(BuildContext context, Quotation quotation) {
    final DateFormat dateFormat = DateFormat('d MMM yyyy', Intl.defaultLocale);
    final DateFormat timeFormat = DateFormat('HH:mm', Intl.defaultLocale);
    final statusColor = _getQuotationStatusColor(quotation.status);
    final statusText = _getQuotationStatusText(context, quotation.status);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.receipt_long, color: Theme.of(context).colorScheme.secondary, size: 28),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    S.of(context).quotationDetails,
                    style: TextStyleTheme.headline3,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: statusColor),
                  ),
                  child: Text(
                    statusText,
                    style: TextStyleTheme.caption.copyWith(color: statusColor),
                  ),
                ),
              ],
            ),
            const Divider(height: 32),
            _InfoRow(
              icon: Icons.description_outlined,
              title: S.of(context).description,
              content: quotation.description.isNotEmpty ? quotation.description : '-',
            ),
            const SizedBox(height: 12),
            if (quotation.estimatedCost != null)
              _InfoRow(
                icon: Icons.attach_money,
                title: S.of(context).estimatedCost,
                content: quotation.estimatedCost!.formatWithSymbol(),
              ),
            if (quotation.minBudget != null || quotation.maxBudget != null)
              _InfoRow(
                icon: Icons.account_balance_wallet_outlined,
                title: S.of(context).budget,
                content: _formatBudget(quotation),
              ),
            if (quotation.referenceBudget != null)
              _InfoRow(
                icon: Icons.info_outline,
                title: S.of(context).referenceBudget(quotation.referenceBudget!.amount, quotation.referenceBudget!.currency),
                content: quotation.referenceBudget!.formatWithSymbol(),
              ),
            if (quotation.customer != null)
              _InfoRow(
                icon: Icons.person_outline,
                title: S.of(context).customer,
                content: _formatFullName(quotation.customer!.firstName, quotation.customer!.lastName),
              ),
            if (quotation.artist != null)
              _InfoRow(
                icon: Icons.brush_outlined,
                title: S.of(context).artist,
                content: _formatFullName(quotation.artist!.firstName, quotation.artist!.lastName),
              ),
            _InfoRow(
              icon: Icons.calendar_today,
              title: S.of(context).createdAt,
              content: dateFormat.format(quotation.createdAt),
            ),
            if (quotation.appointmentDate != null)
              _InfoRow(
                icon: Icons.event,
                title: S.of(context).appointmentDate,
                content: dateFormat.format(quotation.appointmentDate!),
              ),
            if (quotation.canceledDate != null)
              _InfoRow(
                icon: Icons.cancel,
                title: S.of(context).statusCanceled,
                content: dateFormat.format(quotation.canceledDate!),
              ),
            if (quotation.rejectedDate != null)
              _InfoRow(
                icon: Icons.block,
                title: S.of(context).statusRejected,
                content: dateFormat.format(quotation.rejectedDate!),
              ),
            if (quotation.tattooDesignImageUrl != null && quotation.tattooDesignImageUrl!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(S.of(context).proposedDesign, style: TextStyleTheme.subtitle1),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  quotation.tattooDesignImageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey[300],
                    height: 200,
                    child: const Center(child: Icon(Icons.broken_image, size: 48)),
                  ),
                ),
              ),
            ],
            if (quotation.referenceImages != null && quotation.referenceImages!.metadata.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(S.of(context).referenceImages, style: TextStyleTheme.subtitle1),
              const SizedBox(height: 8),
              _buildQuotationImagesGrid(quotation.referenceImages!.metadata),
            ],
            if (quotation.proposedDesigns != null && quotation.proposedDesigns!.metadata.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(S.of(context).proposedDesigns, style: TextStyleTheme.subtitle1),
              const SizedBox(height: 8),
              _buildQuotationImagesGrid(quotation.proposedDesigns!.metadata),
            ],
            if (quotation.cancelReasonDetails != null && quotation.cancelReasonDetails!.isNotEmpty) ...[
              const SizedBox(height: 16),
              _InfoRow(
                icon: Icons.info_outline,
                title: S.of(context).cancellationReason,
                content: quotation.cancelReasonDetails!,
              ),
            ],
            if (quotation.customerRejectReason != null) ...[
              const SizedBox(height: 16),
              _InfoRow(
                icon: Icons.thumb_down,
                title: S.of(context).rejectionReason,
                content: _getCustomerRejectReasonText(context, quotation.customerRejectReason!),
              ),
            ],
            if (quotation.artistRejectReason != null) ...[
              const SizedBox(height: 16),
              _InfoRow(
                icon: Icons.thumb_down,
                title: S.of(context).rejectionReason,
                content: _getArtistRejectReasonText(context, quotation.artistRejectReason!),
              ),
            ],
            if (quotation.systemCancelReason != null) ...[
              const SizedBox(height: 16),
              _InfoRow(
                icon: Icons.cancel_schedule_send,
                title: S.of(context).systemCancellationReason,
                content: _getSystemCancelReasonText(context, quotation.systemCancelReason!),
              ),
            ],
            if (quotation.offers != null && quotation.offers!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(S.of(context).offers, style: TextStyleTheme.subtitle1),
              const SizedBox(height: 8),
              ...quotation.offers!.map((offer) => _buildOfferRow(context, offer)),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildQuotationImagesGrid(List<dynamic> images) {
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
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            img.url,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _buildOfferRow(BuildContext context, dynamic offer) {
    return Card(
      color: Colors.black12,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Icon(Icons.local_offer, color: Theme.of(context).colorScheme.secondary),
        title: Text(offer.artistName ?? '-', style: TextStyleTheme.bodyText1),
        subtitle: offer.estimatedCost != null
            ? Text(offer.estimatedCost!.formatWithSymbol(), style: TextStyleTheme.caption)
            : null,
      ),
    );
  }

  Color _getQuotationStatusColor(QuotationStatus status) {
    switch (status) {
      case QuotationStatus.pending:
        return Colors.orange;
      case QuotationStatus.quoted:
        return Colors.blue;
      case QuotationStatus.accepted:
        return Colors.green;
      case QuotationStatus.rejected:
        return Colors.red;
      case QuotationStatus.appealed:
        return Colors.purple;
      case QuotationStatus.canceled:
        return Colors.grey;
      case QuotationStatus.open:
        return Colors.teal;
      default:
        return Colors.grey;
    }
  }

  String _getQuotationStatusText(BuildContext context, QuotationStatus status) {
    switch (status) {
      case QuotationStatus.pending:
        return S.of(context).statusPending;
      case QuotationStatus.quoted:
        return S.of(context).statusQuoted;
      case QuotationStatus.accepted:
        return S.of(context).statusAccepted;
      case QuotationStatus.rejected:
        return S.of(context).statusRejected;
      case QuotationStatus.appealed:
        return S.of(context).statusAppealed;
      case QuotationStatus.canceled:
        return S.of(context).statusCanceled;
      case QuotationStatus.open:
        return S.of(context).open;
      default:
        return '-';
    }
  }

  String _formatBudget(Quotation quotation) {
    if (quotation.minBudget != null && quotation.maxBudget != null) {
      return '${quotation.minBudget!.formatWithSymbol()} - ${quotation.maxBudget!.formatWithSymbol()}';
    } else if (quotation.minBudget != null) {
      return '${quotation.minBudget!.formatWithSymbol()}+';
    } else if (quotation.maxBudget != null) {
      return '< ${quotation.maxBudget!.formatWithSymbol()}';
    } else {
      return '-';
    }
  }

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

  String _formatFullName(String? firstName, String? lastName) {
    if ((firstName ?? '').isEmpty && (lastName ?? '').isEmpty) return '-';
    return [firstName, lastName].where((e) => (e ?? '').isNotEmpty).join(' ');
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
        Icon(icon, color: Theme.of(context).colorScheme.tertiary, size: 20),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyleTheme.caption.copyWith(color: Theme.of(context).colorScheme.tertiary),
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
