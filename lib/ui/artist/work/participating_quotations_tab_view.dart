import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/quotation/dtos/participating_quotations_response.dart';
import 'package:inker_studio/domain/blocs/artist/participating_quotations/participating_quotations_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart'; // For fetching details
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_status.l10n.dart'; // For status display
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart'; // For colors
import 'package:intl/intl.dart'; // For date formatting

class ParticipatingQuotationsTabView extends StatefulWidget {
  const ParticipatingQuotationsTabView({super.key});

  @override
  State<ParticipatingQuotationsTabView> createState() =>
      _ParticipatingQuotationsTabViewState();
}

class _ParticipatingQuotationsTabViewState
    extends State<ParticipatingQuotationsTabView>
    with AutomaticKeepAliveClientMixin {
  late ParticipatingQuotationsBloc _participatingQuotationsBloc;
  late QuotationListBloc _quotationListBloc; // To fetch full details for navigation
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _participatingQuotationsBloc = context.read<ParticipatingQuotationsBloc>();
    _quotationListBloc = context.read<QuotationListBloc>(); // Get instance
    _participatingQuotationsBloc
        .add(const ParticipatingQuotationsEvent.loadInitial());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      final currentState = _participatingQuotationsBloc.state;
      final bool canLoadMore = currentState.maybeMap(
        loaded: (state) => state.items.length < state.totalItems,
        orElse: () => false,
      );
      if (canLoadMore && !currentState.isLoadingMore) {
        _participatingQuotationsBloc
            .add(const ParticipatingQuotationsEvent.loadMore());
      }
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> _refresh() async {
    _participatingQuotationsBloc
        .add(const ParticipatingQuotationsEvent.refresh());
  }

  void _navigateToDetail(ParticipatingQuotationItemDto item) async {
    Quotation? potentialQuotation;

    // 1. Check current state first
    final currentState = _quotationListBloc.state;
    currentState.maybeWhen(
      loaded: (quotations, _, __, ___, ____, _____, ______) {
        try {
          potentialQuotation = quotations.firstWhere(
              (q) => q.id.toString() == item.quotationId,
          );
        } catch (e) {
           potentialQuotation = null; // Not found
        }
      },
      orElse: () {},
    );

    // 2. If found in current state, navigate directly
    if (potentialQuotation != null) {
      print("Quotation found in current state, navigating directly.");
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              QuotationDetailsPage(quotation: potentialQuotation!),
        ),
      );
      return; // Exit early
    }

    // 3. If not found, show loading, dispatch event, and wait with timeout
    print("Quotation not in current state. Fetching...");
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(child: InkerProgressIndicator());
      },
    );

    try {
      // Dispatch event to fetch
      _quotationListBloc
          .add(QuotationListEvent.getQuotationById(item.quotationId));

      // Wait for the state update with a timeout
      final updatedState = await _quotationListBloc.stream
          .firstWhere((state) => state.maybeMap(
                loaded: (loadedState) => loadedState.quotations
                    .any((q) => q.id.toString() == item.quotationId),
                orElse: () => false,
              ))
          .timeout(const Duration(seconds: 10)); // Added 10-second timeout

      Navigator.of(context).pop(); // Close loading dialog

      Quotation? fullQuotation;
      updatedState.maybeMap(
          loaded: (loadedState) {
             try {
               fullQuotation = loadedState.quotations
                   .firstWhere((q) => q.id.toString() == item.quotationId);
             } catch (e) {
               fullQuotation = null; // Should not happen if firstWhere resolved, but safety check
             }
          },
          orElse: () {});

      if (fullQuotation != null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                QuotationDetailsPage(quotation: fullQuotation!),
          ),
        );
      } else {
         // This case should ideally not be reached if firstWhere succeeded
        throw Exception('Quotation not found in state after fetch.');
      }
    } catch (e) {
      Navigator.of(context).pop(); // Close loading dialog on error/timeout
      print("Error navigating to detail: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading quotation details: $e')),
      );
    }
  }

  // --- Status Parsing Helper ---
  QuotationStatus _parseQuotationStatus(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return QuotationStatus.pending;
      case 'quoted':
      case 'offered':
        return QuotationStatus.quoted;
      case 'accepted':
        return QuotationStatus.accepted;
      case 'rejected':
        return QuotationStatus.rejected;
      case 'canceled':
      case 'cancelled':
        return QuotationStatus.canceled;
      case 'appealed':
        return QuotationStatus.appealed;
      default:
        print("Warning: Unknown participating quotation status '$status'. Defaulting to pending.");
        return QuotationStatus.pending; // Default to pending for unknown statuses
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = S.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF141D3C), // Match theme
      body: BlocConsumer<ParticipatingQuotationsBloc,
          ParticipatingQuotationsState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message, _, __, ___) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $message')),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (state.isLoading && state.items.isEmpty) {
            return const Center(child: InkerProgressIndicator());
          }

          if (state.hasError && state.items.isEmpty) {
            return Center(
              child: Text(
                state.errorMessage ?? 'Failed to load applications',
                style: TextStyleTheme.bodyText1
                    .copyWith(color: const Color(0xFFF2F2F2)),
              ),
            );
          }

          if (state.items.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inbox_outlined, size: 80, color: Colors.grey[600]),
                  const SizedBox(height: 16),
                  Text(
                    "No Applications Found", // TODO: Replace with l10n
                    style: TextStyleTheme.headline3.copyWith(color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: state.items.length + (state.isLoadingMore ? 1 : 0),
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (context, index) {
                if (index >= state.items.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(child: InkerProgressIndicator()),
                  );
                }
                final item = state.items[index];
                return _buildParticipatingQuotationCard(item, l10n);
              },
            ),
          );
        },
      ),
    );
  }

  // --- Card Widget ---
  Widget _buildParticipatingQuotationCard(
      ParticipatingQuotationItemDto item, S l10n) {
    final customerInfo = item.customer;
    final quotationInfo = item.quotation;
    final QuotationStatus statusEnum = _parseQuotationStatus(item.status); // Parse status string
    final String statusText = QuotationStatusL10n.getStatus(statusEnum, l10n, true);
    final Color statusColor = _getStatusColor(item.status); // Keep using string for color/icon helpers
    final IconData statusIcon = _getStatusIcon(item.status);

    return GestureDetector(
      onTap: () => _navigateToDetail(item),
      child: Card(
        key: K.getQuotationCardKey(item.id), // Assuming K has such a method
        color: const Color(0xFF1F223C), // Standard card color
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: statusColor.withOpacity(0.5), width: 1.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Customer Header
              Row(
                children: [
                  if (customerInfo.profileThumbnail != null)
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(customerInfo.profileThumbnail!),
                    )
                  else
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0xFF686D90),
                      child: Text(
                        customerInfo.firstName.isNotEmpty
                            ? customerInfo.firstName[0].toUpperCase()
                            : '?',
                        style: TextStyleTheme.subtitle1
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      '${customerInfo.firstName} ${customerInfo.lastName}',
                      style: TextStyleTheme.subtitle1.copyWith(
                        color: const Color(0xFFF2F2F2),
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Status and Date Row (using parsed status for text)
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(statusIcon, color: statusColor, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          statusText, // Use localized text from enum
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
                      const Icon(Icons.calendar_today,
                          color: Color(0xFF686D90), size: 16),
                      const SizedBox(width: 4),
                      Text(
                        DateFormat.yMMMd().format(item.createdAt), // Use item creation date
                        style: TextStyleTheme.bodyText2
                            .copyWith(color: const Color(0xFF686D90)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Quotation Description (from brief)
              Text(
                quotationInfo.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyleTheme.bodyText1
                    .copyWith(color: const Color(0xFFF2F2F2)),
              ),
              const SizedBox(height: 16),
              // Offer Details (Cost, Duration if available)
              if (item.estimatedCost != null || item.estimatedDuration != null)
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     if (item.estimatedCost != null)
                       _buildDetailRow(
                          icon: Icons.attach_money,
                          label: "Your Offer", // TODO: L10n
                          value: item.estimatedCost!.toString(),
                       ),
                     if (item.estimatedDuration != null)
                      _buildDetailRow(
                         icon: Icons.access_time,
                         label: "Est. Duration", // TODO: L10n
                         value: '${item.estimatedDuration} ${l10n.hours}',
                      ),
                     const SizedBox(height: 8),
                   ],
                 ),
              // Add more details as needed, e.g., Reference Images from quotationInfo
            ],
          ),
        ),
      ),
    );
  }

  // Helper for detail rows
  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF686D90), size: 16),
          const SizedBox(width: 8),
          Text(
            '$label: ',
            style: TextStyleTheme.bodyText2
                .copyWith(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyleTheme.bodyText2.copyWith(color: const Color(0xFF686D90)),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  // Helper for status colors (matching QuotationListPage)
  Color _getStatusColor(String status) {
    // Statuses for ParticipatingQuotationItemDto might differ slightly
    // Adjust based on actual values (e.g., 'OFFERED', 'ACCEPTED', 'REJECTED', 'CANCELED')
     switch (status.toLowerCase()) {
      case 'quoted': // or 'offered'
      case 'pending': // if artist needs to act
        return Colors.blue;
      case 'accepted':
        return Colors.green;
      case 'rejected':
      case 'canceled': // or 'cancelled'
        return Colors.red;
      case 'appealed': // if applicable
         return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  // Helper for status icons (matching QuotationListPage)
  IconData _getStatusIcon(String status) {
     switch (status.toLowerCase()) {
      case 'quoted':
      case 'pending':
        return Icons.format_quote;
      case 'accepted':
        return Icons.check_circle;
      case 'rejected':
      case 'canceled':
        return Icons.cancel;
       case 'appealed':
         return Icons.hourglass_empty;
      default:
        return Icons.info;
    }
  }
} 