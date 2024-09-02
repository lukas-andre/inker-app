import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'quotation_list_event.dart';
part 'quotation_list_state.dart';
part 'quotation_list_bloc.freezed.dart';

class QuotationListBloc extends Bloc<QuotationListEvent, QuotationListState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;

  QuotationListBloc({
    required QuotationService quotationService,
    required LocalSessionService sessionService,
  })  : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const QuotationListState.initial()) {
    on<QuotationListEvent>((event, emit) async {
      await event.when(
        started: () async => _started(emit),
        loadQuotations: (List<String>? statuses, bool isNextPage) async =>
            _loadQuotations(emit, statuses, isNextPage),
        changeTab: (int tabIndex) async => _changeTab(emit, tabIndex),
        cancelQuotation: (String quotationId) async =>
            _cancelQuotation(emit, quotationId),
      );
    });
  }

  Future<void> _started(Emitter<QuotationListState> emit) async {
    emit(const QuotationListState.loading());
    final session = await _sessionService.getActiveSession();
    if (session == null) {
      emit(const QuotationListState.error('No se ha iniciado sesión.'));
      return;
    }
    add(QuotationListEvent.loadQuotations(getStatusesForTab(0), false));
  }

  Future<void> _loadQuotations(
    Emitter<QuotationListState> emit,
    List<String>? statuses,
    bool isNextPage,
  ) async {
    try {
      final currentState = state;
      if (currentState is QuotationListLoaded) {
        if (isNextPage) {
          emit(currentState.copyWith(isLoadingMore: true));
        } else {
          emit(const QuotationListState.loading());
        }
      } else {
        emit(const QuotationListState.loading());
      }

      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }

      final currentTab =
          (currentState is QuotationListLoaded) ? currentState.currentTab : 0;
      final currentPage = isNextPage && currentState is QuotationListLoaded
          ? (currentState.currentPage[currentTab] ?? 0) + 1
          : 1;

      final response = await _quotationService.getQuotations(
        token: session.accessToken,
        statuses: statuses,
        page: currentPage,
      );

      final updatedQuotationsByTab = (currentState is QuotationListLoaded)
          ? Map<int, List<Quotation>>.from(currentState.quotationsByTab)
          : <int, List<Quotation>>{};
      final updatedCurrentPage = (currentState is QuotationListLoaded)
          ? Map<int, int>.from(currentState.currentPage)
          : <int, int>{};
      final updatedHasMorePages = (currentState is QuotationListLoaded)
          ? Map<int, bool>.from(currentState.hasMorePages)
          : <int, bool>{};

      if (isNextPage) {
        updatedQuotationsByTab[currentTab] = [
          ...?updatedQuotationsByTab[currentTab],
          ...response.items,
        ];
      } else {
        updatedQuotationsByTab[currentTab] = response.items;
      }

      updatedCurrentPage[currentTab] = currentPage;
      updatedHasMorePages[currentTab] = response.items.isNotEmpty;

      emit(QuotationListState.loaded(
        quotationsByTab: updatedQuotationsByTab,
        currentTab: currentTab,
        currentPage: updatedCurrentPage,
        hasMorePages: updatedHasMorePages,
        currentStatuses: statuses,
        session: session,
        isLoadingMore: false,
      ));
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
    }
  }

  Future<void> _changeTab(
      Emitter<QuotationListState> emit, int tabIndex) async {
    final currentState = state;
    if (currentState is QuotationListLoaded) {
      emit(currentState.copyWith(currentTab: tabIndex));
      if (!currentState.quotationsByTab.containsKey(tabIndex) ||
          currentState.quotationsByTab[tabIndex]?.isEmpty == true) {
        add(QuotationListEvent.loadQuotations(
            getStatusesForTab(tabIndex), false));
      }
    } else {
      add(QuotationListEvent.loadQuotations(
          getStatusesForTab(tabIndex), false));
    }
  }

  List<String> getStatusesForTab(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return ['pending', 'appealed'];
      case 1:
        return ['quoted', 'accepted', 'rejected', 'canceled'];
      default:
        return [];
    }
  }

  Future<void> _cancelQuotation(
      Emitter<QuotationListState> emit, String quotationId) async {
    try {
      final currentState = state;
      if (currentState is QuotationListLoaded) {
        emit(currentState.copyWith(cancellingQuotationId: quotationId));

        final session = await _sessionService.getActiveSession();
        if (session == null) {
          emit(const QuotationListState.error('No se ha iniciado sesión.'));
          return;
        }

        await _quotationService.processCustomerAction(
          token: session.accessToken,
          quotationId: quotationId,
          action: CustomerQuotationAction.cancel,
          cancelReason: QuotationCustomerCancelReason.other,
        );

        final updatedQuotationsByTab =
            Map<int, List<Quotation>>.from(currentState.quotationsByTab);
        for (final tab in updatedQuotationsByTab.keys) {
          updatedQuotationsByTab[tab] = updatedQuotationsByTab[tab]!
              .where((quotation) => quotation.id.toString() != quotationId)
              .toList();
        }

        emit(const QuotationListState.cancelSuccess());

        emit(QuotationListState.loaded(
          quotationsByTab: updatedQuotationsByTab,
          currentTab: currentState.currentTab,
          currentPage: currentState.currentPage,
          hasMorePages: currentState.hasMorePages,
          session: currentState.session,
          currentStatuses: currentState.currentStatuses,
          isLoadingMore: false,
          cancellingQuotationId: null,
        ));
      }
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
    }
  }
}
