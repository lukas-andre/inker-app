import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
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
    return BlocProvider(
      create: (context) => QuotationListBloc(
        quotationService: context.read(),
        sessionService: context.read(),
      )..add(const QuotationListEvent.started()),
      child: const QuotationListView(),
    );
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
        {
          'label': l10n.completed,
          'statuses': ['completed']
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
                          context: context,
                          content: l10n.quotationCancelledSuccessfully,
                          backgroundColor: secondaryColor,
                        ),
                      );
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
    final statusText = getStatusText(quotation.status, l10n, isArtist);
    final statusColor = getStatusColor(quotation.status);
    final statusIcon = getStatusIcon(quotation.status);

    return Card(
      color: const Color(0xFF1F223C),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Color(0xFF777E91)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Insignia de Estado y Fecha de Creación
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
                    children: [
                      Icon(
                        statusIcon,
                        color: statusColor,
                        size: 16,
                      ),
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
                // Fecha de Creación
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      color: Color(0xFF686D90),
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      DateFormat.yMMMd().format(quotation.createdAt),
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: const Color(0xFF686D90),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Descripción
            Text(
              quotation.description,
              style: TextStyleTheme.bodyText1.copyWith(
                color: const Color(0xFFF2F2F2),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Detalles
            if (quotation.estimatedCost != null ||
                quotation.appointmentDate != null ||
                quotation.appointmentDuration != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (quotation.estimatedCost != null)
                    _buildDetailRow(
                      icon: Icons.attach_money,
                      label: l10n.estimatedCost,
                      value: '\$${quotation.estimatedCost!.toStringAsFixed(2)}',
                    ),
                  if (quotation.appointmentDate != null)
                    _buildDetailRow(
                      icon: Icons.event,
                      label: l10n.appointmentDate,
                      value:
                          DateFormat.yMMMd().format(quotation.appointmentDate!),
                    ),
                  if (quotation.appointmentDuration != null)
                    _buildDetailRow(
                      icon: Icons.access_time,
                      label: l10n.appointmentDuration,
                      value: '${quotation.appointmentDuration} ${l10n.hours}',
                    ),
                ],
              ),
            const SizedBox(height: 16),
            // Imágenes de Referencia
            if (quotation.referenceImages != null &&
                quotation.referenceImages!.metadata.isNotEmpty)
              Column(
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
              ),
            // Propuestas de Diseño
            if (quotation.proposedDesigns != null &&
                quotation.proposedDesigns!.metadata.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
              ),
            const SizedBox(height: 16),
            // Acciones
            _buildActions(quotation, session, l10n, cancellingQuotationId),
          ],
        ),
      ),
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
    final isArtist = session.user?.userType == 'ARTIST';
    final isCancelling = cancellingQuotationId == quotation.id.toString();

    // Acciones para el Artista
    if (isArtist) {
      switch (quotation.status) {
        case QuotationStatus.pending:
        case QuotationStatus.appealed:
          // El artista puede responder o rechazar la cotización
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildActionButton(
                onPressed: () async {
                  final result = await Navigator.of(context).pushNamed(
                    '/artistQuotationResponse',
                    arguments: {'quotationId': quotation.id.toString()},
                  );
                  if (result == true) {
                    _quotationListBloc.add(QuotationListEvent.loadQuotations(
                      _selectedStatuses,
                      false,
                    ));
                  }
                },
                icon: Icons.reply,
                label: l10n.reply,
                isPrimary: true,
              ),
              const SizedBox(width: 8),
              _buildActionButton(
                onPressed: () async {
                  final result = await Navigator.of(context).pushNamed(
                    '/artistQuotationResponse',
                    arguments: {
                      'quotationId': quotation.id.toString(),
                      'predefinedAction': ArtistQuotationAction.reject
                    },
                  );
                  if (result == true) {
                    _quotationListBloc.add(QuotationListEvent.loadQuotations(
                      _selectedStatuses,
                      false,
                    ));
                  }
                },
                icon: Icons.cancel,
                label: l10n.reject,
                isPrimary: false,
              ),
            ],
          );
        default:
          return const SizedBox.shrink();
      }
    }

    // Acciones para el Cliente
    else {
      switch (quotation.status) {
        case QuotationStatus.pending:
        case QuotationStatus.appealed:
          // El cliente puede cancelar la cotización
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isCancelling
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: InkerProgressIndicator(),
                    )
                  : _buildActionButton(
                      onPressed: () => _showCancelConfirmationDialog(
                          context, quotation, l10n),
                      icon: Icons.cancel,
                      label: l10n.cancel,
                      isPrimary: false,
                    ),
            ],
          );
        case QuotationStatus.quoted:
          // El cliente puede aceptar, apelar o rechazar la cotización
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildActionButton(
                onPressed: () {
                  // Implementar la lógica para aceptar
                },
                icon: Icons.check,
                label: l10n.accept,
                isPrimary: true,
              ),
              const SizedBox(width: 8),
              _buildActionButton(
                onPressed: () {
                  // Implementar la lógica para apelar
                },
                icon: Icons.edit,
                label: l10n.appeal,
                isPrimary: false,
              ),
              const SizedBox(width: 8),
              _buildActionButton(
                onPressed: () {
                  // Implementar la lógica para rechazar
                },
                icon: Icons.cancel,
                label: l10n.reject,
                isPrimary: false,
              ),
            ],
          );
        default:
          return const SizedBox.shrink();
      }
    }
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

  Widget _buildActionButton({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
    required bool isPrimary,
  }) {
    return ElevatedButton.icon(
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

  void _showCancelConfirmationDialog(
      BuildContext context, Quotation quotation, S l10n) {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text(l10n.cancelQuotationConfirmationTitle),
          content: Text(l10n.cancelQuotationConfirmationMessage),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(l10n.no),
              onPressed: () => Navigator.of(context).pop(),
            ),
            CupertinoDialogAction(
              child: Text(l10n.yes),
              onPressed: () {
                Navigator.of(context).pop();
                _cancelQuotation(quotation);
              },
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(l10n.cancelQuotationConfirmationTitle),
          content: Text(l10n.cancelQuotationConfirmationMessage),
          actions: <Widget>[
            TextButton(
              child: Text(l10n.no),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text(l10n.yes),
              onPressed: () {
                Navigator.of(context).pop();
                _cancelQuotation(quotation);
              },
            ),
          ],
        ),
      );
    }
  }

  void _cancelQuotation(Quotation quotation) {
    _quotationListBloc
        .add(QuotationListEvent.cancelQuotation(quotation.id.toString()));
  }
}

String getStatusText(QuotationStatus status, S l10n, bool isArtist) {
  if (isArtist) {
    switch (status) {
      case QuotationStatus.pending:
      case QuotationStatus.appealed:
        return l10n.newRequest;
      case QuotationStatus.quoted:
        return l10n.awaitingReply;
      case QuotationStatus.accepted:
        return l10n.scheduled;
      case QuotationStatus.rejected:
      case QuotationStatus.canceled:
        return l10n.cancelled;
      default:
        return '';
    }
  } else {
    switch (status) {
      case QuotationStatus.pending:
      case QuotationStatus.appealed:
        return l10n.awaitingArtist;
      case QuotationStatus.quoted:
        return l10n.receivedQuotation;
      case QuotationStatus.accepted:
        return l10n.scheduled;
      case QuotationStatus.rejected:
      case QuotationStatus.canceled:
        return l10n.cancelled;
      default:
        return '';
    }
  }
}
