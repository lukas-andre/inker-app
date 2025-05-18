import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/generated/l10n.dart';

class QuotationDetailsCard extends StatelessWidget {
  final Quotation quotation;

  const QuotationDetailsCard({
    super.key,
    required this.quotation,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final DateFormat dateFormat = DateFormat('d MMM yyyy', Intl.defaultLocale);
    final statusColor = _getQuotationStatusColor(quotation.status);
    final statusText = _getQuotationStatusText(context, quotation.status);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).cardColor,
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
                    l10n.quotation,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
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
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: statusColor),
                  ),
                ),
              ],
            ),
            const Divider(height: 32),
            _InfoRow(
              icon: Icons.description_outlined,
              title: l10n.description,
              content: '',
            ),
            if (quotation.description.isNotEmpty) ...[
              const SizedBox(height: 8),
              ...quotation.description.split('\n').map((p) =>
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    p.trim(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ] else ...[
              const SizedBox(height: 8),
              Text('-', style: Theme.of(context).textTheme.bodyLarge),
            ],
            if (quotation.estimatedCost != null)
              _InfoRow(
                icon: Icons.attach_money,
                title: l10n.estimatedCost,
                content: quotation.estimatedCost!.formatWithSymbol(),
              ),
            if (quotation.minBudget != null || quotation.maxBudget != null)
              _InfoRow(
                icon: Icons.account_balance_wallet_outlined,
                title: l10n.budget,
                content: _formatBudget(quotation),
              ),
            if (quotation.customer != null)
              _InfoRow(
                icon: Icons.person_outline,
                title: l10n.customer,
                content: _formatFullName(quotation.customer!.firstName, quotation.customer!.lastName),
              ),
            if (quotation.artist != null)
              _InfoRow(
                icon: Icons.brush_outlined,
                title: l10n.artist,
                content: _formatFullName(quotation.artist!.firstName, quotation.artist!.lastName),
              ),
            _InfoRow(
              icon: Icons.calendar_today,
              title: l10n.createdAt,
              content: dateFormat.format(quotation.createdAt),
            ),
            if (quotation.tattooDesignImageUrl != null && quotation.tattooDesignImageUrl!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(l10n.proposedDesign, style: Theme.of(context).textTheme.titleSmall),
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
              Text(l10n.referenceImages, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 8),
              _buildImagesGrid(quotation.referenceImages!.metadata),
            ],
          ],
        ),
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
    final l10n = S.of(context);
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
        return l10n.statusOpen;
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
        Icon(icon, color: Colors.grey, size: 20),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
} 