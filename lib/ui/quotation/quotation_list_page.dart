import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation_status.l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/quotation/quotation_action_manager.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_action_buttons.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class QuotationListPage extends StatelessWidget {
  const QuotationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const QuotationListView();
  }
}

class QuotationListView extends StatefulWidget {
  const QuotationListView({super.key});

  @override
  State<QuotationListView> createState() => _QuotationListViewState();
}

class _QuotationListViewState extends State<QuotationListView> {
  late QuotationListBloc _quotationListBloc;
  late bool _isArtist;
  final ScrollController _scrollController = ScrollController();

  String searchTerm = '';
  List<String> _selectedStatuses = [];
  List<Map<String, dynamic>> _filterOptions = [];
  bool _didInitDependencies = false;
  Map<String, dynamic>? _selectedOption;

  @override
  void initState() {
    super.initState();
    context.read<QuotationListBloc>().add(const QuotationListEvent.started());
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      final currentState = _quotationListBloc.state;
      if (currentState is QuotationListLoaded && !currentState.isLoadingMore) {
        if (currentState.quotations.length < currentState.totalItems) {
          _quotationListBloc.add(
            QuotationListEvent.loadQuotations(
              _selectedStatuses,
              true, // isNextPage es true
            ),
          );
        }
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

      // Inicializar la opción seleccionada con la primera opción
      _selectedOption = _filterOptions[0];
      _selectedStatuses = _selectedOption?['statuses'] as List<String>;

      // Cargar las cotizaciones para el estado seleccionado
      _quotationListBloc.add(
        QuotationListEvent.loadQuotations(_selectedStatuses, false),
      );
    }
  }

  List<Map<String, dynamic>> getFilterOptions(S l10n) {
    if (_isArtist) {
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
        // {
        //   'label': l10n.completed,
        //   'statuses': ['completed']
        // },
        {
          'label': l10n.cancelled,
          'statuses': ['rejected', 'canceled']
        },
      ];
    } else {
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
        // {
        //   'label': l10n.completed,
        //   'statuses': ['completed']
        // },
        {
          'label': l10n.cancelled,
          'statuses': ['rejected', 'canceled']
        },
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFF141D3C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título
              Text(
                _isArtist ? l10n.requests : l10n.quotes,
                style: TextStyleTheme.headline1
                    .copyWith(color: const Color(0xFFF2F2F2)),
              ),
              const SizedBox(height: 16),
              // Filtros con FilterChips
              _buildFilterChips(l10n),
              const SizedBox(height: 16),
              // Lista de cotizaciones
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
                      ));
                    }
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
                          currentPage,
                          totalItems,
                          statuses,
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

                _quotationListBloc.add(QuotationListEvent.loadQuotations(
                  _selectedStatuses,
                  false,
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
        _quotationListBloc.add(QuotationListEvent.loadQuotations(
          _selectedStatuses,
          false,
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
            // Mostrar indicador de carga al final
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
  ) {
    final isArtist = session.user?.userType == 'ARTIST';
    final isUnread =
        isArtist ? !quotation.readByArtist : !quotation.readByCustomer;
    final statusText =
        QuotationStatusL10n.getStatus(quotation.status, l10n, isArtist);
    final statusColor = getStatusColor(quotation.status);
    final statusIcon = getStatusIcon(quotation.status);
    final counterpartInfo = isArtist
        ? CounterpartInfo.fromCustomer(quotation.customer)
        : CounterpartInfo.fromArtist(quotation.artist);

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
                          child: _buildCounterpartHeader(
                              counterpartInfo, isArtist)),
                      if (isUnread)
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
                  const SizedBox(height: 16),
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

    return QuotationActionButtons(
      actionManager: QuotationActionManager(
        context: context,
        quotation: quotation,
        session: session,
        l10n: l10n,
        onActionExecuted: (actionType, quotationId) {
          // Manejar las acciones ejecutadas
          switch (actionType) {
            case QuotationActionType.cancel:
              _quotationListBloc.add(
                QuotationListEvent.cancelQuotation(quotationId),
              );
              break;
            default:
              // Recargar la lista después de cualquier otra acción
              _quotationListBloc.add(
                QuotationListEvent.loadQuotations(_selectedStatuses, false),
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
