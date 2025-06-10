import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/artist_open_quotation_offer_page.dart';
import 'package:inker_studio/ui/quotation/widgets/counterpart_header.dart';
import 'package:inker_studio/ui/quotation/widgets/description_display.dart';
import 'package:inker_studio/ui/quotation/widgets/detail_row.dart';
import 'package:inker_studio/ui/quotation/widgets/image_gallery.dart';
import 'package:inker_studio/ui/quotation/widgets/location_display.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_card_view_model.dart';
import 'package:inker_studio/ui/quotation/widgets/status_and_date_display.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart'
    show MultimediaMetadata;

typedef QuotationCardTapCallback = void Function(
    String quotationId, QuotationType type);
typedef QuotationActionCallback = void Function(String id, QuotationType type);

class QuotationCard extends StatelessWidget {
  final QuotationCardViewModel model;
  final QuotationCardTapCallback? onTap;
  final QuotationActionCallback?
      onSendOfferTap; // Specific callback for "Send Offer"
  final QuotationActionCallback?
      onMarkAsRead; // Specific callback for marking as read

  const QuotationCard({
    super.key,
    required this.model,
    this.onTap,
    this.onSendOfferTap,
    this.onMarkAsRead,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context); // Get l10n instance

    // Determine card background and border based on type and state
    Color cardColor = Theme.of(context).colorScheme.surface; // Default dark bg
    Color borderColor = const Color(0xFF777E91); // Default border
    double borderWidth = 1.0;
    bool showUnreadIndicator = false;

    if (model.type == QuotationType.DIRECT) {
      if (model.isUnread) {
        cardColor = const Color(0xFF252A47); // Slightly lighter for unread
        borderColor = Theme.of(context).colorScheme.secondary;
        borderWidth = 2.0;
        showUnreadIndicator = true;
      }
    } else if (model.type == QuotationType.OPEN) {
      cardColor =
          model.hasOffered ? const Color(0xFF2a3a47) : const Color(0xFF2A2E47);
      borderColor =
          model.hasOffered ? Colors.green : Theme.of(context).colorScheme.error;
      borderWidth = 2.0;
    } else if (model.type == QuotationType.PARTICIPATING) {
      // Use status color for border, or a default? Let's use status color.
      cardColor =
          const Color(0xFF222840); // Slightly different bg for participating
      borderColor = model.statusColor;
      borderWidth = 1.5;
    }

    return GestureDetector(
      onTap: () {
        if (model.isUnread &&
            model.type == QuotationType.DIRECT &&
            onMarkAsRead != null) {
          onMarkAsRead!(
              model.id, model.type); // Mark as read if callback provided
        }
        // Always navigate if onTap provided
        if (onTap != null) {
          final idToNavigate = model.type == QuotationType.PARTICIPATING
              ? model.quotationId
              : model.id;
          onTap!(idToNavigate, model.type);
        }
      },
      child: Card(
        key: K.getQuotationCardKey(model.id),
        color: cardColor,
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            // --- Top Indicators ---
            _buildTopIndicators(context, borderColor, showUnreadIndicator),

            // --- Main Content Padding ---
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- Mostrar imagen generada si existe (solo para OPEN) ---
                  if (model.type == QuotationType.OPEN &&
                      model.tattooDesignImageUrl != null) ...[
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (_) => _ImageViewerDialog(
                            imageUrl: model.tattooDesignImageUrl!,
                            heroTag: 'tattooDesignImage_${model.id}',
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'tattooDesignImage_${model.id}',
                        child: Container(
                          width: 90,
                          height: 90,
                          margin: const EdgeInsets.only(bottom: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.18),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary,
                                width: 2),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            model.tattooDesignImageUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiary
                                  .withOpacity(0.2),
                              child: Icon(Icons.broken_image,
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const Center(
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2));
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                  // --- Header: Counterpart ---
                  CounterpartHeader(
                      info: model.counterpartInfo,
                      isArtistView: model.isArtistView),
                  const SizedBox(height: 16),

                  // --- Status and Date ---
                  StatusAndDateDisplay(
                    statusText: model.statusText,
                    statusColor: model.statusColor,
                    statusIcon: model.statusIcon,
                    date: model.createdAt,
                    dateLabel: model.type == QuotationType.PARTICIPATING
                        ? l10n.offered
                        : null,
                  ),
                  const SizedBox(height: 8),

                  // --- Distance (for Open) ---
                  if (model.type == QuotationType.OPEN &&
                      model.distanceToArtistKm != null) ...[
                    Row(
                      children: [
                        const Icon(Icons.place_outlined,
                            size: 16, color: Colors.white70),
                        const SizedBox(width: 4),
                        Text(
                          '${model.distanceToArtistKm} ${l10n.kmAway}',
                          style: TextStyleTheme.caption
                              .copyWith(color: Colors.white70),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],

                  // --- Description ---
                  DescriptionDisplay(
                      description: model.description, maxLines: 3),
                  // Mostrar referenceBudget si existe
                  if (model.type == QuotationType.OPEN &&
                      model.referenceBudget != null) ...[
                    const SizedBox(height: 8),
                    DetailRow(
                      icon: Icons.account_balance_wallet,
                      label: l10n.referenceBudget(
                          model.referenceBudget!.formatWithSymbol(),
                          l10n.currency),
                      value:
                          '${model.referenceBudget!.formatWithSymbol()} ${l10n.currency}',
                    ),
                  ],
                  const SizedBox(height: 12),

                  // --- Location (If available) ---
                  if (model.location != null) ...[
                    LocationDisplay(location: model.location!),
                    const SizedBox(height: 12),
                  ],

                  // --- Quotation/Offer Details ---
                  _buildDetailsSection(l10n),
                  if (_hasDetails()) const SizedBox(height: 12),

                  // --- Image Galleries ---
                  _buildImageSection(
                      l10n, l10n.referenceImages, model.referenceImages),
                  if (model.type == QuotationType.DIRECT) ...[
                    _buildImageSection(
                        l10n, l10n.proposedDesigns, model.proposedDesigns),
                  ],
                  // Correctly add spacing based on whether images were shown
                  if (model.referenceImages.isNotEmpty ||
                      (model.type == QuotationType.DIRECT &&
                          model.proposedDesigns.isNotEmpty)) ...[
                    const SizedBox(height: 16),
                  ] else ...[
                    const SizedBox(height: 8),
                  ],

                  // --- Action Prompts / Buttons ---
                  _buildActionSection(context, l10n),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper to build top indicators (Unread marker or Open Status banner)
  Widget _buildTopIndicators(
      BuildContext context, Color borderColor, bool showUnreadIndicator) {
    final l10n = S.of(context);
    if (model.type == QuotationType.DIRECT && showUnreadIndicator) {
      return Positioned(
        // Unread indicator for DIRECT
        top: 0,
        right: 24, // Positioned slightly inwards
        child: Container(
          width: 32,
          height: 4,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      );
    } else if (model.type == QuotationType.OPEN) {
      // Status Banner for OPEN
      final bannerColor =
          model.hasOffered ? Colors.green : Theme.of(context).colorScheme.error;
      final bannerText = model.hasOffered ? l10n.offered : l10n.open;

      return Positioned(
        top: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            color: bannerColor,
            borderRadius: const BorderRadius.only(
              //topRight: Radius.circular(8), // Covered by Card clip
              bottomLeft: Radius.circular(12),
            ),
            boxShadow: [
              // Subtle shadow
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  offset: const Offset(-1, 1)),
            ],
          ),
          child: Text(
            bannerText,
            style: TextStyleTheme.caption.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
      );
    } else if (model.type == QuotationType.PARTICIPATING) {
      // Optional: Could add a subtle top-right banner for participating status
      return Positioned(
        top: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: model.statusColor.withOpacity(0.7), // Use status color
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
            ),
          ),
          child: Text(
            model.statusText.toUpperCase(), // Show status text
            style: TextStyleTheme.caption.copyWith(
                color: Colors.white.withOpacity(0.9),
                fontWeight: FontWeight.bold,
                fontSize: 10,
                letterSpacing: 0.4),
          ),
        ),
      );
    }
    return const SizedBox.shrink(); // No indicator otherwise
  }

  bool _hasDetails() {
    if (model.type == QuotationType.OPEN &&
        model.hasOffered &&
        model.artistOffer != null) {
      return true;
    }
    if (model.type == QuotationType.PARTICIPATING &&
        (model.estimatedCost != null || model.appointmentDuration != null)) {
      return true;
    }
    if (model.type == QuotationType.DIRECT &&
        (model.estimatedCost != null ||
            model.appointmentDate != null ||
            model.appointmentDuration != null)) {
      return true;
    }
    return false;
  }

  // Helper to build the details section based on QuotationType
  Widget _buildDetailsSection(S l10n) {
    List<Widget> details = [];

    // --- Offer details for OPEN (if offered) ---
    if (model.type == QuotationType.OPEN &&
        model.hasOffered &&
        model.artistOffer != null) {
      final offer = model.artistOffer!;
      if (offer.estimatedCost != null) {
        details.add(DetailRow(
            icon: Icons.attach_money,
            label: l10n.offerCost,
            value: offer.estimatedCost!.toString())); // Placeholder l10n
      }
    }
    // --- Offer details for PARTICIPATING ---
    else if (model.type == QuotationType.PARTICIPATING) {
      if (model.estimatedCost != null) {
        details.add(DetailRow(
            icon: Icons.attach_money,
            label: l10n.yourOffer,
            value: model.estimatedCost!)); // Placeholder l10n
      }
      if (model.appointmentDuration != null) {
        // Mapped from estimatedDuration
        details.add(DetailRow(
            icon: Icons.timer_outlined,
            label: l10n.estimatedDuration,
            value: model.appointmentDuration!)); // Placeholder l10n
      }
    }
    // --- Quotation details for DIRECT ---
    else if (model.type == QuotationType.DIRECT) {
      if (model.estimatedCost != null) {
        details.add(DetailRow(
            icon: Icons.attach_money,
            label: l10n.estimatedCost,
            value: model.estimatedCost!));
      }
      if (model.appointmentDate != null) {
        details.add(DetailRow(
            icon: Icons.event,
            label: l10n.appointmentDate,
            value: model.appointmentDate!));
      }
      if (model.appointmentDuration != null) {
        details.add(DetailRow(
            icon: Icons.access_time,
            label: l10n.appointmentDuration,
            value: model.appointmentDuration!));
      }
    }

    if (details.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(children: details);
  }

  // Helper to build image section with title
  Widget _buildImageSection(
      S l10n, String title, List<MultimediaMetadata> images) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Padding(
          padding:
              const EdgeInsets.only(bottom: 6.0), // Add padding below title
          child: Text(
            title, // Use passed title (needs l10n)
            style: TextStyleTheme.caption.copyWith(
              color: const Color(0xFFBDBDBD),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ImageGallery(images: images, height: 60, maxImagesToShow: 4),
      ],
    );
  }

  // Helper to build the bottom action section based on type
  Widget _buildActionSection(BuildContext context, S l10n) {
    if (model.type == QuotationType.OPEN) {
      return model.hasOffered
          ? _buildAlreadyOfferedPrompt(context, l10n)
          : _buildOpenQuotationArtistPrompt(context, l10n);
    } else if (model.type == QuotationType.PARTICIPATING) {
      return _buildParticipatingInfoPrompt(context, l10n);
    } else if (model.type == QuotationType.DIRECT) {
      // Actions for DIRECT are handled on detail page, show padding.
      return const SizedBox(height: 8);
    }
    return const SizedBox.shrink();
  }

  // --- Action Prompts ---

  Widget _buildOpenQuotationArtistPrompt(BuildContext context, S l10n) {
    // Similar to the one in OpenQuotationListPage
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 8), // Reduced padding
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
            color: Theme.of(context).colorScheme.error.withOpacity(0.3)),
      ),
      child: Row(
        // Use Row for compact layout
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.customerLookingForOffers,
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  l10n.reviewDetailsAndSubmitOffer,
                  style: TextStyleTheme.caption.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          OutlinedButton(
            // Make button smaller
            key: Key('send_offer_${model.id}'),
            onPressed: () {
              if (onSendOfferTap != null) {
                onSendOfferTap!(model.id, model.type);
              } else {
                // Default navigation if no specific callback
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ArtistOpenQuotationOfferPage(
                    quotationId: model.id,
                  ),
                ));
              }
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
              side: BorderSide(
                  color: Theme.of(context).colorScheme.error, width: 1.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              textStyle:
                  TextStyleTheme.caption.copyWith(fontWeight: FontWeight.bold),
            ),
            child: Text(l10n.sendOffer),
          ),
        ],
      ),
    );
  }

  Widget _buildAlreadyOfferedPrompt(BuildContext context, S l10n) {
    // Similar to the one in OpenQuotationListPage
    String offerDetails = l10n.offerSubmitted;
    if (model.artistOffer?.estimatedCost != null) {
      offerDetails = l10n.offerSubmittedWithAmount(
          model.artistOffer!.estimatedCost!.toString());
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.green.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.alreadyOffered,
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  offerDetails,
                  style: TextStyleTheme.caption.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          // Optional: Add a "View Offer" or "Message" button if needed
          // OutlinedButton(...)
        ],
      ),
    );
  }

  Widget _buildParticipatingInfoPrompt(BuildContext context, S l10n) {
    // Simple info row for participating items
    // Could show last message, or prompt to message customer etc.
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: model.statusColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: model.statusColor.withOpacity(0.4)),
      ),
      child: Row(
        children: [
          Icon(model.statusIcon, color: model.statusColor, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              l10n.statusWithText(model.statusText),
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.chevron_right,
              color: Colors.grey[600], size: 18) // Indicate tappable
        ],
      ),
    );
  }
}

class CustomerOpenQuotationCard extends StatelessWidget {
  final CustomerOpenQuotationCardViewModel model;
  final void Function(String quotationId)? onTap;
  final void Function(String quotationId)? onViewOffersTap;

  const CustomerOpenQuotationCard({
    super.key,
    required this.model,
    this.onTap,
    this.onViewOffersTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    // Determinar colores basados en si hay ofertas o no
    final bool hasOffers = model.offersCount > 0;
    final Color borderColor = hasOffers
        ? const Color(0xFF4CAF50) // Verde suave para cotizaciones con ofertas
        : const Color(0xFF52596E); // Gris neutro para sin ofertas
    const Color backgroundColor =
        Color(0xFF23263A); // Fondo oscuro consistente

    return Card(
      color: backgroundColor,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: borderColor,
          width: hasOffers ? 2.0 : 1.0, // Borde más grueso si hay ofertas
        ),
      ),
      child: InkWell(
        onTap: () => onTap?.call(model.id),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Mostrar imagen generada si existe
              if (model.tattooDesignImageUrl != null) ...[
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (_) => _ImageViewerDialog(
                        imageUrl: model.tattooDesignImageUrl!,
                        heroTag: 'tattooDesignImage_${model.id}',
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'tattooDesignImage_${model.id}',
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      margin: const EdgeInsets.only(bottom: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                            width: 2),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        model.tattooDesignImageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Theme.of(context)
                              .colorScheme
                              .tertiary
                              .withOpacity(0.2),
                          child: Icon(Icons.broken_image,
                              color: Theme.of(context).colorScheme.tertiary),
                        ),
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                              child: CircularProgressIndicator(strokeWidth: 2));
                        },
                      ),
                    ),
                  ),
                ),
              ],
              Row(
                children: [
                  Icon(
                    hasOffers ? Icons.check_circle_outline : model.statusIcon,
                    color: hasOffers
                        ? const Color(0xFF4CAF50)
                        : const Color(0xFF9E9E9E),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    hasOffers ? l10n.receivedOffers : model.statusText,
                    style: TextStyleTheme.subtitle1.copyWith(
                      color:
                          hasOffers ? const Color(0xFF4CAF50) : Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  if (hasOffers)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4CAF50).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF4CAF50).withOpacity(0.3),
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        l10n.offersCount(model.offersCount),
                        style: TextStyleTheme.caption.copyWith(
                          color: const Color(0xFF4CAF50),
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                ],
              ),
              // Si no hay ofertas, mostrar el mensaje debajo
              if (!hasOffers)
                Padding(
                  padding: const EdgeInsets.only(
                      top: 4.0, left: 28.0), // alineado con el texto principal
                  child: Text(
                    l10n.noOffersYet,
                    style:
                        TextStyleTheme.caption.copyWith(color: Colors.white38),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              const SizedBox(height: 12),
              Text(
                model.description,
                style: TextStyleTheme.bodyText2.copyWith(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.calendar_today, color: Colors.white38, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '${model.createdAt.day}/${model.createdAt.month}/${model.createdAt.year}',
                    style:
                        TextStyleTheme.caption.copyWith(color: Colors.white38),
                  ),
                  const Spacer(),
                  // Solo mostrar el botón si hay ofertas
                  if (hasOffers)
                    TextButton(
                      onPressed: () => onViewOffersTap?.call(model.id),
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFF4CAF50),
                        textStyle: TextStyleTheme.bodyText2
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      child: Text(l10n.viewOffers),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// --- Visualizador de imagen fullscreen ---
class _ImageViewerDialog extends StatelessWidget {
  final String imageUrl;
  final String heroTag;
  const _ImageViewerDialog({required this.imageUrl, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.98),
        body: Stack(
          children: [
            Center(
              child: Hero(
                tag: heroTag,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(0.2),
                    child: Icon(Icons.broken_image,
                        color: Theme.of(context).colorScheme.tertiary,
                        size: 64),
                  ),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white));
                  },
                ),
              ),
            ),
            Positioned(
              top: 32,
              right: 24,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 32),
                onPressed: () => Navigator.of(context).pop(),
                tooltip: S.of(context).close,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
