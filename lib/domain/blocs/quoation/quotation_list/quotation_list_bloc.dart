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

  // late bool _isArtist;

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

    // _isArtist = session.user?.userType == UserType.artist;
  }

  Future<void> _loadQuotations(
    Emitter<QuotationListState> emit,
    List<String>? statuses,
    bool isNextPage,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }

      int nextPage = 1;
      List<Quotation> accumulatedQuotations = [];

      if (isNextPage && state is QuotationListLoaded) {
        final currentState = state as QuotationListLoaded;
        nextPage = currentState.currentPage + 1;
        accumulatedQuotations = List.from(currentState.quotations);
        emit(currentState.copyWith(isLoadingMore: true));
      } else {
        nextPage = 1;
        accumulatedQuotations = [];
        emit(const QuotationListState.loading());
      }

      final response = await _quotationService.getQuotations(
        token: session.accessToken,
        statuses: statuses,
        page: nextPage,
      );

      accumulatedQuotations.addAll(response.items);

      emit(QuotationListState.loaded(
        quotations: accumulatedQuotations,
        session: session,
        statuses: statuses,
        isLoadingMore: false,
        currentPage: nextPage,
        totalItems: response.total, // Use total from API response
      ));
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
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

        final updatedQuotations = currentState.quotations
            .where((quotation) => quotation.id.toString() != quotationId)
            .toList();

        emit(const QuotationListState.cancelSuccess());

        emit(currentState.copyWith(
          quotations: updatedQuotations,
          cancellingQuotationId: null,
        ));
      }
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
    }
  }
}
