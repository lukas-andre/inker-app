import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'open_quotation_list_event.dart';
part 'open_quotation_list_state.dart';
part 'open_quotation_list_bloc.freezed.dart';

class OpenQuotationListBloc extends Bloc<OpenQuotationListEvent, OpenQuotationListState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;

  OpenQuotationListBloc({
    required QuotationService quotationService,
    required LocalSessionService sessionService,
  })  : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const OpenQuotationListState.initial()) {
    on<OpenQuotationListEvent>((event, emit) async {
      await event.when(
        started: () async => add(const OpenQuotationListEvent.loadOpenQuotations(isNextPage: false)),
        loadOpenQuotations: (bool isNextPage) async =>
            _loadOpenQuotations(emit, isNextPage),
        refreshOpenQuotations: () async => 
            add(const OpenQuotationListEvent.loadOpenQuotations(isNextPage: false)),
      );
    });
  }

  Future<void> _loadOpenQuotations(
    Emitter<OpenQuotationListState> emit,
    bool isNextPage,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const OpenQuotationListState.error('No active session.'));
        return;
      }
      // Ensure user is an artist, although this BLoC should only be used in the artist context
      if (session.user?.userType != 'ARTIST') {
         emit(const OpenQuotationListState.error('User is not an artist.'));
         return;
      }

      int nextPage = 1;
      List<Quotation> accumulatedQuotations = [];

      if (state is _Loaded) {
        final currentState = state as _Loaded;
        if (isNextPage) {
          nextPage = currentState.currentPage + 1;
          accumulatedQuotations = List.from(currentState.openQuotations);
          emit(currentState.copyWith(isLoadingMore: true));
        } else {
          // Refreshing
          nextPage = 1;
          accumulatedQuotations = [];
          emit(const OpenQuotationListState.loading());
        }
      } else {
        // Initial load
        emit(const OpenQuotationListState.loading());
      }

      // Always use the dedicated endpoint for open quotations
      final QuotationListResponse response = await _quotationService.getOpenQuotations(
        token: session.accessToken,
        page: nextPage,
      );

      accumulatedQuotations.addAll(response.items);

      emit(OpenQuotationListState.loaded(
        openQuotations: accumulatedQuotations,
        isLoadingMore: false,
        currentPage: nextPage,
        totalItems: response.total,
      ));
    } catch (e) {
      // If it was loading more, revert state but show error
      if (state is _Loaded && (state as _Loaded).isLoadingMore) {
         final previousState = state as _Loaded;
         emit(previousState.copyWith(
           isLoadingMore: false,
           infoMessage: 'Error loading more: ${e.toString()}' // Use info message for less disruption
         ));
      } else {
        emit(OpenQuotationListState.error(e.toString()));
      }
    }
  }
} 