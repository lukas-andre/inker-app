import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
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

class QuotationDetailsPage extends StatelessWidget {
  final Quotation quotation;

  const QuotationDetailsPage({
    super.key,
    required this.quotation,
  });


  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    final counterpartInfo = isArtist
        ? CounterpartInfo.fromCustomer(quotation.customer)
        : CounterpartInfo.fromArtist(quotation.artist);
    final bloc = context.read<QuotationListBloc>();

    if ((quotation.readByArtist == false && isArtist) ||
        (quotation.readByCustomer == false && !isArtist)) {
      bloc.add(QuotationListEvent.markAsRead(quotation.id.toString()));
    }

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(l10n.quotationDetails, style: TextStyleTheme.headline2),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CounterpartHeader(
                    info: counterpartInfo,
                    isArtist: isArtist,
                    quotation: quotation,
                  ),
                  _MainQuotationInfo(quotation: quotation),
                  if (quotation.history != null &&
                      quotation.history!.isNotEmpty)
                    _QuotationTimeline(history: quotation.history!),
                  QuotationImages(quotation: quotation),
                ],
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
                quotation: quotation,
                session: context.read<AuthBloc>().state.session,
                l10n: l10n,
                onActionExecuted: (actionType, quotationId) async {
                  if (actionType == QuotationActionType.cancel) {
                    bloc.add(QuotationListEvent.cancelQuotation(quotationId));
                    await Future.delayed(const Duration(seconds: 1));
                    if (!context.mounted) return;
                    Navigator.of(context).pop(true);
                    bloc.add(const QuotationListEvent.refreshCurrentTab());
                  }
                },
              ),
            ),
          ),
        ],
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
                            Icon(
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
                  Icon(
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
                          Icon(
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

  List<Widget> _buildStateSpecificInfo(BuildContext context) {
    final l10n = S.of(context);
    final List<Widget> widgets = [];

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
                  border: isLast ? Border.all(
                    color: Colors.white,
                    width: 2,
                  ) : null,
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
    }
  }
}
