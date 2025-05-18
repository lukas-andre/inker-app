import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/quotation/dtos/participating_quotations_response.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_status.l10n.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';

// Define QuotationType if it doesn't exist globally
enum QuotationType { DIRECT, OPEN, PARTICIPATING }

// Reusable ViewModel for QuotationCard
class QuotationCardViewModel {
  final String id; // Primary ID (QuotationID for Direct/Open, OfferID for Participating)
  final String quotationId; // Always the Quotation ID
  final QuotationType type;
  final CounterpartInfo counterpartInfo;
  final bool isArtistView; // Is the current user an artist?
  final String statusText;
  final Color statusColor;
  final IconData statusIcon;
  final DateTime createdAt; // Main creation date (Quotation for Direct/Open, Offer for Participating)
  final String description;
  final Location? location;
  final String? distanceToArtistKm;
  final List<MultimediaMetadata> referenceImages;
  final List<MultimediaMetadata> proposedDesigns; // Only for DIRECT
  final Money? referenceBudget;
  final String? tattooDesignImageUrl;

  // --- Type Specific Fields ---
  // Direct
  final bool isUnread; // For Direct Quotations
  final String? estimatedCost; // Direct: Customer est cost, Participating: Artist Offer Cost
  final String? appointmentDate; // Direct Only
  final String? appointmentDuration; // Direct or Participating Offer

  // Open
  final bool hasOffered; // For Open Quotations
  final QuotationOfferListItemDto? artistOffer; // Details of artist's offer on an Open Quotation

  // Participating
  // Uses id for Offer ID, quotationId for Quotation ID
  // Uses estimatedCost for offer cost
  // Uses appointmentDuration for offer duration

  QuotationCardViewModel({
    required this.id,
    required this.quotationId,
    required this.type,
    required this.counterpartInfo,
    required this.isArtistView,
    required this.statusText,
    required this.statusColor,
    required this.statusIcon,
    required this.createdAt,
    required this.description,
    this.location,
    this.distanceToArtistKm,
    this.referenceImages = const [],
    this.proposedDesigns = const [],
    // Direct specific
    this.isUnread = false,
    this.estimatedCost,
    this.appointmentDate,
    this.appointmentDuration,
    // Open specific
    this.hasOffered = false,
    this.artistOffer,
    this.referenceBudget,
    this.tattooDesignImageUrl,
  });

  // --- Factory for DIRECT Quotation ---
  factory QuotationCardViewModel.fromDirectQuotation(
      Quotation quotation, bool isArtist, S l10n) {
    final isUnread = isArtist ? !quotation.readByArtist : !quotation.readByCustomer;
    final statusEnum = QuotationStatus.values
        .firstWhere((e) => e.name == quotation.status, orElse: () => QuotationStatus.pending);

    return QuotationCardViewModel(
      id: quotation.id.toString(),
      quotationId: quotation.id.toString(),
      type: QuotationType.DIRECT,
      counterpartInfo: isArtist
          ? CounterpartInfo.fromCustomer(quotation.customer)
          : CounterpartInfo.fromArtist(quotation.artist),
      isArtistView: isArtist,
      statusText: QuotationStatusL10n.getStatus(statusEnum, l10n, isArtist),
      statusColor: _getStatusColor(statusEnum),
      statusIcon: _getStatusIcon(statusEnum),
      createdAt: quotation.createdAt,
      description: quotation.description,
      location: quotation.location,
      referenceImages: quotation.referenceImages?.metadata ?? [],
      proposedDesigns: quotation.proposedDesigns?.metadata ?? [],
      isUnread: isUnread,
      estimatedCost: quotation.estimatedCost?.toString(),
      appointmentDate: quotation.appointmentDate != null
          ? DateFormat.yMMMd().format(quotation.appointmentDate!)
          : null,
      appointmentDuration: quotation.appointmentDuration != null
          ? '${quotation.appointmentDuration} ${l10n.hours}'
          : null,
    );
  }

  // --- Factory for OPEN Quotation ---
  factory QuotationCardViewModel.fromOpenQuotation(
      Quotation quotation, S l10n) {
     // Open quotations are always viewed by artists
     const statusEnum = QuotationStatus.open; // Status is implicitly 'open'

    return QuotationCardViewModel(
      id: quotation.id.toString(),
      quotationId: quotation.id.toString(),
      type: QuotationType.OPEN,
      counterpartInfo: CounterpartInfo.fromCustomer(quotation.customer),
      isArtistView: true, // Always artist view for open
      statusText: l10n.openQuotations,
      statusColor: _getStatusColor(statusEnum),
      statusIcon: _getStatusIcon(statusEnum),
      createdAt: quotation.createdAt,
      description: quotation.description,
      location: quotation.location,
      distanceToArtistKm: quotation.distanceToArtistKm?.toStringAsFixed(1),
      referenceImages: quotation.referenceImages?.metadata ?? [],
      hasOffered: quotation.hasOffered,
      artistOffer: quotation.offers?.isNotEmpty == true ? quotation.offers!.first : null,
      referenceBudget: quotation.referenceBudget,
      tattooDesignImageUrl: quotation.tattooDesignImageUrl,
    );
  }

  // --- Factory for PARTICIPATING Quotation ---
    factory QuotationCardViewModel.fromParticipatingItem(
        ParticipatingQuotationItemDto item, S l10n) {
        // Participating quotations are always viewed by artists
       final statusEnum = QuotationStatus.values
            .firstWhere((e) => e.name == item.status, orElse: () => QuotationStatus.pending);

        final List<MultimediaMetadata> participatingRefImages = (item.quotation.referenceImages?.metadata ?? [])
            .map<MultimediaMetadata>((meta) {
              if (meta is MultimediaMetadata) {
                return meta;
              } else if (meta is Map<String, dynamic>) {
                // Si metadata es un Map, intenta parsear a MultimediaMetadata
                return MultimediaMetadata.fromJson(meta);
              } else {
                // fallback: crea un objeto básico
                return MultimediaMetadata(
                  url: meta.toString(),
                  type: 'image',
                  size: 0,
                  encoding: '',
                  position: 0,
                  fieldname: '',
                  originalname: 'image.jpg',
                );
              }
            }).toList();

        final Customer adaptedCustomer = Customer(
          id: item.customer.id,
          userId: item.customer.userId,
          firstName: item.customer.firstName,
          lastName: item.customer.lastName,
          profileThumbnail: item.customer.profileThumbnail,
          contactEmail: item.customer.contactEmail ?? '',
          contactPhoneNumber: item.customer.contactPhoneNumber,
          follows: item.customer.follows ?? 0,
          rating: item.customer.rating.toDouble(),
          createdAt: item.customer.createdAt,
          updatedAt: item.customer.updatedAt,
          shortDescription: item.customer.shortDescription,
        );

        return QuotationCardViewModel(
          id: item.id,
          quotationId: item.quotationId,
          type: QuotationType.PARTICIPATING,
          counterpartInfo: CounterpartInfo.fromCustomer(adaptedCustomer),
          isArtistView: true,
          statusText: QuotationStatusL10n.getStatus(statusEnum, l10n, true),
          statusColor: _getStatusColor(statusEnum),
          statusIcon: _getStatusIcon(statusEnum),
          createdAt: item.createdAt,
          description: item.quotation.description,
          location: null,
          referenceImages: participatingRefImages,
          estimatedCost: item.estimatedCost?.toString(),
          appointmentDuration: item.estimatedDuration != null
              ? '${item.estimatedDuration} ${l10n.hours}'
              : null,
        );
    }

}

// --- Status Helpers (moved here or keep in separate file) ---
Color _getStatusColor(QuotationStatus status) {
  switch (status) {
    case QuotationStatus.pending:
    case QuotationStatus.appealed:
      return Colors.orange;
    case QuotationStatus.quoted:
      return Colors.blue;
    case QuotationStatus.accepted:
      return Colors.green;
    case QuotationStatus.rejected:
    case QuotationStatus.canceled:
      return Colors.red;
    case QuotationStatus.open: // Added case for Open
       return redColor; // Use the specific red color
    default:
      return Colors.grey;
  }
}

IconData _getStatusIcon(QuotationStatus status) {
  switch (status) {
    case QuotationStatus.pending:
    case QuotationStatus.appealed:
      return Icons.hourglass_empty;
    case QuotationStatus.quoted:
      return Icons.format_quote;
    case QuotationStatus.accepted:
      return Icons.check_circle_outline; // Outline version
    case QuotationStatus.rejected:
    case QuotationStatus.canceled:
      return Icons.cancel_outlined; // Outline version
    case QuotationStatus.open:
       return Icons.campaign_outlined; // Outline version
    default:
      return Icons.info_outline;
  }
}

// --- NUEVO VIEWMODEL PARA CUSTOMER OPEN QUOTATION CARD ---
class CustomerOpenQuotationCardViewModel {
  final String id;
  final String description;
  final DateTime createdAt;
  final int offersCount;
  final String statusText;
  final Color statusColor;
  final IconData statusIcon;
  final String? tattooDesignImageUrl;

  CustomerOpenQuotationCardViewModel({
    required this.id,
    required this.description,
    required this.createdAt,
    required this.offersCount,
    required this.statusText,
    required this.statusColor,
    required this.statusIcon,
    this.tattooDesignImageUrl,
  });

  factory CustomerOpenQuotationCardViewModel.fromQuotation(Quotation quotation, S l10n) {
    const statusEnum = QuotationStatus.open; // Siempre open para open quotations
    return CustomerOpenQuotationCardViewModel(
      id: quotation.id.toString(),
      description: quotation.description,
      createdAt: quotation.createdAt,
      offersCount: quotation.offers?.length ?? 0,
      statusText: l10n.openQuotations,
      statusColor: _getStatusColor(statusEnum),
      statusIcon: _getStatusIcon(statusEnum),
      tattooDesignImageUrl: quotation.tattooDesignImageUrl,
    );
  }
} 