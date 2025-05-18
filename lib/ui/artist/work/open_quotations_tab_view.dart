import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/open_quotation_list/open_quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/artist_open_quotation_offer_page.dart';
import 'package:inker_studio/ui/quotation/create_open_quotation_page.dart';
import 'package:inker_studio/ui/quotation/widgets/empty_list_indicator.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_card.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_card_view_model.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';

class OpenQuotationsTabView extends StatefulWidget {
  const OpenQuotationsTabView({super.key});

  @override
  State<OpenQuotationsTabView> createState() => _OpenQuotationsTabViewState();
}

class _OpenQuotationsTabViewState extends State<OpenQuotationsTabView>
    with AutomaticKeepAliveClientMixin {
  late OpenQuotationListBloc _bloc;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _bloc = context.read<OpenQuotationListBloc>();
    _scrollController.addListener(_onScroll);
    // Trigger initial load if state is initial
     if (_bloc.state is OpenQuotationListInitial) {
       _bloc.add(const OpenQuotationListEvent.loadOpenQuotations(isNextPage: false));
     }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll >= (maxScroll * 0.9)) {
      _bloc.state.maybeWhen(
        loaded: (quotations, isLoadingMore, currentPage, totalItems, _) {
          if (!isLoadingMore && quotations.length < totalItems) {
            _bloc.add(const OpenQuotationListEvent.loadOpenQuotations(isNextPage: true));
          }
        },
        orElse: () {},
      );
    }
  }

  Future<void> _onRefresh() async {
    _bloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
  }

  void _navigateToDetail(String quotationId) {
    _bloc.state.maybeWhen(
      loaded: (openQuotations, _, __, ___, ____) {
        Quotation? quotation;
        try {
          quotation = openQuotations.firstWhere((q) => q.id.toString() == quotationId);
        } catch (e) {
          quotation = null; // Not found
        }

        if (quotation != null) {
          Navigator.of(context).pushNamed(
            '/quotationDetail',
            arguments: {
              'quotation': quotation,
            },
          ).then((_) {
            // _bloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
          });
        } else {
          // Fallback: navega con el id si no tienes el objeto
          Navigator.of(context).pushNamed(
            '/quotationDetail',
            arguments: {
              'quotationId': quotationId,
            },
          ).then((_) {
            _bloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
          });
        }
      },
      orElse: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(S.of(context).cannotOpenDetailsRightNowTryAgainLater)),
        );
      },
    );
  }

  void _navigateToSendOffer(String quotationId) {
       Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ArtistOpenQuotationOfferPage(
              quotationId: quotationId,
            ),
          ),
        ).then((offerSubmitted) {
           if (offerSubmitted == true) {
             _bloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
           }
         });
  }

  void _navigateToCreateOpenQuotation() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreateOpenQuotationProvider(),
      ),
    ).then((_) {
      // Refresh the list after returning from the create page
      _bloc.add(const OpenQuotationListEvent.refreshOpenQuotations());
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = S.of(context);
    final session = context.read<AuthBloc>().state.session;
    final isArtist = session.user?.userType == 'ARTIST';

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: BlocConsumer<OpenQuotationListBloc, OpenQuotationListState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (_, __, ___, ____, infoMessage) {
              if (infoMessage != null && infoMessage.isNotEmpty) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(infoMessage)));
              }
            },
             error: (message) {
               ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(S.of(context).errorLoadingOpenQuotations)));
             },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            error: (message) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  S.of(context).errorLoadingOpenQuotationsWithMessage(message),
                  style: const TextStyle(color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            loaded: (quotations, isLoadingMore, currentPage, totalItems, _) {
              if (quotations.isEmpty) {
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  child: CustomScrollView(
                      slivers: [
                           SliverFillRemaining(
                             child: EmptyListIndicator.openQuotations(l10n),
                           )
                         ],
                      ),
                   );
              }

              return RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 80),
                  itemCount: quotations.length + (isLoadingMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == quotations.length) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(child: InkerProgressIndicator()),
                      );
                    }
                    final quotation = quotations[index];
                    if (isArtist) {
                      final viewModel = QuotationCardViewModel.fromOpenQuotation(quotation, l10n);
                      return QuotationCard(
                        key: ValueKey(viewModel.id),
                        model: viewModel,
                        onTap: (id, type) => _navigateToDetail(id),
                        onSendOfferTap: (id, type) => _navigateToSendOffer(id),
                      );
                    } else {
                      final customerViewModel = CustomerOpenQuotationCardViewModel.fromQuotation(quotation, l10n);
                      return CustomerOpenQuotationCard(
                        key: ValueKey(customerViewModel.id),
                        model: customerViewModel,
                        onTap: (id) => _navigateToDetail(id),
                        onViewOffersTap: (id) => _navigateToDetail(id), // Por ahora navega a detalles
                      );
                    }
                  },
                ),
              );
            },
            orElse: () => const Center(child: InkerProgressIndicator()),
          );
        },
      ),
      floatingActionButton: !isArtist ? FloatingActionButton(
        onPressed: _navigateToCreateOpenQuotation,
        backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
        tooltip: S.of(context).createOpenQuotation,
        child: const Icon(Icons.add, color: Colors.white),
      ) : null,
    );
  }

  @override
  bool get wantKeepAlive => true;
} 