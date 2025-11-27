import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';

class ScheduleEventsList extends StatelessWidget {
  final DateTime selectedDate;
  final Function(ScheduleEvent) onEventTap;
  final Function(ScheduleQuotation) onQuotationTap;

  const ScheduleEventsList({
    super.key,
    required this.selectedDate,
    required this.onEventTap,
    required this.onQuotationTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleAssistantBloc, ScheduleAssistantState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (events,
              quotations,
              availability,
              suggestedSlots,
              workingHours,
              summary,
              rangeStart,
              rangeEnd,
              selectedQuotation,
              selectedTimeSlot,
              showAvailabilityDensity,
              isCreatingEvent,
              selectedDuration) {
            // Filter items for selected date
            final dayEvents = events
                .where((e) => _isSameDay(e.startDate, selectedDate))
                .toList();
            final dayQuotations = quotations
                .where((q) =>
                    q.proposedDate != null &&
                    _isSameDay(q.proposedDate!, selectedDate))
                .toList();
            
            // Get pending quotations that need action
            final pendingQuotations = quotations
                .where((q) => q.actionRequired && q.proposedDate == null)
                .toList();

            // Combine and sort by time
            final allItems = <_ScheduleItem>[
              ...dayEvents
                  .map((e) => _ScheduleItem(item: e, time: e.startDate)),
              ...dayQuotations
                  .map((q) => _ScheduleItem(item: q, time: q.proposedDate!)),
            ]..sort((a, b) => a.time.compareTo(b.time));

            if (allItems.isEmpty && pendingQuotations.isEmpty) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.event_available,
                          size: 48,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No hay eventos para este día',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }

            return Column(
              children: [
                // Pending quotations section
                if (pendingQuotations.isNotEmpty) ...[
                  Card(
                    elevation: 2,
                    color: Colors.orange.withOpacity(0.05),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.orange.withOpacity(0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.notification_important,
                                color: Colors.orange[700],
                                size: 24,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Cotizaciones Pendientes',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.orange[700],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  '${pendingQuotations.length}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: pendingQuotations.length,
                          separatorBuilder: (context, index) => const Divider(height: 1),
                          itemBuilder: (context, index) {
                            final quotation = pendingQuotations[index];
                            return _buildPendingQuotationTile(
                              context,
                              quotation,
                              () => onQuotationTap(quotation),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
                // Regular day events card
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('EEEE', 'es').format(selectedDate),
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  DateFormat('d MMMM yyyy', 'es').format(selectedDate),
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ],
                            ),
                            if (allItems.isNotEmpty)
                              Chip(
                                label: Text('${allItems.length} eventos'),
                                backgroundColor:
                                    Theme.of(context).primaryColor.withOpacity(0.1),
                              ),
                          ],
                        ),
                      ),
                      if (allItems.isNotEmpty) ...[
                        const Divider(height: 1),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: allItems.length,
                          separatorBuilder: (context, index) =>
                              const Divider(height: 1),
                          itemBuilder: (context, index) {
                            final item = allItems[index];

                            if (item.item is ScheduleEvent) {
                              return _buildEventTile(
                                context,
                                item.item as ScheduleEvent,
                                () => onEventTap(item.item as ScheduleEvent),
                              );
                            } else {
                              return _buildQuotationTile(
                                context,
                                item.item as ScheduleQuotation,
                                () => onQuotationTap(item.item as ScheduleQuotation),
                              );
                            }
                          },
                        ),
                      ] else
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.event_available,
                                  size: 48,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'No hay eventos programados',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildEventTile(
      BuildContext context, ScheduleEvent event, VoidCallback onTap) {
    final duration = event.endDate.difference(event.startDate).inMinutes;
    final theme = Theme.of(context);
    final timeRange = '${DateFormat('HH:mm').format(event.startDate)} - ${DateFormat('HH:mm').format(event.endDate)}';

    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: _getEventColor(event.category).withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('HH:mm').format(event.startDate),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: _getEventColor(event.category),
              ),
            ),
            Text(
              '${duration}min',
              style: TextStyle(
                fontSize: 10,
                color: _getEventColor(event.category).withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
      title: Text(
        event.title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Time range with date
          Row(
            children: [
              Icon(Icons.schedule, size: 14, color: theme.colorScheme.primary),
              const SizedBox(width: 4),
              Text(
                timeRange,
                style: TextStyle(
                  fontSize: 12,
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            event.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          if (event.customerName.isNotEmpty) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.person, size: 14, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  event.customerName,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStatusChip(context, event.status, event.category),
          if (event.conflictsWith != null && event.conflictsWith!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Icon(
                Icons.warning,
                size: 16,
                color: Colors.orange[700],
              ),
            ),
        ],
      ),
      isThreeLine: true,
    );
  }

  Widget _buildQuotationTile(
      BuildContext context, ScheduleQuotation quotation, VoidCallback onTap) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.request_quote,
          color: Colors.blue,
        ),
      ),
      title: Text(
        'Cotización - ${quotation.customerName}',
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            quotation.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          if (quotation.estimatedCost != null) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.attach_money, size: 14, color: Colors.grey[600]),
                Text(
                  _formatMoney(quotation.estimatedCost!),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (quotation.proposedDuration != null) ...[
                  const SizedBox(width: 8),
                  Icon(Icons.timer, size: 14, color: Colors.grey[600]),
                  const SizedBox(width: 2),
                  Text(
                    '${quotation.proposedDuration}min',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ],
            ),
          ],
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (quotation.actionRequired)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Acción',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          if (quotation.offers != null && quotation.offers!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                '${quotation.offers!.length} ofertas',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
      isThreeLine: true,
    );
  }

  Widget _buildPendingQuotationTile(
      BuildContext context, ScheduleQuotation quotation, VoidCallback onTap) {
    final theme = Theme.of(context);
    
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon with urgency indicator
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.orange.withOpacity(0.3),
                  width: 2,
                ),
              ),
              child: Stack(
                children: [
                  const Center(
                    child: Icon(
                      Icons.request_quote,
                      color: Colors.orange,
                      size: 28,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title with customer name
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          quotation.customerName,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Action deadline if available
                      if (quotation.actionDeadline != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                                color: Colors.red[700],
                              ),
                              const SizedBox(width: 4),
                              Text(
                                _formatDeadline(quotation.actionDeadline!),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Description
                  Text(
                    quotation.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  // Bottom row with cost and status
                  Row(
                    children: [
                      if (quotation.estimatedCost != null) ...[
                        Icon(
                          Icons.attach_money,
                          size: 16,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _formatMoney(quotation.estimatedCost!),
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 16),
                      ],
                      // Quotation type badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: _getQuotationTypeColor(quotation.quotationType)
                              .withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: _getQuotationTypeColor(quotation.quotationType)
                                .withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          quotation.quotationType.toUpperCase(),
                          style: TextStyle(
                            fontSize: 10,
                            color: _getQuotationTypeColor(quotation.quotationType),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      // Action button
                      TextButton.icon(
                        onPressed: onTap,
                        icon: const Icon(Icons.arrow_forward, size: 16),
                        label: const Text('Responder'),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.orange,
                          backgroundColor: Colors.orange.withOpacity(0.1),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(
      BuildContext context, String status, String category) {
    Color color;
    String label;

    switch (category) {
      case 'confirmed':
        color = Colors.green;
        label = 'Confirmado';
        break;
      case 'tentative':
        color = Colors.orange;
        label = 'Tentativo';
        break;
      default:
        color = Colors.grey;
        label = status;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color _getEventColor(String category) {
    switch (category) {
      case 'confirmed':
        return Colors.green;
      case 'tentative':
        return Colors.orange;
      case 'actionable':
        return Colors.red;
      case 'opportunity':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  String _formatMoney(EstimatedCost cost) {
    final formatter = NumberFormat.currency(
      locale: cost.currency == 'CLP' ? 'es_CL' : 'en_US',
      symbol: cost.currency == 'USD' ? '\$' : '\$',
      decimalDigits: 0,
    );
    return formatter.format(cost.amount);
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  Color _getQuotationTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'direct':
        return Colors.purple;
      case 'open':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  String _formatDeadline(DateTime deadline) {
    final now = DateTime.now();
    final difference = deadline.difference(now);
    
    if (difference.isNegative) {
      return 'Vencido';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h restantes';
    } else {
      return '${difference.inDays}d restantes';
    }
  }
}

class _ScheduleItem {
  final dynamic item;
  final DateTime time;

  _ScheduleItem({required this.item, required this.time});
}
