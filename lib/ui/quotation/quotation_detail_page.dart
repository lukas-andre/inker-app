import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/quotation/artist_open_quotation_offer_page.dart';
import 'package:inker_studio/ui/quotation/quotation_offer_message_page.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_images.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/ui/quotation/quotation_action_manager.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_action_buttons.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class QuotationDetailsPage extends StatefulWidget {
  final Quotation quotation;

  const QuotationDetailsPage({
    super.key,
    required this.quotation,
  });

  @override
  State<QuotationDetailsPage> createState() => _QuotationDetailsPageState();
}

class _QuotationDetailsPageState extends State<QuotationDetailsPage> {
  late Quotation _currentQuotation;
  late QuotationListBloc _bloc;
  late NotificationsBloc _notificationsBloc;
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _currentQuotation = widget.quotation;
    _bloc = context.read<QuotationListBloc>();
    _notificationsBloc = context.read<NotificationsBloc>();

    // Mark quotation as read when viewed
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    if ((_currentQuotation.readByArtist == false && isArtist) ||
        (_currentQuotation.readByCustomer == false && !isArtist)) {
      _bloc.add(QuotationListEvent.markAsRead(_currentQuotation.id.toString()));
    }

    // Get fresh data without showing loading indicator
    _bloc.add(
        QuotationListEvent.getQuotationById(_currentQuotation.id.toString()));
  }

  // Method to refresh the quotation data
  Future<void> _refreshQuotation() async {
    setState(() {
      _isRefreshing = true;
    });

    // Get the latest quotation data
    _bloc.add(
        QuotationListEvent.getQuotationById(_currentQuotation.id.toString()));

    // Safety timeout to ensure loading indicator doesn't get stuck
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted && _isRefreshing) {
        setState(() {
          _isRefreshing = false;
        });
      }
    });
  }

  // Updates the current quotation when the bloc state changes
  void _updateQuotationFromState() {
    final state = _bloc.state;
    if (state is QuotationListLoaded) {
      final updatedQuotation = state.quotations.firstWhere(
        (q) => q.id == _currentQuotation.id,
        orElse: () => _currentQuotation,
      );

      if (updatedQuotation.id == _currentQuotation.id) {
        // Always update the UI when we have a matching quotation, even if it seems identical
        // Sometimes backend updates don't change all properties but we still need to refresh
        setState(() {
          _currentQuotation = updatedQuotation;
          _isRefreshing = false;
        });
      } else {
        // If no matching quotation found, still reset the refreshing state
        if (_isRefreshing) {
          setState(() {
            _isRefreshing = false;
          });
        }
      }
    } else if (_isRefreshing && state is QuotationListError) {
      // Reset refreshing flag on error too
      setState(() {
        _isRefreshing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    final counterpartInfo = isArtist
        ? CounterpartInfo.fromCustomer(_currentQuotation.customer)
        : CounterpartInfo.fromArtist(_currentQuotation.artist);
    final bool isOpenQuotation = _currentQuotation.type == QuotationType.OPEN;

    return WillPopScope(
      onWillPop: () async {
        // Refresh notifications when going back
        _notificationsBloc.add(const NotificationsEvent.refreshNotifications());
        return true;
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text(l10n.quotationDetails, style: TextStyleTheme.headline2),
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _refreshQuotation,
              tooltip: l10n.refresh,
            ),
          ],
        ),
        body: BlocListener<QuotationListBloc, QuotationListState>(
          listener: (context, state) {
            _updateQuotationFromState();
          },
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _isRefreshing ? 3 : 0,
                child: const LinearProgressIndicator(
                  backgroundColor: primaryColor,
                  valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
                ),
              ),
              // Show banner for OPEN quotations (consistency)
              if (isOpenQuotation && isArtist) _OpenQuotationBanner(),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: _refreshQuotation,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // No mostrar _CounterpartHeader para cotizaciones abiertas vistas por clientes
                        if (!(isOpenQuotation && !isArtist))
                          _CounterpartHeader(
                            info: counterpartInfo,
                            isArtist: isArtist,
                            quotation: _currentQuotation,
                          ),
                        _MainQuotationInfo(quotation: _currentQuotation),
                        if (_currentQuotation.history != null &&
                            _currentQuotation.history!.isNotEmpty)
                          _QuotationTimeline(
                              history: _currentQuotation.history!),
                        QuotationImages(quotation: _currentQuotation),
                      ],
                    ),
                  ),
                ),
              ),
              // Conditionally show action buttons container only for DIRECT quotations
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: explorerSecondaryColor,
                    border: Border(
                      top: BorderSide(
                        color: tertiaryColor.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  child: QuotationActionButtons(
                    actionManager: QuotationActionManager(
                      context: context,
                      quotation: _currentQuotation,
                      session: context.read<AuthBloc>().state.session,
                      l10n: l10n,
                      onActionExecuted: (actionType, quotationId) async {
                        _bloc.add(const QuotationListEvent.refreshCurrentTab());

                        if (actionType == QuotationActionType.cancel) {
                          _bloc.add(
                              QuotationListEvent.cancelQuotation(quotationId));
                          await Future.delayed(const Duration(seconds: 1));
                          if (!context.mounted) return;
                          Navigator.of(context).pop(true);
                        } else {
                          await Future.delayed(const Duration(seconds: 1));
                          if (context.mounted) {
                            _refreshQuotation();
                            Future.delayed(const Duration(seconds: 2), () {
                              if (context.mounted) {
                                _refreshQuotation();
                              }
                            });
                          }
                        }
                        _notificationsBloc.add(
                            NotificationsEvent.clearQuotationNotifications(
                                quotationId));
                      },
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class _CounterpartHeader extends StatelessWidget {
  final CounterpartInfo info;
  final bool isArtist;
  final Quotation quotation;

  const _CounterpartHeader({
    required this.info,
    required this.isArtist,
    required this.quotation,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (info.profileThumbnail != null)
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(info.profileThumbnail!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                else
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF686D90),
                    ),
                    child: Center(
                      child: Text(
                        info.firstLetter,
                        style: TextStyleTheme.headline2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isArtist ? l10n.customer : l10n.artist,
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: tertiaryColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        info.displayName,
                        style: TextStyleTheme.headline3,
                      ),
                      if (!isArtist && info.username != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          '@${info.username}',
                          style: TextStyleTheme.bodyText2.copyWith(
                            color: tertiaryColor,
                          ),
                        ),
                      ],
                      if (info.contactInfo != null) ...[
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.email_outlined,
                              size: 16,
                              color: tertiaryColor,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                info.contactInfo!,
                                style: TextStyleTheme.bodyText2.copyWith(
                                  color: tertiaryColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            if (quotation.location != null) ...[
              const Divider(height: 32),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: tertiaryColor,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.location,
                          style: TextStyleTheme.subtitle2.copyWith(
                            color: tertiaryColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          quotation.location!.formattedAddress,
                          style: TextStyleTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _MainQuotationInfo extends StatelessWidget {
  final Quotation quotation;

  const _MainQuotationInfo({required this.quotation});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    final bool isOpenQuotation = quotation.type == QuotationType.OPEN;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mostrar imagen generada si existe
            if (quotation.tattooDesignImageUrl != null) ...[
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (_) => _ImageViewerDialog(
                      imageUrl: quotation.tattooDesignImageUrl!,
                    ),
                  );
                },
                child: Hero(
                  tag: 'tattooDesignImage_${quotation.id}',
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    margin: const EdgeInsets.only(bottom: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.18),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      border: Border.all(color: secondaryColor, width: 2),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      quotation.tattooDesignImageUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: tertiaryColor.withOpacity(0.2),
                        child: const Icon(Icons.broken_image, color: tertiaryColor, size: 64),
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator(strokeWidth: 2));
                      },
                    ),
                  ),
                ),
              ),
            ],
            // Fecha de creación y estado actual
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.createdAt,
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: tertiaryColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: tertiaryColor,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            DateFormat('yyyy-MM-dd HH:mm')
                                .format(quotation.createdAt),
                            style: TextStyleTheme.bodyText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      l10n.currentStatus,
                      style: TextStyleTheme.subtitle2.copyWith(
                        color: tertiaryColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    _StatusChip(status: quotation.status),
                  ],
                ),
              ],
            ),
            const Divider(height: 32),

            // Special section for Open quotations based on user type
            if (isOpenQuotation)
              isArtist
                  ? _buildOpenQuotationActionSection(context, quotation)
                  : _CustomerOpenQuotationOffersSection(quotation: quotation),

            // Descripción
            Text(
              l10n.description,
              style: TextStyleTheme.subtitle2.copyWith(
                color: tertiaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              quotation.description,
              style: TextStyleTheme.bodyText1,
            ),
            // Mostrar referenceBudget si existe
            if (quotation.referenceBudget != null) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.account_balance_wallet, color: Color(0xFF686D90), size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Presupuesto de referencia: ',
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: const Color(0xFFF2F2F2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${quotation.referenceBudget!.formatWithSymbol()} CLP',
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 16),

            // Información adicional según el estado
            ..._buildStateSpecificInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOpenQuotationActionSection(
      BuildContext context, Quotation quotation) {
    final l10n = S.of(context);
    final bool hasOffered = quotation.hasOffered;

    if (hasOffered) {
      // If artist has already offered, show a different UI
      final List<QuotationOfferListItemDto>? offers = quotation.offers;
      String costText = "Offer submitted";
      QuotationOfferListItemDto? artistOffer;

      if (offers != null && offers.isNotEmpty) {
        // Find the current artist's offer
        final currentArtistId =
            context.read<AuthBloc>().state.session.user?.userTypeId;
        artistOffer = offers.firstWhere(
          (offer) => offer.artistId == currentArtistId,
          orElse: () => offers.first, // Fallback to first offer
        );

        if (artistOffer.estimatedCost != null) {
          final cost = artistOffer.estimatedCost!;
          costText = "Offer: \$${cost.amount / 100} ${cost.currency}";
        }
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You've already submitted an offer",
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        costText,
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 24),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.message),
              label: const Text("Message Customer"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                // Navigate to message page if we have an offer
                if (artistOffer != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => QuotationOfferMessagePage(
                        quotationId: quotation.id.toString(),
                        offerId: artistOffer!.id,
                        offer: artistOffer,
                        customerName:
                            quotation.customer?.firstName ?? "Customer",
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Offer details not available")),
                  );
                }
              },
            ),
          ),
          const Divider(height: 24),
        ],
      );
    } else {
      // Original UI for non-offered quotations
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: redColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.lightbulb_outline,
                  color: redColor,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer is looking for offers!",
                        style: TextStyleTheme.subtitle2.copyWith(
                          color: redColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Review the details and submit your offer to win this project.",
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 24),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: Text("Send Offer"),
              style: ElevatedButton.styleFrom(
                backgroundColor: redColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                // Navigate to the new Offer Page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArtistOpenQuotationOfferPage(
                      quotationId: quotation.id.toString(),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(height: 24),
        ],
      );
    }
  }

  List<Widget> _buildStateSpecificInfo(BuildContext context) {
    final l10n = S.of(context);
    final List<Widget> widgets = [];

    // Stencil (si existe)
    if (quotation.stencil != null) {
      widgets.addAll([
        const Divider(height: 24),
        Text(
          'Diseño seleccionado',
          style: TextStyleTheme.subtitle2.copyWith(
            color: tertiaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        _StencilPreviewWidget(stencil: quotation.stencil!),
        const SizedBox(height: 16),
      ]);
    }

    // Costo estimado (si existe)
    if (quotation.estimatedCost != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.attach_money,
          title: l10n.estimatedCost,
          content: '\$${quotation.estimatedCost!.amount.toStringAsFixed(2)}',
          highlight: true,
        ),
        const SizedBox(height: 16),
      ]);
    }

    // Fecha de cita (si existe)
    if (quotation.appointmentDate != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.event,
          title: l10n.appointmentDateTime,
          content:
              DateFormat('yyyy-MM-dd HH:mm').format(quotation.appointmentDate!),
        ),
        const SizedBox(height: 16),
      ]);
    }

    // Duración de la cita (si existe)
    if (quotation.appointmentDuration != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.access_time,
          title: l10n.appointmentDuration,
          content: '${quotation.appointmentDuration} ${l10n.hours}',
        ),
        const SizedBox(height: 16),
      ]);
    }

    // Para estados cancelados o rechazados, mostrar la razón si existe
    if (quotation.status == QuotationStatus.canceled &&
        quotation.cancelReasonDetails != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.cancel_outlined,
          title: l10n.cancellationReason,
          content: quotation.cancelReasonDetails!,
          isWarning: true,
        ),
      ]);
    } else if (quotation.status == QuotationStatus.rejected &&
        quotation.rejectReasonDetails != null) {
      widgets.addAll([
        _InfoSection(
          icon: Icons.close_outlined,
          title: l10n.rejectionReason,
          content: quotation.rejectReasonDetails!,
          isWarning: true,
        ),
      ]);
    }

    return widgets;
  }
}

class _InfoSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final bool highlight;
  final bool isWarning;

  const _InfoSection({
    required this.icon,
    required this.title,
    required this.content,
    this.highlight = false,
    this.isWarning = false,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor = isWarning
        ? Colors.red
        : highlight
            ? secondaryColor
            : Colors.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleTheme.subtitle2.copyWith(
            color: tertiaryColor,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(icon, color: contentColor, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                content,
                style: (highlight
                        ? TextStyleTheme.headline3
                        : TextStyleTheme.bodyText1)
                    .copyWith(color: contentColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuotationTimeline extends StatelessWidget {
  final List<QuotationHistory> history;

  const _QuotationTimeline({required this.history});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.quotationHistory,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: history.length,
              itemBuilder: (context, index) {
                final item = history[index];
                return _TimelineItem(
                  history: item,
                  isLast: index == history.length - 1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final QuotationHistory history;
  final bool isLast;

  const _TimelineItem({
    required this.history,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: isLast ? 16 : 12,
                height: isLast ? 16 : 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _getStatusColor(history.newStatus),
                  border: isLast
                      ? Border.all(
                          color: Colors.white,
                          width: 2,
                        )
                      : null,
                ),
              ),
              if (!isLast)
                Container(
                  width: 2,
                  height: 40,
                  color: tertiaryColor.withOpacity(0.5),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getStatusChangeText(history, l10n),
                  style: TextStyleTheme.bodyText1.copyWith(
                    fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                    fontSize: isLast ? 16 : null,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('yyyy-MM-dd HH:mm').format(history.changedAt),
                  style: TextStyleTheme.caption.copyWith(
                    color: isLast ? Colors.white70 : tertiaryColor,
                    fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                ..._buildAdditionalDetails(history, l10n),
                if (!isLast) const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildAdditionalDetails(QuotationHistory history, S l10n) {
    final List<Widget> details = [];

    // Cambios en el costo estimado
    if (history.previousEstimatedCost != null &&
        history.newEstimatedCost != null) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          '${l10n.estimatedCostChangedFrom} \$${history.previousEstimatedCost} ${l10n.to} \$${history.newEstimatedCost}',
          style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
        ),
      );
    }

    // Cambios en la fecha de cita
    if (history.previousAppointmentDate != null &&
        history.newAppointmentDate != null) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          '${l10n.appointmentDateChangedFrom} ${DateFormat('yyyy-MM-dd HH:mm').format(history.previousAppointmentDate!)} ${l10n.to} ${DateFormat('yyyy-MM-dd HH:mm').format(history.newAppointmentDate!)}',
          style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
        ),
      );
    }

    // Detalles según el estado
    String? stateDetails = _getStateSpecificDetails(history, l10n);
    if (stateDetails != null) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          stateDetails,
          style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
        ),
      );
    }

    // Detalles adicionales generales
    if (history.additionalDetails?.isNotEmpty == true) {
      details.add(const SizedBox(height: 8));
      details.add(
        Text(
          history.additionalDetails!,
          style: TextStyleTheme.bodyText2,
        ),
      );
    }

    return details;
  }

  String? _getStateSpecificDetails(QuotationHistory history, S l10n) {
    // Apelación
    if (history.newStatus == QuotationStatus.appealed &&
        history.appealedReason != null) {
      return '${l10n.appealReason}: ${_getAppealReasonText(history.appealedReason!, l10n)}';
    }

    // Rechazo
    if (history.newStatus == QuotationStatus.rejected &&
        history.rejectionReason != null) {
      return '${l10n.rejectionReason}: ${history.rejectionReason}';
    }

    // Cancelación
    if (history.newStatus == QuotationStatus.canceled &&
        history.cancellationReason != null) {
      return '${l10n.cancellationReason}: ${history.cancellationReason}';
    }

    return null;
  }

  String _getAppealReasonText(QuotationCustomerAppealReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerAppealReason.dateChange:
        return l10n.appealReasonDateChange;
      case QuotationCustomerAppealReason.priceChange:
        return l10n.appealReasonPriceChange;
      case QuotationCustomerAppealReason.designChange:
        return l10n.appealReasonDesignChange;
      case QuotationCustomerAppealReason.other:
        return l10n.appealReasonOther;
    }
  }

  Color _getStatusColor(QuotationStatus status) {
    switch (status) {
      case QuotationStatus.pending:
        return Colors.orange;
      case QuotationStatus.quoted:
        return Colors.blue;
      case QuotationStatus.accepted:
        return Colors.green;
      case QuotationStatus.rejected:
        return Colors.red;
      case QuotationStatus.appealed:
        return Colors.purple;
      case QuotationStatus.canceled:
        return Colors.grey;
      case QuotationStatus.open:
        return redColor;
    }
  }

  String _getStatusChangeText(QuotationHistory history, S l10n) {
    final userType = _getUserTypeText(history.changedByUserType, l10n);
    final action =
        _getActionText(history.previousStatus, history.newStatus, l10n);

    return '$userType $action';
  }

  String _getUserTypeText(QuotationRole userType, S l10n) {
    switch (userType) {
      case QuotationRole.artist:
        return l10n.artist;
      case QuotationRole.customer:
        return l10n.customer;
      case QuotationRole.system:
        return l10n.system;
    }
  }

  String _getActionText(QuotationStatus from, QuotationStatus to, S l10n) {
    if (from == QuotationStatus.pending && to == QuotationStatus.quoted) {
      return l10n.quotedTheRequest;
    }
    if (from == QuotationStatus.quoted && to == QuotationStatus.accepted) {
      return l10n.acceptedTheQuotation;
    }
    if (to == QuotationStatus.rejected) {
      return l10n.rejectedTheQuotation;
    }
    if (to == QuotationStatus.appealed) {
      return l10n.appealedTheQuotation;
    }
    if (to == QuotationStatus.canceled) {
      return l10n.canceledTheQuotation;
    }
    if (to == QuotationStatus.open) {
      return "Creó una solicitud abierta";
    }

    return '${l10n.changedStatusFrom} ${_getStatusText(from, l10n)} ${l10n.to} ${_getStatusText(to, l10n)}';
  }

  String _getStatusText(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.statusPending;
      case QuotationStatus.quoted:
        return l10n.statusQuoted;
      case QuotationStatus.accepted:
        return l10n.statusAccepted;
      case QuotationStatus.rejected:
        return l10n.statusRejected;
      case QuotationStatus.appealed:
        return l10n.statusAppealed;
      case QuotationStatus.canceled:
        return l10n.statusCanceled;
      case QuotationStatus.open:
        return "Abierta";
    }
  }
}

class _StatusChip extends StatelessWidget {
  final QuotationStatus status;

  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getStatusColor(status).withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: _getStatusColor(status),
          width: 1,
        ),
      ),
      child: Text(
        _getStatusText(status, S.of(context)),
        style: TextStyleTheme.button.copyWith(
          color: _getStatusColor(status),
        ),
      ),
    );
  }

  Color _getStatusColor(QuotationStatus status) {
    switch (status) {
      case QuotationStatus.pending:
        return Colors.orange;
      case QuotationStatus.quoted:
        return Colors.blue;
      case QuotationStatus.accepted:
        return Colors.green;
      case QuotationStatus.rejected:
        return Colors.red;
      case QuotationStatus.appealed:
        return Colors.purple;
      case QuotationStatus.canceled:
        return Colors.grey;
      case QuotationStatus.open:
        return redColor;
    }
  }

  String _getStatusText(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.statusPending;
      case QuotationStatus.quoted:
        return l10n.statusQuoted;
      case QuotationStatus.accepted:
        return l10n.statusAccepted;
      case QuotationStatus.rejected:
        return l10n.statusRejected;
      case QuotationStatus.appealed:
        return l10n.statusAppealed;
      case QuotationStatus.canceled:
        return l10n.statusCanceled;
      case QuotationStatus.open:
        return "Abierta";
    }
  }
}

class _StencilPreviewWidget extends StatelessWidget {
  final Stencil stencil;

  const _StencilPreviewWidget({required this.stencil});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.25).toColor(),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: CachedNetworkImage(
                imageUrl: stencil.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: HSLColor.fromColor(primaryColor)
                      .withLightness(0.2)
                      .toColor(),
                  child: const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: HSLColor.fromColor(primaryColor)
                      .withLightness(0.2)
                      .toColor(),
                  child: const Icon(Icons.error, color: redColor, size: 32),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stencil.title,
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                if (stencil.description != null &&
                    stencil.description!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    stencil.description!,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white.withOpacity(0.8),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OpenQuotationBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: redColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: redColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.lightbulb_outline,
            color: redColor,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Solicitud de Cotización Abierta',
                  style: TextStyleTheme.subtitle1.copyWith(
                    color: redColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Este cliente está buscando ofertas. Puedes enviar tu cotización para ganar este proyecto.',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Section that displays offers received for an open quotation (Customer View)
class _CustomerOpenQuotationOffersSection extends StatelessWidget {
  final Quotation quotation;

  const _CustomerOpenQuotationOffersSection({
    required this.quotation,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final List<QuotationOfferListItemDto>? offers = quotation.offers;
    final int offersCount = offers?.length ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header section with offer count
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: offersCount > 0
                ? const Color(0xFF4CAF50).withOpacity(0.1)
                : const Color(0xFF9E9E9E).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: offersCount > 0
                  ? const Color(0xFF4CAF50).withOpacity(0.3)
                  : const Color(0xFF9E9E9E).withOpacity(0.3),
            ),
          ),
          child: Row(
            children: [
              Icon(
                offersCount > 0
                    ? Icons.verified_outlined
                    : Icons.hourglass_empty,
                color: offersCount > 0 ? const Color(0xFF4CAF50) : Colors.grey,
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      offersCount > 0
                          ? 'Has recibido ${offersCount} ${offersCount == 1 ? 'oferta' : 'ofertas'}'
                          : 'Aún no has recibido ofertas',
                      style: TextStyleTheme.subtitle2.copyWith(
                        color: offersCount > 0
                            ? const Color(0xFF4CAF50)
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      offersCount > 0
                          ? 'Revisa cada oferta y chatea con los artistas'
                          : 'Las ofertas aparecerán aquí cuando las recibas',
                      style: TextStyleTheme.bodyText2.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // List of offers
        if (offersCount > 0) ...[
          // Title
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              'Ofertas recibidas',
              style: TextStyleTheme.subtitle1.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Offers list
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: offersCount,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final offer = offers![index];
              return _OfferListItem(
                offer: offer,
                quotationId: quotation.id.toString(),
                customerName: quotation.customer?.firstName ?? 'Cliente',
              );
            },
          ),
        ],

        const Divider(height: 32),
      ],
    );
  }
}

class _OfferListItem extends StatelessWidget {
  final QuotationOfferListItemDto offer;
  final String quotationId;
  final String customerName;

  const _OfferListItem({
    required this.offer,
    required this.quotationId,
    required this.customerName,
  });

  @override
  Widget build(BuildContext context) {
    // Function to navigate to chat
    void navigateToChat() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => QuotationOfferMessagePage(
            quotationId: quotationId,
            offerId: offer.id,
            offer: offer,
            customerName: customerName,
          ),
        ),
      );
    }

    // Format cost if available
    String costText = 'No especificado';
    if (offer.estimatedCost != null) {
      costText = offer.estimatedCost!.formatWithSymbol();
    }

    // Get message count if available
    final int messageCount = offer.messages.length;

    return Card(
      elevation: 0,
      color: Colors.black12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.white.withOpacity(0.1)),
      ),
      child: InkWell(
        onTap: navigateToChat,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Artist ID and cost
              Row(
                children: [
                  const Icon(Icons.person_outline,
                      color: Colors.white70, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    'Artista: ${offer.artistName}',
                    style: TextStyleTheme.bodyText2.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      costText,
                      style: TextStyleTheme.subtitle2.copyWith(
                        color: const Color(0xFF4CAF50),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Message preview or action button
              if (messageCount > 0) ...[
                Row(
                  children: [
                    const Icon(Icons.message_outlined,
                        color: Colors.white70, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '$messageCount ${messageCount == 1 ? 'mensaje' : 'mensajes'}',
                      style: TextStyleTheme.caption
                          .copyWith(color: Colors.white70),
                    ),
                    const Spacer(),
                    const Icon(Icons.chevron_right,
                        color: Colors.white70, size: 16),
                  ],
                ),
                if (offer.message != null && offer.message!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Mensaje: ${offer.message!.length > 50 ? '${offer.message!.substring(0, 50)}...' : offer.message!}',
                    style:
                        TextStyleTheme.bodyText2.copyWith(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ] else ...[
                ElevatedButton.icon(
                  onPressed: navigateToChat,
                  icon: const Icon(Icons.chat_outlined, size: 16),
                  label: const Text('Iniciar chat'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: secondaryColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    textStyle: TextStyleTheme.caption
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// --- Visualizador de imagen fullscreen (reutilizado) ---
class _ImageViewerDialog extends StatelessWidget {
  final String imageUrl;
  const _ImageViewerDialog({required this.imageUrl});

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
                tag: 'tattooDesignImage_${ModalRoute.of(context)?.settings.arguments ?? imageUrl}',
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: tertiaryColor.withOpacity(0.2),
                    child: const Icon(Icons.broken_image, color: tertiaryColor, size: 64),
                  ),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white));
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
                tooltip: 'Cerrar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
