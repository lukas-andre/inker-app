import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
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
import 'package:inker_studio/ui/shared/event/event_action_dialogs.dart'
    as dialogs;
import 'package:inker_studio/ui/shared/event/event_section_header.dart';
import 'package:inker_studio/domain/blocs/consent/signed_consent/signed_consent_bloc.dart';
import 'package:inker_studio/domain/services/consent/consent_service.dart';
import 'package:inker_studio/ui/shared/event/event_chat_page.dart';
import 'package:inker_studio/ui/shared/event/unified_confirmation_handler.dart';
import 'package:inker_studio/ui/shared/event/event_actions_manager.dart';

class AppointmentDetailPage extends StatelessWidget {
  final String appointmentId;

  const AppointmentDetailPage({
    super.key,
    required this.appointmentId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: _buildDefaultAppBar(context),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.of(context).actionSuccessful),
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

          return state.when(
            initial: () => _buildLoadingState(context),
            loading: () => _buildLoadingState(context),
            loaded: (view, selectedAppointment) {
              if (selectedAppointment == null) {
                return _buildLoadingState(context);
              }
              return _buildAppointmentDetails(context, selectedAppointment);
            },
            actionInProgress: () => _buildLoadingState(context),
            actionSuccess: () => _buildLoadingState(context),
            actionFailed: (message) => _buildErrorState(context, message),
            error: (message) => _buildErrorState(context, message),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (view, selectedAppointment) {
              if (selectedAppointment == null) {
                return const SizedBox.shrink();
              }
              return EventActionsManager.buildBottomActions(
                context: context,
                config: _buildActionsConfig(context, selectedAppointment),
              );
            },
            actionInProgress: () => EventActionsManager.buildBottomActions(
              context: context,
              config: const EventActionsConfig(actions: []),
              isLoading: true,
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  AppBar _buildDefaultAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).appointmentDetails,
        style: TextStyleTheme.headline2,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        // Chat action
        BlocBuilder<AppointmentBloc, AppointmentState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (view, selectedAppointment) {
                if (selectedAppointment?.actions.canSendMessage == true) {
                  return IconButton(
                    icon: const Icon(Icons.message),
                    onPressed: () =>
                        _navigateToChat(context, selectedAppointment!),
                    tooltip: 'Contactar Artista',
                  );
                }
                return const SizedBox.shrink();
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),

        // Overflow menu
        BlocBuilder<AppointmentBloc, AppointmentState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (view, selectedAppointment) {
                if (selectedAppointment == null) return const SizedBox.shrink();

                final config =
                    _buildActionsConfig(context, selectedAppointment);
                final secondaryActions = config.secondaryActions;

                if (secondaryActions.isEmpty) return const SizedBox.shrink();

                return PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (actionId) {
                    final action =
                        secondaryActions.firstWhere((a) => a.id == actionId);
                    action.onPressed();
                  },
                  itemBuilder: (context) => secondaryActions
                      .map((action) => PopupMenuItem<String>(
                            value: action.id,
                            child: Row(
                              children: [
                                Icon(action.icon,
                                    color: action.color, size: 20),
                                const SizedBox(width: 12),
                                Text(
                                  action.label,
                                  style: TextStyleTheme.bodyText1.copyWith(
                                    color: action.isDestructive
                                        ? Colors.red
                                        : Colors.white,
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
          onPressed: () => _loadAppointmentDetails(context, isRefresh: true),
          tooltip: 'Actualizar',
        ),
      ],
    );
  }

  EventActionsConfig _buildActionsConfig(
      BuildContext context, AppointmentDetailDto detail) {
    List<EventAction> actions = [];

    // PRIMARY ACTIONS (Bottom - Critical state changes)
    if (detail.actions.canConfirmEvent) {
      actions.add(EventAction(
        id: 'confirm',
        onPressed: () => _showConfirmDialog(context, detail),
        icon: Icons.check_circle,
        label: 'Confirmar',
        color: Colors.green,
        category: ActionCategory.primary,
      ));
    }

    if (detail.actions.canRejectEvent) {
      actions.add(EventAction(
        id: 'reject',
        onPressed: () => _showRejectDialog(context, detail),
        icon: Icons.highlight_off,
        label: 'Rechazar',
        color: Colors.redAccent,
        category: ActionCategory.primary,
      ));
    }

    // COMMUNICATION ACTIONS (AppBar - Always visible)
    if (detail.actions.canSendMessage) {
      actions.add(EventAction(
        id: 'message',
        onPressed: () => _navigateToChat(context, detail),
        icon: Icons.message,
        label: 'Contactar Artista',
        color: Theme.of(context).colorScheme.secondary,
        category: ActionCategory.communication,
      ));
    }

    // SECONDARY ACTIONS (Overflow Menu)
    if (detail.actions.canReschedule) {
      actions.add(EventAction(
        id: 'reschedule',
        onPressed: () => _showRescheduleDialog(context, detail),
        icon: Icons.update,
        label: 'Solicitar Cambio',
        color: tertiaryColor,
        category: ActionCategory.secondary,
      ));
    }

    if (detail.actions.canLeaveReview) {
      actions.add(EventAction(
        id: 'review',
        onPressed: () => _showReviewDialog(context, detail),
        icon: Icons.star_rate,
        label: 'Dejar Reseña',
        color: Theme.of(context).colorScheme.tertiary,
        category: ActionCategory.primary,
      ));
    }

    if (detail.actions.canCancel) {
      actions.add(EventAction(
        id: 'cancel',
        onPressed: () => _showCancelDialog(context, detail),
        icon: Icons.cancel,
        label: 'Cancelar Cita',
        color: redColor,
        category: ActionCategory.secondary,
        isDestructive: true,
      ));
    }

    if (detail.actions.canAppeal) {
      actions.add(EventAction(
        id: 'appeal',
        onPressed: () => _showAppealDialog(context, detail),
        icon: Icons.policy,
        label: 'Apelar Decisión',
        color: Colors.indigo,
        category: ActionCategory.secondary,
      ));
    }

    return EventActionsConfig(
      actions: actions,
      eventTitle: detail.event.title,
      onRefresh: () => _loadAppointmentDetails(context, isRefresh: true),
    );
  }

  void _loadAppointmentDetails(BuildContext context, {bool isRefresh = false}) {
    context.read<AppointmentBloc>().add(
          AppointmentEvent.getAppointmentById(appointmentId),
        );
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
              onPressed: () =>
                  _loadAppointmentDetails(context, isRefresh: true),
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

  Widget _buildAppointmentDetails(
      BuildContext context, AppointmentDetailDto detail) {
    final appointment = detail.event;
    final artist = detail.artist;
    final location = detail.location;
    final quotation = detail.quotation;
    final workEvidence = appointment.workEvidence;
    final l10n = S.of(context);

    return RefreshIndicator(
      onRefresh: () async {
        _loadAppointmentDetails(context, isRefresh: true);

        // Wait for the refresh to complete using a simple delay
        // The UI will update through BlocBuilder when refresh is done
        await Future.delayed(const Duration(milliseconds: 500));
      },
      color: Theme.of(context).colorScheme.secondary,
      child: CustomScrollView(
        physics:
            const AlwaysScrollableScrollPhysics(), // Ensures pull to refresh works even when content doesn't fill screen
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
                    onArtistTap: () =>
                        _navigateToArtistProfile(context, artist),
                  ),

                  // Additional Info Section (if needed)
                  if (_hasAdditionalInfo(appointment)) ...[
                    const SizedBox(height: 16),
                    _buildAdditionalInfoCard(context, appointment),
                  ],

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
                  if (workEvidence != null &&
                      workEvidence.metadata.isNotEmpty) ...[
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

                  // Consent Section
                  if (appointment.status == 'pending') ...[
                    const SizedBox(height: 16),
                    EventSectionHeader(
                      icon: Icons.description,
                      title: 'Consent Forms',
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    BlocProvider(
                      create: (context) => SignedConsentBloc(
                        sessionService: context.read<LocalSessionService>(),
                        consentService: context.read<ConsentService>(),
                      )..add(SignedConsentEvent.loadRequiredConsentsForEvent(
                          appointmentId,
                          // TODO: Get current user ID from auth service
                          'current-user-id',
                        )),
                      child: BlocBuilder<SignedConsentBloc, SignedConsentState>(
                        builder: (context, consentState) {
                          return consentState.when(
                            initial: () => const SizedBox.shrink(),
                            loading: () => Card(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: explorerSecondaryColor,
                              child: const Padding(
                                padding: EdgeInsets.all(16),
                                child:
                                    Center(child: CircularProgressIndicator()),
                              ),
                            ),
                            loaded: (eventId, userId, requiredConsents,
                                signedConsents, hasSignedAll) {
                              if (requiredConsents.isEmpty) {
                                return const SizedBox.shrink();
                              }

                              return Card(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                color: explorerSecondaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            hasSignedAll
                                                ? Icons.check_circle
                                                : Icons.pending,
                                            color: hasSignedAll
                                                ? Colors.green
                                                : Colors.orange,
                                            size: 20,
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              hasSignedAll
                                                  ? 'All consent forms completed'
                                                  : 'Consent forms required',
                                              style: TextStyleTheme.subtitle2
                                                  .copyWith(
                                                color: hasSignedAll
                                                    ? Colors.green
                                                    : Colors.orange,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        hasSignedAll
                                            ? 'You have completed all required consent forms for this appointment.'
                                            : 'Please review and sign the required consent forms for your appointment.',
                                        style: TextStyleTheme.bodyText2
                                            .copyWith(color: Colors.white70),
                                      ),
                                      const SizedBox(height: 16),

                                      // Progress indicator
                                      Row(
                                        children: [
                                          Expanded(
                                            child: LinearProgressIndicator(
                                              value: requiredConsents.isEmpty
                                                  ? 1.0
                                                  : signedConsents.length /
                                                      requiredConsents.length,
                                              backgroundColor: Colors.white24,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                hasSignedAll
                                                    ? Colors.green
                                                    : Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            '${signedConsents.length}/${requiredConsents.length}',
                                            style: TextStyleTheme.caption
                                                .copyWith(
                                                    color: Colors.white70),
                                          ),
                                        ],
                                      ),

                                      if (!hasSignedAll) ...[
                                        const SizedBox(height: 16),
                                        SizedBox(
                                          width: double.infinity,
                                          child: ElevatedButton.icon(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                context,
                                                '/consent-signing',
                                                arguments: {
                                                  'eventId': appointmentId,
                                                  'userId': userId,
                                                },
                                              );
                                            },
                                            icon:
                                                const Icon(Icons.edit_document),
                                            label: const Text(
                                                'Complete Consent Forms'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              );
                            },
                            signingInProgress: () => Card(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: explorerSecondaryColor,
                              child: const Padding(
                                padding: EdgeInsets.all(16),
                                child:
                                    Center(child: CircularProgressIndicator()),
                              ),
                            ),
                            signSuccess: (message) => Card(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: explorerSecondaryColor,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check_circle,
                                        color: Colors.green),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        message,
                                        style: TextStyleTheme.bodyText2
                                            .copyWith(color: Colors.green),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            error: (message) => Card(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: explorerSecondaryColor,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    const Icon(Icons.error, color: Colors.red),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Error loading consent forms: $message',
                                        style: TextStyleTheme.bodyText2
                                            .copyWith(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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
    return appointment.status == 'canceled' ||
        appointment.status == 'rescheduled';
  }

  Widget _buildAdditionalInfoCard(
      BuildContext context, AppointmentEventDto appointment) {
    dynamic lastStatusLog;
    if (appointment.statusLog != null && appointment.statusLog!.isNotEmpty) {
      lastStatusLog = appointment.statusLog!.lastWhere(
        (log) => log.status == appointment.status,
        orElse: () => appointment.statusLog!.last,
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
            if (appointment.status == 'canceled')
              _buildCancellationInfo(context, lastStatusLog),
            if (appointment.status == 'rescheduled')
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

    // This is the customer view
    if (statusLog != null) {
      final actorRole = statusLog.actor?.role;
      reason = statusLog.reason;

      if (statusLog.action == 'reject') {
        cancellationMessage = 'Appointment Rejected by You';
      } else {
        switch (actorRole) {
          case 'ARTIST':
            cancellationMessage = 'Canceled by Artist';
            break;
          case 'CUSTOMER':
            cancellationMessage = 'Canceled by You';
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

  // Navigation and utility methods
  void _navigateToArtistProfile(BuildContext context, Artist artist) {
    Navigator.pushNamed(
      context,
      '/artistProfile',
      arguments: {'artist': artist},
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
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(S.of(context).noMapsApplicationAvailable)),
      );
    }
  }

  void _navigateToChat(BuildContext context, AppointmentDetailDto detail) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EventChatPage(
          eventId: detail.event.id,
          agendaId: detail.event.agenda.id,
          eventTitle: detail.event.title,
          otherPartyName: detail.artist.username ?? 'Artist',
          isArtist: false,
        ),
      ),
    );
  }

  // Dialog methods using shared components
  void _showCancelDialog(BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);

    dialogs.EventActionDialogs.showTextInputDialog(
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

  void _showRescheduleDialog(
      BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);

    dialogs.EventActionDialogs.showConfirmationDialog(
      context: context,
      title: 'Solicitar Cambio de Horario',
      content:
          'Contacta al artista para coordinar un nuevo horario que funcione para ambos. El artista te ayudará a encontrar la mejor opción disponible.',
      actionText: 'Contactar Artista',
      actionColor: Theme.of(context).colorScheme.secondary,
      icon: Icon(Icons.update, color: tertiaryColor),
      onConfirm: () => _navigateToChat(context, detail),
    );
  }

  void _showReviewDialog(BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);

    dialogs.EventActionDialogs.showRatingDialog(
      context: context,
      title: l10n.leaveReview,
      actionText: l10n.submit,
      icon: const Icon(Icons.star_rate, color: Colors.amber),
      onConfirm: (rating, comment, isAnonymous) {
        context.read<AppointmentBloc>().add(
              AppointmentEvent.reviewAppointment(
                appointmentId: detail.event.id,
                agendaId: detail.event.agenda.id,
                rating: rating,
                comment: comment,
              ),
            );
      },
    );
  }

  void _showConfirmDialog(BuildContext context, AppointmentDetailDto detail) {
    showUnifiedConfirmDialog(
      context: context,
      eventId: detail.event.id,
      agendaId: detail.event.agenda.id,
      canAcceptConsent: detail.actions.canAcceptConsent,
    );
  }

  void _showRejectDialog(BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);

    dialogs.EventActionDialogs.showTextInputDialog(
      context: context,
      title: l10n.rejectEvent,
      hintText: l10n.rejectionReason,
      actionText: l10n.reject,
      actionColor: Colors.redAccent,
      icon: const Icon(Icons.highlight_off, color: Colors.redAccent),
      maxLines: 3,
      required: false, // Rejection reason is optional
      onConfirm: (reason) {
        context.read<AppointmentBloc>().add(
              AppointmentEvent.rejectAppointment(
                appointmentId: detail.event.id,
                agendaId: detail.event.agenda.id,
                reason: reason.isEmpty ? null : reason,
              ),
            );
      },
    );
  }

  void _showAppealDialog(BuildContext context, AppointmentDetailDto detail) {
    final l10n = S.of(context);

    dialogs.EventActionDialogs.showTextInputDialog(
      context: context,
      title: l10n.appeal,
      hintText: l10n.appealReason,
      actionText: l10n.appeal,
      actionColor: Colors.indigo,
      icon: const Icon(Icons.policy, color: Colors.indigo),
      maxLines: 5,
      required: true,
      onConfirm: (reason) {
        context.read<AppointmentBloc>().add(
              AppointmentEvent.appealAppointment(
                appointmentId: detail.event.id,
                agendaId: detail.event.agenda.id,
                reason: reason,
              ),
            );
      },
    );
  }
}
