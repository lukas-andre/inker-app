import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';

class OffersListCard extends StatelessWidget {
  final List<QuotationOfferListItemDto> offers;

  const OffersListCard({
    super.key,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    if (offers.isEmpty) {
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(l10n.noOffersYet, style: Theme.of(context).textTheme.bodyLarge),
        ),
      );
    }
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.offers, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            ...offers.map((offer) => _OfferRow(offer: offer)).toList(),
          ],
        ),
      ),
    );
  }
}

class _OfferRow extends StatelessWidget {
  final QuotationOfferListItemDto offer;
  const _OfferRow({required this.offer});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Card(
      color: Colors.black12,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.local_offer, color: Colors.blueAccent),
        title: Text(offer.artistName ?? '-', style: Theme.of(context).textTheme.bodyLarge),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (offer.estimatedCost != null)
              Text(offer.estimatedCost!.formatWithSymbol(), style: Theme.of(context).textTheme.bodyMedium),
            if (offer.message != null && offer.message!.isNotEmpty)
              Text('${l10n.message}: ${offer.message!}', style: Theme.of(context).textTheme.bodySmall),
            if (offer.messages.isNotEmpty)
              Text(l10n.messagesCount(offer.messages.length, l10n.messages), style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
} 