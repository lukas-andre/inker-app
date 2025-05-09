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
    final QuotationStatus statusEnum = _parseQuotationStatus(item.status);
    final String statusText = QuotationStatusL10n.getStatus(statusEnum, l10n, true);
    final Color statusColor = _getStatusColor(item.status);
    final IconData statusIcon = _getStatusIcon(item.status);
    
    // Format relative time (e.g., "2 days ago" instead of full date)
    final String timeAgo = _getRelativeTimeString(item.createdAt);
    
    // Check if there are messages to display
    final bool hasMessages = item.messages?.isNotEmpty ?? false;
    final int messagesCount = item.messages?.length ?? 0;
    
    // Format price if available
    String priceDisplay = "No especificado";
    if (item.estimatedCost != null) {
      try {
        // Intentar usar el método de formateo de Money si está disponible
        priceDisplay = item.estimatedCost!.toString();
      } catch (e) {
        // Si hay error, usar un string genérico
        priceDisplay = "Oferta enviada";
      }
    }

    return Card(
      key: K.getQuotationCardKey(item.id),
      color: const Color(0xFF1F223C),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: statusColor.withOpacity(0.7), 
          width: 1.5,
        ),
      ),
      clipBehavior: Clip.antiAlias, // Ensure the positioned badge stays within bounds
      child: Stack(
        children: [
          // Status badge in top right corner
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Text(
                statusText,
                style: TextStyleTheme.caption.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          
          // Main content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Customer Header
                Row(
                  children: [
                    if (customerInfo.profileThumbnail != null)
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(customerInfo.profileThumbnail!),
                      )
                    else
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: const Color(0xFF686D90),
                        child: Text(
                          customerInfo.firstName.isNotEmpty
                              ? customerInfo.firstName[0].toUpperCase()
                              : '?',
                          style: TextStyleTheme.headline3
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${customerInfo.firstName} ${customerInfo.lastName}',
                            style: TextStyleTheme.subtitle1.copyWith(
                              color: const Color(0xFFF2F2F2),
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            timeAgo,
                            style: TextStyleTheme.caption
                                .copyWith(color: const Color(0xFF9E9E9E)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                const Divider(height: 1, color: Color(0xFF303759)),
                const SizedBox(height: 16),
                
                // Your offer section with highlighted price
                if (item.estimatedCost != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          color: Color(0xFF4CAF50),
                          size: 24,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tu oferta',
                                style: TextStyleTheme.caption.copyWith(
                                  color: const Color(0xFF9E9E9E),
                                ),
                              ),
                              Text(
                                priceDisplay,
                                style: TextStyleTheme.headline3.copyWith(
                                  color: const Color(0xFF4CAF50),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (item.estimatedDuration != null)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  color: Color(0xFF9E9E9E),
                                  size: 14,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${item.estimatedDuration} ${l10n.hours}',
                                  style: TextStyleTheme.caption.copyWith(
                                    color: const Color(0xFF9E9E9E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                
                // Quotation description with icon
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.description_outlined,
                      color: Color(0xFF9E9E9E),
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        quotationInfo.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyleTheme.bodyText2
                            .copyWith(color: const Color(0xFFE0E0E0)),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                // Reference images preview (if available)
                if (quotationInfo.referenceImages?.metadata.isNotEmpty ?? false) ...[
                  const Divider(height: 1, color: Color(0xFF303759)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(
                        Icons.photo_library_outlined,
                        color: Color(0xFF9E9E9E),
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${quotationInfo.referenceImages!.metadata.length} imágenes de referencia',
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: const Color(0xFF9E9E9E),
                        ),
                      ),
                    ],
                  ),
                ],
                
                const SizedBox(height: 16),
                
                // Action buttons based on status
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Message count indicator if there are messages
                    if (hasMessages)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.blue.withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.message_outlined,
                              color: Colors.blue,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              messagesCount.toString(),
                              style: TextStyleTheme.caption.copyWith(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                    const Spacer(),
                    
                    // Primary action button based on status
                    _buildActionButton(statusEnum, item),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  // Helper for generating relative time string
  String _getRelativeTimeString(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} año(s) atrás';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} mes(es) atrás';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} día(s) atrás';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hora(s) atrás';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minuto(s) atrás';
    } else {
      return 'Ahora mismo';
    }
  }
  
  // Helper for building action buttons based on status
  Widget _buildActionButton(QuotationStatus status, ParticipatingQuotationItemDto item) {
    switch (status) {
      case QuotationStatus.accepted:
        return ElevatedButton.icon(
          onPressed: () => _navigateToDetail(item),
          icon: const Icon(Icons.check_circle_outline, size: 16),
          label: const Text('Ver detalles'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        );
        
      case QuotationStatus.rejected:
      case QuotationStatus.canceled:
        return OutlinedButton.icon(
          onPressed: () => _navigateToDetail(item),
          icon: const Icon(Icons.info_outline, size: 16),
          label: const Text('Ver razón'),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white70,
            side: BorderSide(color: Colors.white30),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        );
        
      case QuotationStatus.quoted:
      case QuotationStatus.pending:
      default:
        return ElevatedButton.icon(
          onPressed: () => _navigateToDetail(item),
          icon: const Icon(Icons.message_outlined, size: 16),
          label: const Text('Continuar'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        );
    }
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