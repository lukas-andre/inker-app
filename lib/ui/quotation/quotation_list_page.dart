import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation_status.l10n.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/quotation/artist_open_quotation_offer_page.dart';
import 'package:inker_studio/ui/quotation/quotation_offer_message_page.dart';
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
import 'package:inker_studio/ui/quotation/create_open_quotation_page.dart';

class QuotationListPage extends StatelessWidget {
  final bool hideHeader;
  
  const QuotationListPage({super.key, this.hideHeader = false});

  @override
  Widget build(BuildContext context) {
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

  String searchTerm = '';
  List<String> _selectedStatuses = [];
  List<Map<String, dynamic>> _filterOptions = [];
  bool _didInitDependencies = false;
  Map<String, dynamic>? _selectedOption;
  QuotationType _selectedQuotationType = QuotationType.DIRECT;

  @override
  void initState() {
    super.initState();
    context.read<QuotationListBloc>().add(const QuotationListEvent.started());
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      final currentState = _quotationListBloc.state;
      currentState.maybeWhen(
        loaded: (quotations, session, selectedType, statuses, isLoadingMore, cancellingQuotationId, currentPage, totalItems) {
          if (!isLoadingMore && quotations.length < totalItems) {
            List<String>? statusesToLoadMore;
            if (selectedType == QuotationType.OPEN) {
              statusesToLoadMore = null;
            } else {
              statusesToLoadMore = statuses;
            }
            _quotationListBloc.add(
              QuotationListEvent.loadQuotations(
                statusesToLoadMore,
                true,
                selectedType,
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
      _isArtist =
          context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';

      final l10n = S.of(context);
      _filterOptions = getFilterOptions(l10n);

      _selectedOption = _filterOptions[0];
      _selectedStatuses = _selectedOption?['statuses'] as List<String>;

      _quotationListBloc.add(
        QuotationListEvent.loadQuotations(_selectedStatuses, false, _selectedQuotationType),
      );
    }
  }

  List<Map<String, dynamic>> getFilterOptions(S l10n) {
    if (_isArtist) {
      if (_selectedQuotationType == QuotationType.OPEN) {
        // For artists viewing OPEN quotations, show a simplified list
        return [
          {
            'label': 'Solicitudes Disponibles',
            'statuses': ['open']
          },
        ];
      } else {
        // Standard options for DIRECT quotations
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
      }
    } else {
      // Customer options don't change
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
    return Scaffold(
      backgroundColor: const Color(0xFF141D3C),
      appBar: widget.hideHeader ? null : AppBar(
        backgroundColor: primaryColor,
        title: Text(
          _isArtist ? l10n.requests : l10n.quotes,
          style: TextStyleTheme.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: !_isArtist ? FloatingActionButton( 
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CreateOpenQuotationPage(),
          ));
        },
        backgroundColor: secondaryColor,
        child: const Icon(Icons.add), 
        tooltip: l10n.createOpenQuotation,
      ) : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (false) ...[
                Text(
                  _isArtist ? l10n.requests : l10n.quotes,
                  style: TextStyleTheme.headline1
                      .copyWith(color: const Color(0xFFF2F2F2)),
                ),
                const SizedBox(height: 16),
              ],
              _buildTypeSelector(l10n),
              const SizedBox(height: 16),
              // Only show filter chips for direct quotations or for customers with open quotations
              if (_selectedQuotationType == QuotationType.DIRECT || (!_isArtist && _selectedQuotationType == QuotationType.OPEN)) ...[
                _buildFilterChips(l10n),
                const SizedBox(height: 16),
              ],
              Expanded(
                child: BlocConsumer<QuotationListBloc, QuotationListState>(
                  listener: (context, state) {
                    if (state is QuotationListCancelSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        customSnackBar(
                          key: K.quotationCancelSuccessMessage,
                          context: context,
                          content: l10n.quotationCancelledSuccessfully,
                          backgroundColor: secondaryColor,
                        ),
                      );
                      _quotationListBloc.add(QuotationListEvent.loadQuotations(
                        _selectedStatuses,
                        false,
                        _selectedQuotationType,
                      ));
                    }
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (
                        quotations,
                        session,
                        selectedType,
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
                          currentPage,
                          totalItems,
                          statuses,
                          selectedType,
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

  Widget _buildTypeSelector(S l10n) {
    // Check if there are any open quotations (for indicators/badges)
    final state = _quotationListBloc.state;
    bool hasOpenQuotations = false;
    
    if (state is QuotationListLoaded) {
      // Check for open quotations when we're not already on the OPEN tab
      if (_selectedQuotationType != QuotationType.OPEN) {
        hasOpenQuotations = state.quotations.any((q) => 
          q.status == QuotationStatus.open && 
          q.type == QuotationType.OPEN
        );
      }
    }
    
    return Container(
      width: double.infinity,
      child: SegmentedButton<QuotationType>(
        segments: <ButtonSegment<QuotationType>>[
          ButtonSegment<QuotationType>(
            value: QuotationType.DIRECT,
            label: Text(_isArtist ? "Mis Solicitudes" : l10n.directQuotations),
            icon: const Icon(Icons.person_pin),
          ),
          ButtonSegment<QuotationType>(
            value: QuotationType.OPEN,
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(_isArtist ? "Solicitudes Abiertas" : l10n.openQuotations),
                if (hasOpenQuotations && _isArtist) ...[
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: redColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      "!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ],
            ),
            icon: _isArtist ? const Icon(Icons.campaign) : const Icon(Icons.group),
          ),
        ],
        selected: {_selectedQuotationType},
        onSelectionChanged: (Set<QuotationType> newSelection) {
          final newType = newSelection.first;
          setState(() {
            _selectedQuotationType = newType;
            // For artists with OPEN quotations, we don't need the filter tabs
            if (_isArtist && newType == QuotationType.OPEN) {
              _selectedOption = _filterOptions[0]; 
              _selectedStatuses = ['open'];
            } else {
              _selectedOption = _filterOptions[0];
              _selectedStatuses = _selectedOption?['statuses'] as List<String>;
            }
          });
          
          // For open quotations type, pass null statuses to use the dedicated endpoint
          List<String>? statusesToLoad;
          if (_isArtist && newType == QuotationType.OPEN) {
            statusesToLoad = null;
          } else {
            statusesToLoad = _selectedStatuses;
          }
          
          _quotationListBloc.add(QuotationListEvent.loadQuotations(
            statusesToLoad,
            false,
            newType,
          ));
        },
        style: SegmentedButton.styleFrom(
          backgroundColor: tertiaryColor, 
          foregroundColor: Colors.black87,
          selectedForegroundColor: Colors.white,
          selectedBackgroundColor: _selectedQuotationType == QuotationType.OPEN && _isArtist 
              ? redColor // Red for selected open tab
              : secondaryColor,
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

                _quotationListBloc.add(QuotationListEvent.loadQuotations(
                  _selectedStatuses,
                  false,
                  _selectedQuotationType,
                ));
              },
              child: Container(
                key: Key(option['label']),
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
    int currentPage,
    int totalItems,
    List<String>? statuses,
    QuotationType selectedType,
  ) {
    if (quotations.isEmpty) {
      return _buildEmptyState(l10n);
    }
    final filteredQuotations = quotations
        .where((quote) =>
            quote.description
                .toLowerCase()
                .contains(searchTerm.toLowerCase()) ||
            quote.status
                .toString()
                .toLowerCase()
                .contains(searchTerm.toLowerCase()))
        .toList();

    return RefreshIndicator(
      onRefresh: () async {
        // Get statuses based on current type
        List<String>? statusesToRefresh;
        if (_selectedQuotationType == QuotationType.OPEN) {
          statusesToRefresh = null; // No status filters for OPEN
        } else {
          statusesToRefresh = _selectedStatuses;
        }
        
        _quotationListBloc.add(QuotationListEvent.loadQuotations(
          statusesToRefresh,
          false,
          _selectedQuotationType,
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
              selectedType,
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

  Widget _buildEmptyState(S l10n) {
    final isOpenTab = _selectedQuotationType == QuotationType.OPEN;
    final isArtist = context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    
    // Special empty state for artists viewing open quotations
    if (isArtist && isOpenTab) {
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
                    Icons.search,
                    size: 64,
                    color: redColor,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "No hay solicitudes abiertas",
                    style: TextStyleTheme.headline3.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "No hay solicitudes de cotización abiertas en este momento. Las cotizaciones abiertas aparecerán aquí cuando los clientes estén buscando artistas.",
                    style: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Switch to direct quotations tab
                      setState(() {
                        _selectedQuotationType = QuotationType.DIRECT;
                      });
                      _quotationListBloc.add(QuotationListEvent.loadQuotations(
                        _selectedStatuses,
                        false,
                        QuotationType.DIRECT,
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      "Ver mis solicitudes directas",
                      style: TextStyleTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    
    // Default empty state
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox,
            size: 80,
            color: Colors.grey[600],
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noQuotationsFound,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildQuotationCard(
    Quotation quotation,
    Session session,
    S l10n,
    String? cancellingQuotationId,
    QuotationType selectedType,
  ) {
    final isArtist = session.user?.userType == 'ARTIST';
    final isUnread =
        isArtist ? !quotation.readByArtist : !quotation.readByCustomer;
    final isOpenQuotation = quotation.type == QuotationType.OPEN;
    final statusText =
        QuotationStatusL10n.getStatus(quotation.status, l10n, isArtist);
    final statusColor = getStatusColor(quotation.status);
    final statusIcon = getStatusIcon(quotation.status);
    final counterpartInfo = (isOpenQuotation && quotation.artist == null && !isArtist)
        ? CounterpartInfo.open()
        : isArtist
            ? CounterpartInfo.fromCustomer(quotation.customer)
            : CounterpartInfo.fromArtist(quotation.artist);
    
    // NEW: Check if the artist has already submitted an offer
    final bool hasOffered = quotation.hasOffered;

    return GestureDetector(
      onTap: () {
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
        color: isOpenQuotation 
            ? (hasOffered ? const Color(0xFF2a3a47) : const Color(0xFF2A2E47)) // Slightly different color for offered quotations
            : (isUnread ? const Color(0xFF252A47) : const Color(0xFF1F223C)),
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: isOpenQuotation 
                ? (hasOffered ? Colors.green : redColor) // Green border for offered quotations, red for others
                : (isUnread ? secondaryColor : const Color(0xFF777E91)),
            width: isOpenQuotation || isUnread ? 2.0 : 1.0,
          ),
        ),
        child: Stack(
          children: [
            if (isUnread && !isOpenQuotation)
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
            // Show ribbon for offered quotations
            if (isOpenQuotation && isArtist)
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
                    hasOffered ? "OFFERED" : "OPEN", // Change tag text based on hasOffered
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
                          child: _buildCounterpartHeader(
                              counterpartInfo, isArtist, isOpenQuotation)),
                      if (isUnread && !isOpenQuotation)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: secondaryColor),
                          ),
                          child: Text(
                            l10n.newRequest,
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
                  
                  // Show distance for OPEN quotations (if available)
                  if (isOpenQuotation && quotation.distanceToArtistKm != null) ...[
                    Row(
                      children: [
                        Icon(Icons.place, size: 16, color: Colors.white70),
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
                  if (quotation.estimatedCost != null ||
                      quotation.appointmentDate != null ||
                      quotation.appointmentDuration != null)
                    _buildQuotationDetails(quotation, l10n),
                  const SizedBox(height: 16),
                  _buildImagesSection(quotation, l10n),
                  const SizedBox(height: 16),
                  
                  // Special section or direct button for open quotations for artists
                  if (isOpenQuotation && isArtist) ...[
                    hasOffered 
                        ? _buildAlreadyOfferedPrompt(quotation, l10n) // Show messaging prompt if already offered
                        : _buildOpenQuotationArtistPrompt(quotation, l10n), // Show submit offer if not
                    const SizedBox(height: 16),
                  ],
                  // Only show standard actions for DIRECT quotations
                  if (!isOpenQuotation)
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
  
  // Re-add the open quotation prompt method that was accidentally removed
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
            "Review the details and submit your offer to win this project.", // Placeholder for l10n.openQuotationArtistPromptBody
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () {
              // Navigate directly to the new offer page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ArtistOpenQuotationOfferPage(
                    quotationId: quotation.id.toString(),
                  ),
                ),
              );
            },
            icon: const Icon(Icons.send),
            label: Text("Send Offer"), // Placeholder for l10n.sendOffer
            style: OutlinedButton.styleFrom(
              foregroundColor: redColor,
              side: const BorderSide(color: redColor),
            ),
          ),
        ],
      ),
    );
  }

  // Fix the already offered prompt method
  Widget _buildAlreadyOfferedPrompt(Quotation quotation, S l10n) {
    // Get the first offer from the list (assuming artist can only make one offer per quotation)
    final List<QuotationOfferListItemDto>? offers = quotation.offers;
    final String costText = "Offer submitted"; // Default text

    if (offers != null && offers.isNotEmpty) {
      final offer = offers.first;
      // Check if the offer has a cost
      if (offer.estimatedCost != null) {
        // Use a safe string representation - don't depend on built-in toString()
        final cost = offer.estimatedCost!;
        return _buildAlreadyOfferedPromptWithContent(
          "You've already submitted an offer",
          "Offer: \$${cost.amount / 100} ${cost.currency}",
        );
      }
    }

    // If no details available, just show default
    return _buildAlreadyOfferedPromptWithContent(
      "You've already submitted an offer",
      costText,
    );
  }

  // Helper method to avoid repeating the container structure
  Widget _buildAlreadyOfferedPromptWithContent(String title, String details) {
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
                title,
                style: TextStyleTheme.subtitle2.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            details,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () {
              // TODO: Implement message view navigation
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Message view coming soon")),
              );
            },
            icon: const Icon(Icons.message),
            label: const Text("Message Customer"),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.green,
              side: const BorderSide(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCounterpartHeader(CounterpartInfo info, bool isArtist, bool isOpenQuotation) {
    // Adjusted condition
    if (isOpenQuotation && info.type == CounterpartType.open) {
      return Text(
        S.of(context).findingArtists,
        style: TextStyleTheme.subtitle1.copyWith(
          color: const Color(0xFFF2F2F2),
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      );
    }

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

    // Use the original selectedType from the state for the QuotationActionManager
    final currentSelectedType = _selectedQuotationType; 

    return QuotationActionButtons(
      actionManager: QuotationActionManager(
        context: context,
        quotation: quotation,
        session: session,
        l10n: l10n,
        onActionExecuted: (actionType, quotationId) {
          switch (actionType) {
            case QuotationActionType.cancel:
              _quotationListBloc.add(
                QuotationListEvent.cancelQuotation(quotationId),
              );
              break;
            default:
              // Refresh using the state's selected type
              _quotationListBloc.add(
                QuotationListEvent.loadQuotations(_selectedStatuses, false, currentSelectedType),
              );
          }
        },
      ),
    );
  }

  Widget _buildLimitedActions(List<_ActionItem> actions, S l10n) {
    if (actions.length <= 2) {
      return Row(
        key: K.quotationActionsList,
        mainAxisAlignment: MainAxisAlignment.end,
        children: actions
            .map((action) => _buildActionButton(
                  key: action.key,
                  onPressed: action.onPressed,
                  icon: action.icon,
                  label: action.label,
                  isPrimary: action.isPrimary,
                ))
            .toList(),
      );
    } else {
      return Row(
        key: K.quotationActionsList,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildActionButton(
            key: actions[0].key,
            onPressed: actions[0].onPressed,
            icon: actions[0].icon,
            label: actions[0].label,
            isPrimary: actions[0].isPrimary,
          ),
          const SizedBox(width: 8),
          PopupMenuButton<VoidCallback>(
            icon: const Icon(Icons.more_vert, color: Color(0xFFF2F2F2)),
            onSelected: (callback) => callback(),
            itemBuilder: (BuildContext context) =>
                actions.skip(1).map((action) {
              return PopupMenuItem<VoidCallback>(
                key: action.key,
                value: action.onPressed,
                child: ListTile(
                  leading: Icon(action.icon),
                  title: Text(action.label),
                ),
              );
            }).toList(),
          ),
        ],
      );
    }
  }

  Widget _buildActionButton({
    Key? key,
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
    required bool isPrimary,
  }) {
    return ElevatedButton.icon(
      key: key,
      onPressed: onPressed,
      icon: Icon(icon, size: 16),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(0xFFF2F2F2),
        backgroundColor:
            isPrimary ? const Color(0xFF7450ff) : const Color(0xFF141D3C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Color(0xFF777E91)),
        ),
      ),
    );
  }
}

class _ActionItem {
  final Key key;
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final bool isPrimary;

  _ActionItem({
    required this.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.isPrimary,
  });
}
