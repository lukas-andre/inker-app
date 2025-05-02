import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_images.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/ui/quotation/quotation_action_manager.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_action_buttons.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class QuotationDetailsPage extends StatefulWidget {
  final Quotation quotation;

  const QuotationDetailsPage({
    super.key,
    required this.quotation,
  });

  @override
  State<QuotationDetailsPage> createState() => _QuotationDetailsPageState();
}

class _QuotationDetailsPageState extends State<QuotationDetailsPage> {
  late Quotation _currentQuotation;
  late QuotationListBloc _bloc;
  late NotificationsBloc _notificationsBloc;
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _currentQuotation = widget.quotation;
    _bloc = context.read<QuotationListBloc>();
    _notificationsBloc = context.read<NotificationsBloc>();

    // Mark quotation as read when viewed
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    if ((_currentQuotation.readByArtist == false && isArtist) ||
        (_currentQuotation.readByCustomer == false && !isArtist)) {
      _bloc.add(QuotationListEvent.markAsRead(_currentQuotation.id.toString()));
    }

    // Get fresh data without showing loading indicator
    _bloc.add(QuotationListEvent.getQuotationById(_currentQuotation.id.toString()));
  }

  // Method to refresh the quotation data
  Future<void> _refreshQuotation() async {
    setState(() {
      _isRefreshing = true;
    });

    // Get the latest quotation data
    _bloc.add(
        QuotationListEvent.getQuotationById(_currentQuotation.id.toString()));
        
    // Safety timeout to ensure loading indicator doesn't get stuck
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted && _isRefreshing) {
        setState(() {
          _isRefreshing = false;
        });
      }
    });
  }

  // Updates the current quotation when the bloc state changes
  void _updateQuotationFromState() {
    final state = _bloc.state;
    if (state is QuotationListLoaded) {
      final updatedQuotation = state.quotations.firstWhere(
        (q) => q.id == _currentQuotation.id,
        orElse: () => _currentQuotation,
      );

      if (updatedQuotation.id == _currentQuotation.id) {
        // Always update the UI when we have a matching quotation, even if it seems identical
        // Sometimes backend updates don't change all properties but we still need to refresh
        setState(() {
          _currentQuotation = updatedQuotation;
          _isRefreshing = false;
        });
      } else {
        // If no matching quotation found, still reset the refreshing state
        if (_isRefreshing) {
          setState(() {
            _isRefreshing = false;
          });
        }
      }
    } else if (_isRefreshing && state is QuotationListError) {
      // Reset refreshing flag on error too
      setState(() {
        _isRefreshing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    final counterpartInfo = isArtist
        ? CounterpartInfo.fromCustomer(_currentQuotation.customer)
        : CounterpartInfo.fromArtist(_currentQuotation.artist);

    return WillPopScope(
      onWillPop: () async {
        // Refresh notifications when going back
        _notificationsBloc.add(const NotificationsEvent.refreshNotifications());
        return true;
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text(l10n.quotationDetails, style: TextStyleTheme.headline2),
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _refreshQuotation,
              tooltip: l10n.refresh,
            ),
          ],
        ),
        body: BlocListener<QuotationListBloc, QuotationListState>(
          listener: (context, state) {
            _updateQuotationFromState();
          },
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _isRefreshing ? 3 : 0,
                child: const LinearProgressIndicator(
                  backgroundColor: primaryColor,
                  valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
                ),
              ),
              // Add Open quotation banner for artists
              if (isArtist && _currentQuotation.status == QuotationStatus.open)
                _OpenQuotationBanner(),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: _refreshQuotation,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _CounterpartHeader(
                          info: counterpartInfo,
                          isArtist: isArtist,
                          quotation: _currentQuotation,
                        ),
                        _MainQuotationInfo(quotation: _currentQuotation),
                        if (_currentQuotation.history != null &&
                            _currentQuotation.history!.isNotEmpty)
                          _QuotationTimeline(
                              history: _currentQuotation.history!),
                        QuotationImages(quotation: _currentQuotation),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: explorerSecondaryColor,
                  border: Border(
                    top: BorderSide(
                      color: tertiaryColor.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
                child: QuotationActionButtons(
                  actionManager: QuotationActionManager(
                    context: context,
                    quotation: _currentQuotation,
                    session: context.read<AuthBloc>().state.session,
                    l10n: l10n,
                    onActionExecuted: (actionType, quotationId) async {
                      // Handle any action type
                      _bloc.add(const QuotationListEvent.refreshCurrentTab());

                      if (actionType == QuotationActionType.cancel) {
                        _bloc.add(
                            QuotationListEvent.cancelQuotation(quotationId));
                        await Future.delayed(const Duration(seconds: 1));
                        if (!context.mounted) return;
                        Navigator.of(context).pop(true);
                      } else {
                        // Refresh the current quotation after a delay to allow backend to process
                        // Use a longer delay to ensure the backend has processed the action
                        await Future.delayed(const Duration(seconds: 1));
                        if (context.mounted) {
                          _refreshQuotation();
                          
                          // Try another refresh after a bit longer if needed
                          Future.delayed(const Duration(seconds: 2), () {
                            if (context.mounted) {
                              _refreshQuotation();
                            }
                          });
                        }
                      }

                      // Clear notifications related to this quotation
                      _notificationsBloc.add(
                          NotificationsEvent.clearQuotationNotifications(
                              quotationId));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CounterpartHeader extends StatelessWidget {
  final CounterpartInfo info;
  final bool isArtist;
  final Quotation quotation;

  const _CounterpartHeader({
    required this.info,
    required this.isArtist,
    required this.quotation,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (info.profileThumbnail != null)
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(info.profileThumbnail!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                else
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF686D90),
                    ),
                    child: Center(
                      child: Text(
                        info.firstLetter,
                        style: TextStyleTheme.headline2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isArtist ? l10n.customer : l10n.artist,
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: tertiaryColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        info.displayName,
                        style: TextStyleTheme.headline3,
                      ),
                      if (!isArtist && info.username != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          '@${info.username}',
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: tertiaryColor,
                          ),
                        ),
                      ],
                      if (info.contactInfo != null) ...[
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.email_outlined,
                              size: 16,
                              color: tertiaryColor,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                info.contactInfo!,
                                style: TextStyleTheme.bodyText2.copyWith(
                                  color: tertiaryColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            if (quotation.location != null) ...[
              const Divider(height: 32),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: tertiaryColor,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.location,
                          style: TextStyleTheme.subtitle2.copyWith(
                            color: tertiaryColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          quotation.location!.formattedAddress,
                          style: TextStyleTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _MainQuotationInfo extends StatelessWidget {
  final Quotation quotation;

  const _MainQuotationInfo({required this.quotation});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fecha de creación y estado actual
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.createdAt,
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: tertiaryColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: tertiaryColor,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            DateFormat('yyyy-MM-dd HH:mm')
                                .format(quotation.createdAt),
                            style: TextStyleTheme.bodyText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      l10n.currentStatus,
                      style: TextStyleTheme.subtitle2.copyWith(
                        color: tertiaryColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    _StatusChip(status: quotation.status),
                  ],
                ),
              ],
            ),
            const Divider(height: 32),

            // Special section for Open quotations when viewed by an artist
            if (isArtist && quotation.status == QuotationStatus.open)
              _buildOpenQuotationSection(context),

            // Descripción
            Text(
              l10n.description,
              style: TextStyleTheme.subtitle2.copyWith(
                color: tertiaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              quotation.description,
              style: TextStyleTheme.bodyText1,
            ),
            const SizedBox(height: 16),

            // Información adicional según el estado
            ..._buildStateSpecificInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOpenQuotationSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: redColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.priority_high,
                color: redColor,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Esperando Propuestas',
                      style: TextStyleTheme.subtitle2.copyWith(
                        color: redColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Este cliente está esperando recibir ofertas de tatuadores. Revisa los detalles y envía tu propuesta.',
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 24),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: const Text('Enviar Propuesta'),
            style: ElevatedButton.styleFrom(
              backgroundColor: redColor,
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: () {
              // Create a proper QuotationAction for the reply action
              final action = QuotationAction(
                type: QuotationActionType.reply,
                label: 'Enviar Propuesta',
                icon: Icons.send,
                isPrimary: true,
                routeName: '/artistQuotationResponse',
                routeArguments: {'quotationId': quotation.id.toString()},
              );
              
              // Create the action manager and execute the action
              final actionManager = QuotationActionManager(
                context: context,
                quotation: quotation,
                session: context.read<AuthBloc>().state.session,
                l10n: S.of(context),
                onActionExecuted: (_, quotationId) {
                  // Simple refresh approach
                  context.read<QuotationListBloc>().add(
                        QuotationListEvent.getQuotationById(quotationId),
                      );
                },
              );
              
              actionManager.executeAction(action);
            },
          ),
        ),
        const Divider(height: 24),
      ],
    );
  }

  List<Widget> _buildStateSpecificInfo(BuildContext context) {
    final l10n = S.of(context);
    final List<Widget> widgets = [];

    // Stencil (si existe)
    if (quotation.stencil != null) {
      widgets.addAll([
        const Divider(height: 24),
        Text(
          'Diseño seleccionado',
          style: TextStyleTheme.subtitle2.copyWith(
            color: tertiaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        _StencilPreviewWidget(stencil: quotation.stencil!),
        const SizedBox(height: 16),
      ]);
    }

    // Costo estimado (si existe)
    if (quotation.estimatedCost != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.attach_money,
          title: l10n.estimatedCost,
          content: '\$${quotation.estimatedCost!.amount.toStringAsFixed(2)}',
          highlight: true,
        ),
        const SizedBox(height: 16),
      ]);
    }

    // Fecha de cita (si existe)
    if (quotation.appointmentDate != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.event,
          title: l10n.appointmentDateTime,
          content:
              DateFormat('yyyy-MM-dd HH:mm').format(quotation.appointmentDate!),
        ),
        const SizedBox(height: 16),
      ]);
    }

    // Duración de la cita (si existe)
    if (quotation.appointmentDuration != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.access_time,
          title: l10n.appointmentDuration,
          content: '${quotation.appointmentDuration} ${l10n.hours}',
        ),
        const SizedBox(height: 16),
      ]);
    }

    // Para estados cancelados o rechazados, mostrar la razón si existe
    if (quotation.status == QuotationStatus.canceled &&
        quotation.cancelReasonDetails != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.cancel_outlined,
          title: l10n.cancellationReason,
          content: quotation.cancelReasonDetails!,
          isWarning: true,
        ),
      ]);
    } else if (quotation.status == QuotationStatus.rejected &&
        quotation.rejectReasonDetails != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.close_outlined,
          title: l10n.rejectionReason,
          content: quotation.rejectReasonDetails!,
          isWarning: true,
        ),
      ]);
    }

    return widgets;
  }
}

class _InfoSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final bool highlight;
  final bool isWarning;

  const _InfoSection({
    required this.icon,
    required this.title,
    required this.content,
    this.highlight = false,
    this.isWarning = false,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor = isWarning
        ? Colors.red
        : highlight
            ? secondaryColor
            : Colors.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleTheme.subtitle2.copyWith(
            color: tertiaryColor,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(icon, color: contentColor, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                content,
                style: (highlight
                        ? TextStyleTheme.headline3
                        : TextStyleTheme.bodyText1)
                    .copyWith(color: contentColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuotationTimeline extends StatelessWidget {
  final List<QuotationHistory> history;

  const _QuotationTimeline({required this.history});

  @override
  Widget build(BuildContext context) {
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
              l10n.quotationHistory,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: history.length,
              itemBuilder: (context, index) {
                final item = history[index];
                return _TimelineItem(
                  history: item,
                  isLast: index == history.length - 1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final QuotationHistory history;
  final bool isLast;

  const _TimelineItem({
    required this.history,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: isLast ? 16 : 12,
                height: isLast ? 16 : 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _getStatusColor(history.newStatus),
                  border: isLast
                      ? Border.all(
                          color: Colors.white,
                          width: 2,
                        )
                      : null,
                ),
              ),
              if (!isLast)
                Container(
                  width: 2,
                  height: 40,
                  color: tertiaryColor.withOpacity(0.5),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getStatusChangeText(history, l10n),
                  style: TextStyleTheme.bodyText1.copyWith(
                    fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                    fontSize: isLast ? 16 : null,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('yyyy-MM-dd HH:mm').format(history.changedAt),
                  style: TextStyleTheme.caption.copyWith(
                    color: isLast ? Colors.white70 : tertiaryColor,
                    fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                ..._buildAdditionalDetails(history, l10n),
                if (!isLast) const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildAdditionalDetails(QuotationHistory history, S l10n) {
    final List<Widget> details = [];

    // Cambios en el costo estimado
    if (history.previousEstimatedCost != null &&
        history.newEstimatedCost != null) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          '${l10n.estimatedCostChangedFrom} \$${history.previousEstimatedCost} ${l10n.to} \$${history.newEstimatedCost}',
          style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
        ),
      );
    }

    // Cambios en la fecha de cita
    if (history.previousAppointmentDate != null &&
        history.newAppointmentDate != null) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          '${l10n.appointmentDateChangedFrom} ${DateFormat('yyyy-MM-dd HH:mm').format(history.previousAppointmentDate!)} ${l10n.to} ${DateFormat('yyyy-MM-dd HH:mm').format(history.newAppointmentDate!)}',
          style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
        ),
      );
    }

    // Detalles según el estado
    String? stateDetails = _getStateSpecificDetails(history, l10n);
    if (stateDetails != null) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          stateDetails,
          style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
        ),
      );
    }

    // Detalles adicionales generales
    if (history.additionalDetails?.isNotEmpty == true) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          history.additionalDetails!,
          style: TextStyleTheme.bodyText2,
        ),
      );
    }

    return details;
  }

  String? _getStateSpecificDetails(QuotationHistory history, S l10n) {
    // Apelación
    if (history.newStatus == QuotationStatus.appealed &&
        history.appealedReason != null) {
      return '${l10n.appealReason}: ${_getAppealReasonText(history.appealedReason!, l10n)}';
    }

    // Rechazo
    if (history.newStatus == QuotationStatus.rejected &&
        history.rejectionReason != null) {
      return '${l10n.rejectionReason}: ${history.rejectionReason}';
    }

    // Cancelación
    if (history.newStatus == QuotationStatus.canceled &&
        history.cancellationReason != null) {
      return '${l10n.cancellationReason}: ${history.cancellationReason}';
    }

    return null;
  }

  String _getAppealReasonText(QuotationCustomerAppealReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerAppealReason.dateChange:
        return l10n.appealReasonDateChange;
      case QuotationCustomerAppealReason.priceChange:
        return l10n.appealReasonPriceChange;
      case QuotationCustomerAppealReason.designChange:
        return l10n.appealReasonDesignChange;
      case QuotationCustomerAppealReason.other:
        return l10n.appealReasonOther;
    }
  }

  Color _getStatusColor(QuotationStatus status) {
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
        return redColor;
    }
  }

  String _getStatusChangeText(QuotationHistory history, S l10n) {
    final userType = _getUserTypeText(history.changedByUserType, l10n);
    final action =
        _getActionText(history.previousStatus, history.newStatus, l10n);

    return '$userType $action';
  }

  String _getUserTypeText(QuotationRole userType, S l10n) {
    switch (userType) {
      case QuotationRole.artist:
        return l10n.artist;
      case QuotationRole.customer:
        return l10n.customer;
      case QuotationRole.system:
        return l10n.system;
    }
  }

  String _getActionText(QuotationStatus from, QuotationStatus to, S l10n) {
    if (from == QuotationStatus.pending && to == QuotationStatus.quoted) {
      return l10n.quotedTheRequest;
    }
    if (from == QuotationStatus.quoted && to == QuotationStatus.accepted) {
      return l10n.acceptedTheQuotation;
    }
    if (to == QuotationStatus.rejected) {
      return l10n.rejectedTheQuotation;
    }
    if (to == QuotationStatus.appealed) {
      return l10n.appealedTheQuotation;
    }
    if (to == QuotationStatus.canceled) {
      return l10n.canceledTheQuotation;
    }
    if (to == QuotationStatus.open) {
      return "Creó una solicitud abierta";
    }

    return '${l10n.changedStatusFrom} ${_getStatusText(from, l10n)} ${l10n.to} ${_getStatusText(to, l10n)}';
  }

  String _getStatusText(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.statusPending;
      case QuotationStatus.quoted:
        return l10n.statusQuoted;
      case QuotationStatus.accepted:
        return l10n.statusAccepted;
      case QuotationStatus.rejected:
        return l10n.statusRejected;
      case QuotationStatus.appealed:
        return l10n.statusAppealed;
      case QuotationStatus.canceled:
        return l10n.statusCanceled;
      case QuotationStatus.open:
        return "Abierta";
    }
  }
}

class _StatusChip extends StatelessWidget {
  final QuotationStatus status;

  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getStatusColor(status).withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: _getStatusColor(status),
          width: 1,
        ),
      ),
      child: Text(
        _getStatusText(status, S.of(context)),
        style: TextStyleTheme.button.copyWith(
          color: _getStatusColor(status),
        ),
      ),
    );
  }

  Color _getStatusColor(QuotationStatus status) {
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
        return redColor;
    }
  }

  String _getStatusText(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.statusPending;
      case QuotationStatus.quoted:
        return l10n.statusQuoted;
      case QuotationStatus.accepted:
        return l10n.statusAccepted;
      case QuotationStatus.rejected:
        return l10n.statusRejected;
      case QuotationStatus.appealed:
        return l10n.statusAppealed;
      case QuotationStatus.canceled:
        return l10n.statusCanceled;
      case QuotationStatus.open:
        return "Abierta";
    }
  }
}

class _StencilPreviewWidget extends StatelessWidget {
  final Stencil stencil;

  const _StencilPreviewWidget({required this.stencil});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.25).toColor(),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: CachedNetworkImage(
                imageUrl: stencil.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
                  child: const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
                  child: const Icon(Icons.error, color: redColor, size: 32),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stencil.title,
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                if (stencil.description != null && stencil.description!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    stencil.description!,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white.withOpacity(0.8),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OpenQuotationBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: redColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: redColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.lightbulb_outline,
            color: redColor,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Solicitud de Cotización Abierta',
                  style: TextStyleTheme.subtitle1.copyWith(
                    color: redColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Este cliente está buscando ofertas. Puedes enviar tu cotización para ganar este proyecto.',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
