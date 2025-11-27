import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';

class QuotationContextPanel extends StatelessWidget {
  final ScheduleQuotation quotation;
  final VoidCallback onClose;
  
  const QuotationContextPanel({
    super.key,
    required this.quotation,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Theme.of(context).primaryColor.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Cotización Seleccionada',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onClose,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            const SizedBox(height: 12),
            
            // Customer info
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  backgroundImage: quotation.customerAvatar != null
                      ? NetworkImage(quotation.customerAvatar!)
                      : null,
                  child: quotation.customerAvatar == null
                      ? Text(
                          quotation.customerName.isNotEmpty 
                              ? quotation.customerName[0].toUpperCase()
                              : '?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quotation.customerName,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        _getQuotationTypeLabel(quotation.quotationType),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                _buildStatusChip(context, quotation.status),
              ],
            ),
            const SizedBox(height: 16),
            
            // Description
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Descripción',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    quotation.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Quotation details
            Row(
              children: [
                Expanded(
                  child: _buildDetailItem(
                    context,
                    Icons.attach_money,
                    'Costo estimado',
                    quotation.estimatedCost != null
                        ? _formatMoney(quotation.estimatedCost!)
                        : 'Por definir',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildDetailItem(
                    context,
                    Icons.timer,
                    'Duración',
                    quotation.proposedDuration != null
                        ? '${quotation.proposedDuration} min'
                        : 'Por definir',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            
            // Proposed date if any
            if (quotation.proposedDate != null)
              _buildDetailItem(
                context,
                Icons.calendar_today,
                'Fecha propuesta',
                DateFormat('dd/MM/yyyy HH:mm').format(quotation.proposedDate!),
              ),
            
            // Action deadline
            if (quotation.actionDeadline != null) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange[300]!),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.orange[700],
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Responder antes del ${DateFormat('dd/MM/yyyy').format(quotation.actionDeadline!)}',
                        style: TextStyle(
                          color: Colors.orange[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            
            // Offers section
            if (quotation.offers != null && quotation.offers!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(
                'Ofertas (${quotation.offers!.length})',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 8),
              ...quotation.offers!.take(2).map((offer) => _buildOfferCard(context, offer)),
              if (quotation.offers!.length > 2)
                TextButton(
                  onPressed: () {
                    // TODO: Show all offers
                  },
                  child: Text('Ver todas las ofertas (${quotation.offers!.length})'),
                ),
            ],
            
            // Actions
            const SizedBox(height: 16),
            Row(
              children: [
                if (quotation.canSubmitOffer)
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        context.read<ScheduleAssistantBloc>().add(
                          ScheduleAssistantEvent.quotationActionTriggered(
                            quotationId: quotation.id,
                            action: QuotationAction.submitOffer,
                          ),
                        );
                      },
                      icon: const Icon(Icons.local_offer),
                      label: const Text('Enviar Oferta'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                if (quotation.canRespond && quotation.canSubmitOffer)
                  const SizedBox(width: 8),
                if (quotation.canRespond)
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        context.read<ScheduleAssistantBloc>().add(
                          ScheduleAssistantEvent.quotationActionTriggered(
                            quotationId: quotation.id,
                            action: QuotationAction.respond,
                          ),
                        );
                      },
                      icon: const Icon(Icons.message),
                      label: const Text('Responder'),
                    ),
                  ),
              ],
            ),
            
            // Create event button
            if (quotation.status == 'accepted' || quotation.proposedDate != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // The parent will handle event creation
                    },
                    icon: const Icon(Icons.event_available),
                    label: const Text('Crear Evento desde Cotización'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildStatusChip(BuildContext context, String status) {
    Color color;
    IconData icon;
    
    switch (status) {
      case 'pending':
        color = Colors.orange;
        icon = Icons.hourglass_empty;
        break;
      case 'quoted':
        color = Colors.blue;
        icon = Icons.local_offer;
        break;
      case 'accepted':
        color = Colors.green;
        icon = Icons.check_circle;
        break;
      case 'rejected':
        color = Colors.red;
        icon = Icons.cancel;
        break;
      default:
        color = Colors.grey;
        icon = Icons.info;
    }
    
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            _getStatusLabel(status),
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 4),
    );
  }
  
  Widget _buildDetailItem(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: Colors.grey[600]),
              const SizedBox(width: 4),
              Text(
                label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildOfferCard(BuildContext context, SchedulerQuotationOffer offer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ID: ${offer.id.substring(0, 8)}...',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                DateFormat('dd/MM HH:mm').format(offer.createdAt),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
          const SizedBox(height: 4),
          if (offer.estimatedCost != null)
            Text(
              _formatMoney(offer.estimatedCost!),
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          if (offer.message != null) ...[
            const SizedBox(height: 4),
            Text(
              offer.message!,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.schedule, size: 14, color: Colors.grey[600]),
              const SizedBox(width: 4),
              Text(
                '${DateFormat('dd/MM HH:mm').format(offer.start)} - ${DateFormat('HH:mm').format(offer.end)}',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  String _getQuotationTypeLabel(String type) {
    switch (type) {
      case 'DIRECT':
        return 'Cotización Directa';
      case 'OPEN':
        return 'Cotización Abierta';
      default:
        return type;
    }
  }
  
  String _getStatusLabel(String status) {
    switch (status) {
      case 'pending':
        return 'Pendiente';
      case 'quoted':
        return 'Cotizada';
      case 'accepted':
        return 'Aceptada';
      case 'rejected':
        return 'Rechazada';
      default:
        return status;
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
}