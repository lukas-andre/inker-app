import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/domain/models/event/event.dart';
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
import 'package:inker_studio/ui/shared/event/event_action_dialogs.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/ui/shared/event/event_chat_page.dart';
import 'package:inker_studio/ui/shared/event/event_actions_manager.dart';

class AgendaEventDetailPage extends StatelessWidget {
  final String eventId;

  const AgendaEventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ArtistAgendaEventDetailBloc>();
    bloc.add(ArtistAgendaEventDetailEvent.started(eventId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: _buildAppBar(context),
      body: BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (data) {
              // Debug print
              print('Event Page Debug: done=${data.event.done}, canStartSession=${data.actions.canStartSession}, status=${data.event.status.value}');
              return _buildContent(context, data);
            },
            error: (message) => _buildErrorState(context, message),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (data) => !data.event.done || data.actions.canStartSession
                ? EventActionsManager.buildBottomActions(
                    context: context,
                    config: _buildActionsConfig(context, data),
                  )
                : const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).eventDetails,
        style: TextStyleTheme.headline2,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        // Chat action
        BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (data) {
                if (data.actions.canSendMessage && !data.event.done) {
                  return IconButton(
                    icon: const Icon(Icons.message),
                    onPressed: () => _showMessageDialog(context, data),
                    tooltip: 'Enviar Mensaje',
                  );
                }
                return const SizedBox.shrink();
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
        
        // Overflow menu
        BlocBuilder<ArtistAgendaEventDetailBloc, ArtistAgendaEventDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (data) {
                if (data.event.done) return const SizedBox.shrink();
                
                final config = _buildActionsConfig(context, data);
                final secondaryActions = config.secondaryActions;
                
                if (secondaryActions.isEmpty) return const SizedBox.shrink();
                
                return PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (actionId) {
                    final action = secondaryActions.firstWhere((a) => a.id == actionId);
                    action.onPressed();
                  },
                  itemBuilder: (context) => secondaryActions
                      .map((action) => PopupMenuItem<String>(
                            value: action.id,
                            child: Row(
                              children: [
                                Icon(action.icon, color: action.color, size: 20),
                                const SizedBox(width: 12),
                                Text(
                                  action.label,
                                  style: TextStyleTheme.bodyText1.copyWith(
                                    color: action.isDestructive ? Colors.red : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
        
        // Refresh button
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            context.read<ArtistAgendaEventDetailBloc>()
              .add(ArtistAgendaEventDetailEvent.started(eventId));
          },
          tooltip: 'Actualizar',
        ),
      ],
    );
  }

  EventActionsConfig _buildActionsConfig(BuildContext context, EventDetailResponse data) {
    List<EventAction> actions = [];

    // PRIMARY ACTIONS (Bottom - Critical state changes)
    if (data.actions.canStartSession) {
      print('Adding Start Session action - status: ${data.event.status.value}');
      actions.add(EventAction(
        id: 'start_session',
        onPressed: () => _showStartSessionDialog(context, data),
        icon: Icons.play_circle_filled,
        label: 'Iniciar Sesión',
        color: Colors.green,
        category: ActionCategory.primary,
      ));
    }

    if (data.actions.canFinishSession) {
      actions.add(EventAction(
        id: 'finish_session',
        onPressed: () => _showFinishSessionDialog(context, data),
        icon: Icons.stop_circle,
        label: 'Finalizar Sesión',
        color: Colors.red,
        category: ActionCategory.primary,
      ));
    }

    if (data.actions.canEdit) {
      actions.add(EventAction(
        id: 'edit',
        onPressed: () => _navigateToEditEvent(context, data),
        icon: Icons.edit,
        label: 'Editar',
        color: Theme.of(context).colorScheme.secondary,
        category: ActionCategory.primary,
      ));
    }

    if (data.actions.canCancel) {
      actions.add(EventAction(
        id: 'cancel',
        onPressed: () => _showCancelDialog(context, data),
        icon: Icons.cancel,
        label: 'Cancelar',
        color: redColor,
        category: ActionCategory.primary,
        isDestructive: true,
      ));
    }

    // COMMUNICATION ACTIONS (AppBar - Always visible)
    if (data.actions.canSendMessage) {
      actions.add(EventAction(
        id: 'message',
        onPressed: () => _showMessageDialog(context, data),
        icon: Icons.message,
        label: 'Enviar Mensaje',
        color: Theme.of(context).colorScheme.secondary,
        category: ActionCategory.communication,
      ));
    }

    // SECONDARY ACTIONS (Overflow Menu)
    if (data.actions.canReschedule) {
      actions.add(EventAction(
        id: 'reschedule',
        onPressed: () => _showRescheduleDialog(context, data),
        icon: Icons.schedule,
        label: 'Reagendar',
        color: tertiaryColor,
        category: ActionCategory.secondary,
      ));
    }

    if (data.actions.canAddWorkEvidence) {
      actions.add(EventAction(
        id: 'add_evidence',
        onPressed: () => _showAddWorkEvidenceDialog(context, data),
        icon: Icons.add_photo_alternate,
        label: 'Agregar Evidencia',
        color: Theme.of(context).colorScheme.tertiary,
        category: ActionCategory.primary,
      ));
    }

    if (data.actions.canLeaveReview) {
      actions.add(EventAction(
        id: 'review',
        onPressed: () => _showReviewDialog(context, data),
        icon: Icons.star_rate,
        label: 'Dejar Reseña',
        color: Colors.amber,
        category: ActionCategory.primary,
      ));
    }

    if (data.actions.canConfirmEvent) {
      actions.add(EventAction(
        id: 'confirm',
        onPressed: () => _showConfirmDialog(context, data),
        icon: Icons.check_circle,
        label: 'Confirmar',
        color: Colors.green,
        category: ActionCategory.secondary,
      ));
    }

    if (data.actions.canRejectEvent) {
      actions.add(EventAction(
        id: 'reject',
        onPressed: () => _showRejectDialog(context, data),
        icon: Icons.highlight_off,
        label: 'Rechazar',
        color: Colors.redAccent,
        category: ActionCategory.secondary,
      ));
    }

    if (data.actions.canAppeal) {
      actions.add(EventAction(
        id: 'appeal',
        onPressed: () => _showAppealDialog(context, data),
        icon: Icons.policy,
        label: 'Apelar',
        color: Colors.indigo,
        category: ActionCategory.secondary,
      ));
    }

    return EventActionsConfig(
      actions: actions,
      eventTitle: data.event.title,
      onRefresh: () {
        context.read<ArtistAgendaEventDetailBloc>()
          .add(ArtistAgendaEventDetailEvent.started(eventId));
      },
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
                    status: data.event.status.value,
                    startDate: data.event.startDateTime,
                    endDate: data.event.endDateTime,
                  ),
                  
                  // Cancellation/Rejection Info
                  if (_hasAdditionalInfo(data.event)) ...[
                    const SizedBox(height: 16),
                    _buildAdditionalInfoCard(context, data.event),
                  ],

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

  bool _hasAdditionalInfo(Event event) {
    return event.status.value == 'canceled' || event.status.value == 'rescheduled';
  }

  Widget _buildAdditionalInfoCard(BuildContext context, Event event) {
    dynamic lastStatusLog;
    if (event.statusLog != null && event.statusLog!.isNotEmpty) {
      lastStatusLog = event.statusLog!.lastWhere(
        (log) => log['status'] == event.status.value,
        orElse: () => event.statusLog!.last,
      );
    }

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
            if (event.status.value == 'canceled')
              _buildCancellationInfo(context, lastStatusLog),
            if (event.status.value == 'rescheduled')
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

  Widget _buildCancellationInfo(BuildContext context, dynamic statusLog) {
    // TODO(translation): Localize these strings
    String cancellationMessage = 'Appointment Canceled';
    String? reason;

    // This is the artist view
    if (statusLog != null) {
      final actorRole = statusLog['actor']?['role'];
      reason = statusLog['reason'];

      if (statusLog['action'] == 'reject') {
        cancellationMessage = 'Appointment Rejected by Customer';
      } else {
        switch (actorRole) {
          case 'ARTIST':
            cancellationMessage = 'Canceled by You';
            break;
          case 'CUSTOMER':
            cancellationMessage = 'Canceled by Customer';
            break;
          case 'SYSTEM':
            cancellationMessage = 'Canceled by System';
            break;
        }
      }
    }

    return _buildInfoChip(
      context,
      icon: Icons.cancel,
      text: cancellationMessage,
      reason: reason,
      color: Colors.red,
    );
  }

  Widget _buildInfoChip(
    BuildContext context, {
    required IconData icon,
    required String text,
    String? reason,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (reason != null && reason.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    // TODO(translation): Localize this string
                    'Reason: $reason',
                    style: TextStyleTheme.bodyText2
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ],
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

  // Navigation and dialog methods
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

  // Dialog methods using shared components
  void _showCancelDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showTextInputDialog(
      context: context,
      title: S.of(context).cancelEvent,
      hintText: S.of(context).cancellationReason,
      actionText: S.of(context).cancel,
      actionColor: redColor,
      icon: const Icon(Icons.cancel, color: redColor),
      maxLines: 3,
      required: true,
      onConfirm: (reason) {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.cancelEvent(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
            reason: reason,
          ),
        );
      },
    );
  }

  void _showRescheduleDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showRescheduleDialog(
      context: context,
      title: S.of(context).reschedule,
      currentStartDate: data.event.startDateTime,
      currentEndDate: data.event.endDateTime,
      icon: const Icon(Icons.schedule, color: Colors.blue),
      onConfirm: (newStartDate, newEndDate, reason) {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.rescheduleEvent(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
            newStartDate: newStartDate,
            newEndDate: newEndDate,
            reason: reason,
          ),
        );
      },
    );
  }

  void _showMessageDialog(BuildContext context, EventDetailResponse data) {
    final isArtist = context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    final customerName = data.artist.username ?? data.artist.username ?? S.of(context).customer;
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EventChatPage(
          eventId: data.event.id.toString(),
          agendaId: data.event.agenda.id,
          eventTitle: data.event.title,
          otherPartyName: customerName,
          isArtist: isArtist,
        ),
      ),
    );
  }

  void _showAddWorkEvidenceDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showWorkEvidenceDialog(
      context: context,
      title: S.of(context).workEvidence,
      icon: const Icon(Icons.add_photo_alternate, color: Colors.orange),
      onConfirm: (imagePaths) {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.addWorkEvidence(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
            imageFiles: imagePaths,
          ),
        );
      },
    );
  }

  void _showReviewDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showRatingDialog(
      context: context,
      title: S.of(context).leaveReview,
      actionText: S.of(context).submit,
      icon: const Icon(Icons.star_rate, color: Colors.amber),
      onConfirm: (rating, comment, isAnonymous) {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.reviewEvent(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
            rating: rating,
            comment: comment,
            isAnonymous: isAnonymous,
          ),
        );
      },
    );
  }

  void _showConfirmDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showConfirmationDialog(
      context: context,
      title: S.of(context).confirmEvent,
      content: S.of(context).confirmEventMessage,
      actionText: S.of(context).confirm,
      actionColor: Colors.green,
      icon: const Icon(Icons.check_circle, color: Colors.green),
      onConfirm: () {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.confirmEvent(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
          ),
        );
      },
    );
  }

  void _showRejectDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showTextInputDialog(
      context: context,
      title: S.of(context).rejectEvent,
      hintText: S.of(context).rejectionReason,
      actionText: S.of(context).reject,
      actionColor: Colors.redAccent,
      icon: const Icon(Icons.highlight_off, color: Colors.redAccent),
      maxLines: 3,
      onConfirm: (reason) {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.rejectEvent(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
            reason: reason.isEmpty ? null : reason,
          ),
        );
      },
    );
  }

  void _showAppealDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showTextInputDialog(
      context: context,
      title: S.of(context).appeal,
      hintText: S.of(context).appealReason,
      actionText: S.of(context).appeal,
      actionColor: Colors.indigo,
      icon: const Icon(Icons.policy, color: Colors.indigo),
      maxLines: 3,
      required: true,
      onConfirm: (reason) {
        // Add appeal implementation when available
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(S.of(context).thisFeatureWillBeAvailableSoon)),
        );
      },
    );
  }

  void _showStartSessionDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showConfirmationDialog(
      context: context,
      title: 'Iniciar Sesión',
      content: '¿Estás seguro de que quieres iniciar la sesión de tatuaje?',
      actionText: 'Iniciar',
      actionColor: Colors.green,
      icon: const Icon(Icons.play_circle_filled, color: Colors.green),
      onConfirm: () {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.startSession(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
          ),
        );
      },
    );
  }

  void _showFinishSessionDialog(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showConfirmationDialog(
      context: context,
      title: 'Finalizar Sesión',
      content: '¿Estás seguro de que quieres finalizar la sesión de tatuaje?',
      actionText: 'Finalizar',
      actionColor: Colors.red,
      icon: const Icon(Icons.stop_circle, color: Colors.red),
      onConfirm: () {
        context.read<ArtistAgendaEventDetailBloc>().add(
          ArtistAgendaEventDetailEvent.finishSession(
            agendaId: data.event.agenda.id,
            eventId: data.event.id.toString(),
          ),
        );
      },
    );
  }

  void _navigateToEditEvent(BuildContext context, EventDetailResponse data) {
    EventActionDialogs.showConfirmationDialog(
      context: context,
      title: S.of(context).edit,
      content: S.of(context).editEventWarning,
      actionText: S.of(context).continue_,
      actionColor: Theme.of(context).colorScheme.secondary,
      icon: Icon(Icons.edit, color: Theme.of(context).colorScheme.secondary),
      onConfirm: () {
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
