import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation_status.l10n.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/quotation/quotation_action_manager.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_action_buttons.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

// This page now only shows DIRECT quotations for the logged-in user (Artist or Customer)
class QuotationListPage extends StatelessWidget {
  final bool hideHeader; 
  
  const QuotationListPage({super.key, this.hideHeader = false});

  @override
  Widget build(BuildContext context) {
    // Provide the BLoC if not already provided higher up
    // Ensure QuotationListBloc is provided before this widget
    return QuotationListView(hideHeader: hideHeader);
  }
}

class QuotationListView extends StatefulWidget {
  final bool hideHeader;
  
  const QuotationListView({super.key, this.hideHeader = false});

  @override
  State<QuotationListView> createState() => _QuotationListViewState();
}

class _QuotationListViewState extends State<QuotationListView> with AutomaticKeepAliveClientMixin {
  late QuotationListBloc _quotationListBloc;
  late bool _isArtist;
  final ScrollController _scrollController = ScrollController();

  List<String> _selectedStatuses = [];
  List<Map<String, dynamic>> _filterOptions = [];
  bool _didInitDependencies = false;
  Map<String, dynamic>? _selectedOption;

  @override
  void initState() {
    super.initState();
    // Trigger initial load when the BLoC starts
    // The BLoC itself should load the initial state upon creation or via a 'started' event
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      final currentState = _quotationListBloc.state;
      currentState.maybeWhen(
        loaded: (quotations, session, statuses, isLoadingMore, cancellingQuotationId, currentPage, totalItems) {
          if (!isLoadingMore && quotations.length < totalItems) {
            // Load next page of DIRECT quotations
            _quotationListBloc.add(
              QuotationListEvent.loadQuotations(
                statuses, // Use currently selected statuses
                true,     // isNextPage = true
                QuotationType.DIRECT, // Explicitly load DIRECT type
              ),
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didInitDependencies) {
      _didInitDependencies = true;
      _quotationListBloc = BlocProvider.of<QuotationListBloc>(context);
      final session = context.read<AuthBloc>().state.session;
      _isArtist = session.user?.userType == 'ARTIST';

      final l10n = S.of(context);
      _filterOptions = getFilterOptions(l10n);

      _selectedOption = _filterOptions.isNotEmpty ? _filterOptions[0] : null;
      _selectedStatuses = _selectedOption?['statuses'] as List<String>? ?? [];

      // Load initial DIRECT quotations
      _quotationListBloc.add(
        QuotationListEvent.loadQuotations(_selectedStatuses, false, QuotationType.DIRECT),
      );
    }
  }

  // Simplified filter options - only for DIRECT quotations
  List<Map<String, dynamic>> getFilterOptions(S l10n) {
    if (_isArtist) {
      // Artist DIRECT options
      return [
        {
          'label': l10n.newRequests,
          'statuses': ['pending', 'appealed']
        },
        {
          'label': l10n.awaitingReply,
          'statuses': ['quoted']
        },
        {
          'label': l10n.scheduled,
          'statuses': ['accepted']
        },
        {
          'label': l10n.cancelled,
          'statuses': ['rejected', 'canceled']
        },
      ];
    } else {
      // Customer DIRECT options
      return [
        {
          'label': l10n.awaitingArtist,
          'statuses': ['pending', 'appealed']
        },
        {
          'label': l10n.receivedQuotations,
          'statuses': ['quoted']
        },
        {
          'label': l10n.scheduled,
          'statuses': ['accepted']
        },
        {
          'label': l10n.cancelled,
          'statuses': ['rejected', 'canceled']
        },
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = S.of(context);
    // Use the title provided by ArtistHomePage or CustomerHomePage
    // AppBar is handled by parent navigator typically
    return Scaffold(
      backgroundColor: const Color(0xFF141D3C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Always show filter chips (if options exist)
              if (_filterOptions.isNotEmpty) ...[
                _buildFilterChips(l10n),
                const SizedBox(height: 16),
              ],
              Expanded(
                child: BlocConsumer<QuotationListBloc, QuotationListState>(
                  listener: (context, state) {
                    // Keep success message for cancellation
                    if (state is QuotationListCancelSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        customSnackBar(
                          key: K.quotationCancelSuccessMessage,
                          context: context,
                          content: l10n.quotationCancelledSuccessfully,
                          backgroundColor: secondaryColor,
                        ),
                      );
                      // Reload current filters after cancellation
                      _quotationListBloc.add(QuotationListEvent.loadQuotations(
                        _selectedStatuses,
                        false,
                        QuotationType.DIRECT,
                      ));
                    }
                    // Handle errors shown in state
                    state.maybeWhen(
                      error: (message) {
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text('Error: $message')),
                         );
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (
                        quotations,
                        session,
                        statuses,
                        isLoadingMore,
                        cancellingQuotationId,
                        currentPage,
                        totalItems,
                      ) {
                        return _buildQuotationList(
                          quotations,
                          session,
                          l10n,
                          isLoadingMore,
                          cancellingQuotationId,
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

  Widget _buildFilterChips(S l10n) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _filterOptions.map((option) {
          final isSelected = _selectedOption == option;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = option;
                  _selectedStatuses = option['statuses'] as List<String>;
                });
                // Load DIRECT quotations with new filters
                _quotationListBloc.add(QuotationListEvent.loadQuotations(
                  _selectedStatuses,
                  false,
                  QuotationType.DIRECT, 
                ));
              },
              child: Container(
                key: Key(option['label']), // Use label as key
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: isSelected ? secondaryColor : tertiaryColor,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  option['label'],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildQuotationList(
    List<Quotation> quotations,
    Session session,
    S l10n,
    bool isLoadingMore,
    String? cancellingQuotationId,
  ) {
    if (quotations.isEmpty) {
      return _buildEmptyState(l10n); // Use the default empty state
    }
    
    final filteredQuotations = quotations; // Assume no search for now

    return RefreshIndicator(
      onRefresh: () async {
        // Refresh DIRECT quotations with current filters
        _quotationListBloc.add(QuotationListEvent.loadQuotations(
          _selectedStatuses,
          false,
          QuotationType.DIRECT,
        ));
      },
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: filteredQuotations.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < filteredQuotations.length) {
            return _buildQuotationCard(
              filteredQuotations[index],
              session,
              l10n,
              cancellingQuotationId,
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

  // Simplified Empty State for DIRECT quotations
  Widget _buildEmptyState(S l10n) {
    // Default empty state
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox_outlined, // Different icon maybe?
            size: 80,
            color: Colors.grey[600],
          ),
          const SizedBox(height: 16),
          Text(
            _isArtist ? "No Requests Found" : "No Quotations Found", // Adjust text based on user type
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Simplified Quotation Card - assumes DIRECT type
  Widget _buildQuotationCard(
    Quotation quotation,
    Session session,
    S l10n,
    String? cancellingQuotationId,
  ) {
    final isArtist = session.user?.userType == 'ARTIST';
    final isUnread = isArtist ? !quotation.readByArtist : !quotation.readByCustomer;
    final statusText =
        QuotationStatusL10n.getStatus(quotation.status, l10n, isArtist);
    final statusColor = getStatusColor(quotation.status);
    final statusIcon = getStatusIcon(quotation.status);
    final counterpartInfo = isArtist
            ? CounterpartInfo.fromCustomer(quotation.customer)
            : CounterpartInfo.fromArtist(quotation.artist);
    
    return GestureDetector(
      onTap: () {
        // Mark as read when tapped
        if (isUnread) {
          _quotationListBloc.add(QuotationListEvent.markAsRead(quotation.id.toString()));
        }
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => QuotationDetailsPage(
              quotation: quotation,
            ),
          ),
        );
      },
      child: Card(
        key: K.getQuotationCardKey(quotation.id.toString()),
        color: isUnread ? const Color(0xFF252A47) : const Color(0xFF1F223C),
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: isUnread ? secondaryColor : const Color(0xFF777E91),
            width: isUnread ? 2.0 : 1.0,
          ),
        ),
        child: Stack(
          children: [
            // Unread indicator
            if (isUnread)
              Positioned(
                top: 0,
                right: 24,
                child: Container(
                  width: 32,
                  height: 4,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
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
                          child: _buildCounterpartHeader(counterpartInfo, isArtist)), // Pass isArtist
                      if (isUnread) // Show unread tag
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: secondaryColor),
                          ),
                          child: Text(
                            // Placeholder for l10n.newRequest / l10n.newQuotation
                            _isArtist ? "New Request" : "New Quotation", 
                            style: TextStyleTheme.caption.copyWith(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                  
                  _buildDescription(quotation.description),
                  // Mostrar referenceBudget si existe
                  if (quotation.referenceBudget != null) ...[
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.account_balance_wallet, color: Color(0xFF686D90), size: 16),
                        const SizedBox(width: 8),
                        Text(
                          'Presupuesto de referencia: ',
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: const Color(0xFFF2F2F2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          quotation.referenceBudget!.formatWithSymbol() + ' CLP',
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 16),
                  if (quotation.location != null) ...[
                    _buildLocation(quotation.location!),
                    const SizedBox(height: 16),
                  ],
                  // Show details relevant to DIRECT quotations (cost, date, duration)
                  if (quotation.estimatedCost != null ||
                      quotation.appointmentDate != null ||
                      quotation.appointmentDuration != null)
                    _buildQuotationDetails(quotation, l10n),
                  const SizedBox(height: 16),
                  _buildImagesSection(quotation, l10n),
                  const SizedBox(height: 16),
                  
                  // Always show standard actions for DIRECT quotations
                  _buildActions(
                      quotation, session, l10n, cancellingQuotationId),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Update CounterpartHeader to handle artist/customer display simply
  Widget _buildCounterpartHeader(CounterpartInfo info, bool isArtist) {
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
              // Show username only for customers viewing artist profiles
              if (!isArtist && info.username != null) 
                Text(
                  '@${info.username}',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: const Color(0xFF686D90),
                  ),
                ),
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
      style: TextStyleTheme.bodyText1.copyWith(
        color: const Color(0xFFF2F2F2),
        fontWeight: FontWeight.bold,
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

  Widget _buildQuotationDetails(Quotation quotation, S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (quotation.estimatedCost != null)
          _buildDetailRow(
            icon: Icons.attach_money,
            label: l10n.estimatedCost,
            value: quotation.estimatedCost!.toString(),
          ),
        if (quotation.appointmentDate != null)
          _buildDetailRow(
            icon: Icons.event,
            label: l10n.appointmentDate,
            value: DateFormat.yMMMd().format(quotation.appointmentDate!),
          ),
        if (quotation.appointmentDuration != null)
          _buildDetailRow(
            icon: Icons.access_time,
            label: l10n.appointmentDuration,
            value: '${quotation.appointmentDuration} ${l10n.hours}',
          ),
      ],
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesSection(Quotation quotation, S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (quotation.referenceImages != null &&
            quotation.referenceImages!.metadata.isNotEmpty) ...[
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
        if (quotation.proposedDesigns != null &&
            quotation.proposedDesigns!.metadata.isNotEmpty) ...[
          const SizedBox(height: 16),
          Text(
            l10n.proposedDesigns,
            style: TextStyleTheme.subtitle2.copyWith(
              color: const Color(0xFFF2F2F2),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          _buildImageGallery(quotation.proposedDesigns!.metadata),
        ],
      ],
    );
  }

  Widget _buildImageGallery(List<MultimediaMetadata> images) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          final image = images[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.network(
              image.url,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Color getStatusColor(QuotationStatus status) {
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
      default:
        return Colors.grey;
    }
  }

  IconData getStatusIcon(QuotationStatus status) {
    switch (status) {
      case QuotationStatus.pending:
      case QuotationStatus.appealed:
        return Icons.hourglass_empty;
      case QuotationStatus.quoted:
        return Icons.format_quote;
      case QuotationStatus.accepted:
        return Icons.check_circle;
      case QuotationStatus.rejected:
      case QuotationStatus.canceled:
        return Icons.cancel;
      default:
        return Icons.info;
    }
  }

  Widget _buildActions(
    Quotation quotation,
    Session session,
    S l10n,
    String? cancellingQuotationId,
  ) {
    if (cancellingQuotationId == quotation.id.toString()) {
      return const Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: InkerProgressIndicator(),
        ),
      );
    }

    // Use the QuotationListBloc for actions
    final quotationListBloc = context.read<QuotationListBloc>();

    return QuotationActionButtons(
      actionManager: QuotationActionManager(
        context: context,
        quotation: quotation,
        session: session,
        l10n: l10n,
        onActionExecuted: (actionType, quotationId) {
          switch (actionType) {
            case QuotationActionType.cancel:
              quotationListBloc.add(
                QuotationListEvent.cancelQuotation(quotationId),
              );
              break;
            default:
              // Refresh DIRECT quotations using the state's selected filters
              quotationListBloc.add(
                QuotationListEvent.loadQuotations(_selectedStatuses, false, QuotationType.DIRECT),
              );
          }
        },
      ),
    );
  }
}
