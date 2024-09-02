import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class _QuotationListViewState extends State<QuotationListView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String searchTerm = "";
  late QuotationListBloc _quotationListBloc;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _quotationListBloc = BlocProvider.of<QuotationListBloc>(context);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    if (!_tabController.indexIsChanging) {
      _quotationListBloc
          .add(QuotationListEvent.changeTab(_tabController.index));
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
              Text(
                l10n.createQuotation,
                style: TextStyleTheme.headline1
                    .copyWith(color: const Color(0xFFF2F2F2)),
              ),
              const SizedBox(height: 16),
              _buildTabs(l10n),
              const SizedBox(height: 16),
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
                    loaded: (quotationsByTab,
                        currentTab,
                        currentPage,
                        hasMorePages,
                        session,
                        currentStatuses,
                        isLoadingMore,
                        cancellingQuotationId) {
                      final quotations = quotationsByTab[currentTab] ?? [];
                      return _buildQuotationList(
                        quotations,
                        session,
                        l10n,
                        hasMorePages[currentTab] ?? false,
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
                    orElse: () => const Center(child: InkerProgressIndicator()),
                  );
                },
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement create quotation functionality
        },
        backgroundColor: const Color(0xFF7450ff),
        child: const Icon(Icons.add, color: Color(0xFFF2F2F2)),
      ),
    );
  }

  Widget _buildTabs(S l10n) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1F223C),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFF777E91)),
            ),
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: _tabController,
              tabAlignment: TabAlignment.fill,
              indicator: BoxDecoration(
                color: const Color(0xFF7450ff),
                borderRadius: BorderRadius.circular(8),
              ),
              unselectedLabelColor: const Color(0xFFF2F2F2),
              labelStyle: TextStyleTheme.button,
              labelPadding: EdgeInsets.zero,
              tabs: [
                _buildTab(l10n.upcomming),
                _buildTab(l10n.completed),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTab(String text) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(text)),
    );
  }

  Widget _buildQuotationList(
    List<Quotation> quotations,
    Session session,
    S l10n,
    bool hasMorePages,
    bool isLoadingMore,
    String? cancellingQuotationId,
  ) {
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

    return ListView.builder(
      itemCount: filteredQuotations.length + (hasMorePages ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == filteredQuotations.length) {
          if (hasMorePages) {
            return isLoadingMore
                ? const Center(child: InkerProgressIndicator())
                : ElevatedButton(
                    onPressed: () {
                      _quotationListBloc.add(QuotationListEvent.loadQuotations(
                          _quotationListBloc
                              .getStatusesForTab(_tabController.index),
                          true));
                    },
                    child: Text(l10n.loadMore),
                  );
          } else {
            return const SizedBox.shrink();
          }
        }
        return _buildQuotationCard(
            filteredQuotations[index], session, l10n, cancellingQuotationId);
      },
    );
  }

  Widget _buildQuotationCard(Quotation quotation, Session session, S l10n,
      String? cancellingQuotationId) {
    final isArtist = session.user?.userType == 'ARTIST';
    final isCustomer = !isArtist;
    final canCancel = isCustomer && quotation.status == QuotationStatus.pending;
    final canReplyAndCancel =
        isCustomer && quotation.status == QuotationStatus.quoted;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quotation.description,
                        style: TextStyleTheme.subtitle1
                            .copyWith(color: const Color(0xFFF2F2F2)),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        isArtist
                            ? quotation.customerId.toString() ?? l10n.guest
                            : '${l10n.status}: ${_getStatusText(quotation.status, l10n)}',
                        style: TextStyleTheme.bodyText2
                            .copyWith(color: const Color(0xFF686D90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (isArtist)
              _buildArtistActions(l10n)
            else if (canCancel || canReplyAndCancel)
              _buildCustomerActions(
                  quotation, canReplyAndCancel, l10n, cancellingQuotationId),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomerActions(Quotation quotation, bool canReply, S l10n,
      String? cancellingQuotationId) {
    final isCancelling = cancellingQuotationId == quotation.id.toString();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (canReply)
          _buildActionButton(
            onPressed: () {
              // TODO: Implement reply logic
            },
            icon: Icons.reply,
            label: l10n.reply,
            isPrimary: true,
          ),
        const SizedBox(width: 8),
        isCancelling
            ? const SizedBox(
                width: 24,
                height: 24,
                child: InkerProgressIndicator(),
              )
            : _buildActionButton(
                onPressed: () =>
                    _showCancelConfirmationDialog(context, quotation, l10n),
                icon: Icons.cancel,
                label: l10n.cancel,
                isPrimary: false,
              ),
      ],
    );
  }

  Widget _buildArtistActions(S l10n) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildActionButton(
          onPressed: () {
            // TODO: Implement reply logic
          },
          icon: Icons.message,
          label: l10n.sendMessage,
          isPrimary: true,
        ),
        _buildActionButton(
          onPressed: () {
            // TODO: Implement reject logic
          },
          icon: Icons.close,
          label: l10n.cancel,
          isPrimary: false,
        ),
      ],
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

  String _getStatusText(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.upcomming;
      case QuotationStatus.quoted:
        return l10n.quoted;
      case QuotationStatus.accepted:
        return l10n.completed;
      case QuotationStatus.rejected:
        return l10n.cancelled;
      case QuotationStatus.appealed:
        return l10n.upcomming;
      case QuotationStatus.canceled:
        return l10n.cancelled;
      default:
        return '';
    }
  }
}
