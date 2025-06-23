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

            // Combine and sort by time
            final allItems = <_ScheduleItem>[
              ...dayEvents
                  .map((e) => _ScheduleItem(item: e, time: e.startDate)),
              ...dayQuotations
                  .map((q) => _ScheduleItem(item: q, time: q.proposedDate!)),
            ]..sort((a, b) => a.time.compareTo(b.time));

            if (allItems.isEmpty) {
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

            return Card(
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
                        Text(
                          'Agenda del ${DateFormat('dd MMMM', 'es').format(selectedDate)}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Chip(
                          label: Text('${allItems.length} items'),
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                        ),
                      ],
                    ),
                  ),
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
                ],
              ),
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
          Text(event.description),
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
        child: Icon(
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
}

class _ScheduleItem {
  final dynamic item;
  final DateTime time;

  _ScheduleItem({required this.item, required this.time});
}
