import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/open_quotation_list/open_quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_status.l10n.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/artist_open_quotation_offer_page.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class OpenQuotationListPage extends StatelessWidget {
  const OpenQuotationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide the new BLoC
    return BlocProvider(
      create: (context) => OpenQuotationListBloc(
        quotationService: context.read(), 
        sessionService: context.read(),
      )..add(const OpenQuotationListEvent.started()),
      child: const OpenQuotationListView(),
    );
  }
}

class OpenQuotationListView extends StatefulWidget {
  const OpenQuotationListView({super.key});

  @override
  State<OpenQuotationListView> createState() => _OpenQuotationListViewState();
}

class _OpenQuotationListViewState extends State<OpenQuotationListView> with AutomaticKeepAliveClientMixin {
  late OpenQuotationListBloc _openQuotationListBloc;
  final ScrollController _scrollController = ScrollController();
  // No filters or type selection needed here

  @override
  void initState() {
    super.initState();
    _openQuotationListBloc = context.read<OpenQuotationListBloc>();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      final currentState = _openQuotationListBloc.state;
      currentState.maybeWhen(
        loaded: (quotations, isLoadingMore, currentPage, totalItems, _) {
          if (!isLoadingMore && quotations.length < totalItems) {
            _openQuotationListBloc.add(
              const OpenQuotationListEvent.loadOpenQuotations(isNextPage: true),
            );
          }
        },
        orElse: () { 
          // Do nothing if not in loaded state or other irrelevant states
        },
      );
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    // Load more when reaching 90% of the bottom
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Needed for AutomaticKeepAliveClientMixin
    final l10n = S.of(context);
    
    // Simplified scaffold, AppBar is handled by ArtistAppPage
    return Scaffold(
      backgroundColor: const Color(0xFF141D3C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Removed type selector and filter chips
              Expanded(
                child: BlocConsumer<OpenQuotationListBloc, OpenQuotationListState>(
                  listener: (context, state) {
                    // Handle info messages if needed (e.g., errors during pagination)
                    state.maybeWhen(
                      loaded: (_, __, ___, ____, infoMessage) {
                        if (infoMessage != null && infoMessage.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(infoMessage)),
                          );
                        }
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (quotations, isLoadingMore, currentPage, totalItems, _) {
                        return _buildOpenQuotationList(
                          quotations,
                          l10n,
                          isLoadingMore,
                        );
                      },
                      error: (message) => Center(
                        child: Text(
                          message,
                          style: TextStyleTheme.bodyText1
                              .copyWith(color: const Color(0xFFF2F2F2)),
                        ),
                      ),
                      orElse: () =>
                          const Center(child: InkerProgressIndicator()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOpenQuotationList(
    List<Quotation> quotations,
    S l10n,
    bool isLoadingMore,
  ) {
    if (quotations.isEmpty) {
      return _buildEmptyState(l10n);
    }

    // No search term filtering here, can be added if needed

    return RefreshIndicator(
      onRefresh: () async {
        _openQuotationListBloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
      },
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: quotations.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < quotations.length) {
            return _buildQuotationCard(
              quotations[index],
              l10n,
            );
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: InkerProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }

  // Use the specific empty state for open quotations
  Widget _buildEmptyState(S l10n) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2E47),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: redColor.withOpacity(0.3),
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.search_off, // Changed Icon
                    size: 64,
                    color: redColor,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "No Open Quotations Found", // Placeholder for l10n.noOpenQuotationsFoundTitle
                    style: TextStyleTheme.headline3.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "There are currently no open quotations available. New requests will appear here.", // Placeholder for l10n.noOpenQuotationsFoundBody
                    style: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Remove button to switch tab, as it's a separate tab now
                ],
              ),
            ),
          ],
        ),
      );
  }

  // --- Copied & Adapted Card Building Widgets from QuotationListPage --- 
  // These methods build the visual representation of an open quotation card.
  // They assume the quotation is always of type OPEN.

  Widget _buildQuotationCard(
    Quotation quotation,
    S l10n,
  ) {
    // Open quotation specific logic is now the default
    final bool hasOffered = quotation.hasOffered;
    final counterpartInfo = CounterpartInfo.fromCustomer(quotation.customer);
    final statusText = QuotationStatusL10n.getStatus(QuotationStatus.open, l10n, true); 
    final statusColor = redColor; // Color for open status
    final statusIcon = Icons.campaign; // Icon for open status
    
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => QuotationDetailsPage(
              quotation: quotation, // Pass the full quotation for details
            ),
          ),
        ).then((_) {
          // Optional: Refresh list when returning if needed
          // _openQuotationListBloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
        });
      },
      child: Card(
        key: K.getQuotationCardKey(quotation.id.toString()),
        color: hasOffered ? const Color(0xFF2a3a47) : const Color(0xFF2A2E47),
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: hasOffered ? Colors.green : redColor,
            width: 2.0,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: hasOffered ? Colors.green : redColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Text(
                  hasOffered ? "OFFERED" : statusText.toUpperCase(), 
                  style: TextStyleTheme.caption.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: _buildCounterpartHeader(counterpartInfo)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildStatusAndDate(
                    statusText,
                    statusColor,
                    statusIcon,
                    quotation.createdAt,
                    l10n,
                  ),
                  const SizedBox(height: 8),
                  if (quotation.distanceToArtistKm != null) ...[
                    Row(
                      children: [
                        const Icon(Icons.place, size: 16, color: Colors.white70),
                        const SizedBox(width: 4),
                        Text(
                          "${quotation.distanceToArtistKm!.toStringAsFixed(1)} km away", 
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                  _buildDescription(quotation.description),
                  const SizedBox(height: 16),
                  if (quotation.location != null) ...[
                    _buildLocation(quotation.location!),
                    const SizedBox(height: 16),
                  ],
                  // Don't show estimated cost/date/duration from the *customer* request
                  // Show details of the *artist's offer* if `hasOffered` is true
                  if (hasOffered && quotation.offers != null && quotation.offers!.isNotEmpty) ...[
                    _buildOfferDetails(quotation.offers!.first, l10n),
                    const SizedBox(height: 16),
                  ],
                  _buildImagesSection(quotation, l10n),
                  const SizedBox(height: 16),
                  hasOffered 
                      ? _buildAlreadyOfferedPrompt(quotation, l10n)
                      : _buildOpenQuotationArtistPrompt(quotation, l10n),
                  const SizedBox(height: 16),
                  // No standard actions needed for open quotations list card
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterpartHeader(CounterpartInfo info) {
    return Row(
      children: [
        if (info.profileThumbnail != null)
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(info.profileThumbnail!),
          )
        else
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xFF686D90),
            child: Text(
              info.firstLetter,
              style: TextStyleTheme.subtitle1.copyWith(color: Colors.white),
            ),
          ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info.displayName,
                style: TextStyleTheme.subtitle1.copyWith(
                  color: const Color(0xFFF2F2F2),
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              // Username might not be relevant here, TBD
              // if (info.username != null)
              //   Text(
              //     '@${info.username}',
              //     style: TextStyleTheme.bodyText2.copyWith(
              //       color: const Color(0xFF686D90),
              //     ),
              //   ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatusAndDate(
    String statusText,
    Color statusColor,
    IconData statusIcon,
    DateTime createdAt,
    S l10n,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: statusColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(statusIcon, color: statusColor, size: 16),
              const SizedBox(width: 4),
              Text(
                statusText,
                style: TextStyleTheme.subtitle2.copyWith(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Row(
          children: [
            const Icon(
              Icons.calendar_today,
              color: Color(0xFF686D90),
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              DateFormat.yMMMd().format(createdAt),
              style: TextStyleTheme.bodyText2.copyWith(
                color: const Color(0xFF686D90),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription(String description) {
    return Text(
      description,
      maxLines: 3, // Limit description lines for brevity
      overflow: TextOverflow.ellipsis,
      style: TextStyleTheme.bodyText1.copyWith(
        color: const Color(0xFFF2F2F2),
      ),
    );
  }

  Widget _buildLocation(Location location) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: Color(0xFF686D90),
          size: 16,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            location.shortAddress1,
            style: TextStyleTheme.bodyText2.copyWith(
              color: const Color(0xFF686D90),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  // Updated to show offer details instead of quotation details
  Widget _buildOfferDetails(QuotationOfferListItemDto offer, S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (offer.estimatedCost != null)
          _buildDetailRow(
            icon: Icons.attach_money,
            label: "Offer Cost", // Placeholder for l10n.offerCost
            value: offer.estimatedCost!.toString(), // Assumes MoneyDto has toString()
          ),
        // REMOVE: Appointment date is not part of the offer DTO
        // if (offer.appointmentDate != null)
        //   _buildDetailRow(
        //     icon: Icons.event,
        //     label: "Offer Date", // Placeholder for l10n.offerAppointmentDate
        //     value: DateFormat.yMMMd().format(offer.appointmentDate!),
        //   ),
        // Add other offer details if available (e.g., duration)
      ],
    );
  }

  Widget _buildDetailRow({ // Re-added helper method
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4), // Reduced padding
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF686D90),
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            '$label: ',
            style: TextStyleTheme.bodyText2.copyWith(
              color: const Color(0xFFF2F2F2),
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyleTheme.bodyText2.copyWith(
                color: const Color(0xFF686D90),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesSection(Quotation quotation, S l10n) {
    // Only show reference images provided by the customer
    if (quotation.referenceImages != null &&
        quotation.referenceImages!.metadata.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.referenceImages,
            style: TextStyleTheme.subtitle2.copyWith(
              color: const Color(0xFFF2F2F2),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          _buildImageGallery(quotation.referenceImages!.metadata),
        ],
      );
    }
    return const SizedBox.shrink(); // Return empty if no images
  }

  Widget _buildImageGallery(List<MultimediaMetadata> images) {
    // Limit displayed images for brevity
    const int maxImagesToShow = 3;
    final bool hasMoreImages = images.length > maxImagesToShow;
    final int itemCount = hasMoreImages ? maxImagesToShow + 1 : images.length;

    return SizedBox(
      height: 60, // Reduced height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (hasMoreImages && index == maxImagesToShow) {
            // Show a "more" indicator
            return Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  '+${images.length - maxImagesToShow}',
                  style: TextStyleTheme.caption.copyWith(color: Colors.white),
                ),
              ),
            );
          }
          
          final image = images[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                image.url,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                // Add error builder for network images
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 60,
                  height: 60,
                  color: Colors.grey[300],
                  child: const Icon(Icons.error, color: Colors.red, size: 30),
                ),
                // Add loading builder
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey[200],
                    child: const Center(child: InkerProgressIndicator()),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  // --- Prompts specific to Open Quotations --- 

  Widget _buildOpenQuotationArtistPrompt(Quotation quotation, S l10n) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: redColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: redColor.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.lightbulb_outline,
                color: redColor,
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                "Customer is looking for offers!", // Placeholder for l10n.openQuotationArtistPromptTitle
                style: TextStyleTheme.subtitle2.copyWith(
                  color: redColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "Review the details and submit your offer.", // Placeholder for l10n.openQuotationArtistPromptBody
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: OutlinedButton.icon(
              key: Key('send_offer_${quotation.id}'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArtistOpenQuotationOfferPage(
                      quotationId: quotation.id.toString(),
                      // Pass initial quotation data if needed by the offer page
                      // initialQuotation: quotation,
                    ),
                  ),
                ).then((offerSubmitted) {
                  // Refresh if an offer was submitted
                  if (offerSubmitted == true) {
                    _openQuotationListBloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
                  }
                });
              },
              icon: const Icon(Icons.send, size: 18),
              label: Text("Send Offer"), // Placeholder for l10n.sendOffer
              style: OutlinedButton.styleFrom(
                foregroundColor: redColor,
                side: const BorderSide(color: redColor),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlreadyOfferedPrompt(Quotation quotation, S l10n) {
    // Extract details from the first offer if available
    String offerDetails = "Offer Submitted"; // Placeholder for l10n.offerSubmitted
    if (quotation.offers != null && quotation.offers!.isNotEmpty) {
      final offer = quotation.offers!.first;
      if (offer.estimatedCost != null) {
        // Placeholder for l10n.offerCostSubmitted
        offerDetails = "Offer Submitted: ${offer.estimatedCost!.toString()}"; 
      }
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.green.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                "You've Already Offered", // Placeholder for l10n.alreadyOfferedPromptTitle
                style: TextStyleTheme.subtitle2.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            offerDetails,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: OutlinedButton.icon(
              key: Key('message_customer_${quotation.id}'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Feature coming soon")), 
                );
              },
              icon: const Icon(Icons.message, size: 18),
              label: Text("Message Customer"), // Placeholder for l10n.messageCustomer
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: const BorderSide(color: Colors.green),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 