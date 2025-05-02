import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
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
        loadQuotations: (List<String>? statuses, bool isNextPage, QuotationType? type) async =>
            _loadQuotations(emit, statuses, isNextPage, type),
        cancelQuotation: (String quotationId) async =>
            _cancelQuotation(emit, quotationId),
        refreshCurrentTab: () async => _refreshCurrentTab(emit),
        changeType: (QuotationType type) async => _changeType(emit, type),
        markAsRead: (String quotationId) async =>
            _markAsRead(emit, quotationId),
        getQuotationById: (String quotationId) async =>
            _getQuotationById(emit, quotationId),
      );
    });
  }

  Future<void> _refreshCurrentTab(Emitter<QuotationListState> emit) async {
    final currentState = state;
    if (currentState is QuotationListLoaded) {
      await _loadQuotations(emit, currentState.statuses, false, currentState.selectedType);
    }
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
    QuotationType? type,
  ) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }

      int nextPage = 1;
      List<Quotation> accumulatedQuotations = [];
      QuotationType currentSelectedType = QuotationType.DIRECT;

      if (state is QuotationListLoaded) {
        final currentState = state as QuotationListLoaded;
        currentSelectedType = type ?? currentState.selectedType;
        if (isNextPage) {
          nextPage = currentState.currentPage + 1;
          accumulatedQuotations = List.from(currentState.quotations);
          emit(currentState.copyWith(isLoadingMore: true));
        } else {
          nextPage = 1;
          accumulatedQuotations = [];
          emit(const QuotationListState.loading());
        }
      } else {
        currentSelectedType = type ?? QuotationType.DIRECT;
        emit(const QuotationListState.loading());
      }

      // Use the new endpoint specifically for OPEN quotations when the user is an artist
      final isArtist = session.user?.userType == 'ARTIST';
      QuotationListResponse response;
      
      if (isArtist && currentSelectedType == QuotationType.OPEN) {
        // For artists viewing OPEN quotations, use the dedicated endpoint
        response = await _quotationService.getOpenQuotations(
          token: session.accessToken,
          page: nextPage,
        );
      } else {
        // For all other cases, use the regular endpoint
        response = await _quotationService.getQuotations(
          token: session.accessToken,
          statuses: statuses,
          page: nextPage,
          type: currentSelectedType,
        );
      }

      accumulatedQuotations.addAll(response.items);

      emit(QuotationListState.loaded(
        quotations: accumulatedQuotations,
        session: session,
        selectedType: currentSelectedType,
        statuses: statuses,
        isLoadingMore: false,
        currentPage: nextPage,
        totalItems: response.total,
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
          // cancelReason: QuotationCustomerCancelReason.other,
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

  Future<void> _markAsRead(
      Emitter<QuotationListState> emit, String quotationId) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }

      final currentState = state;
      if (currentState is QuotationListLoaded) {
        final updatedQuotations = currentState.quotations.map((quotation) {
          if (quotation.id.toString() == quotationId) {
            if (session.user?.userType == 'ARTIST') {
              return quotation.copyWith(readByArtist: true);
            } else {
              return quotation.copyWith(readByCustomer: true);
            }
          }
          return quotation;
        }).toList();

        emit(currentState.copyWith(quotations: updatedQuotations));

        await _quotationService.markAsRead(
          token: session.accessToken,
          quotationId: quotationId,
        );
      }
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
      add(const QuotationListEvent.refreshCurrentTab());
    }
  }
  
  Future<void> _getQuotationById(
      Emitter<QuotationListState> emit, String quotationId) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }
      
      // Always fetch the latest data from the server to ensure we have current state
      final quotation = await _quotationService.getQuotationById(
        token: session.accessToken,
        quotationId: quotationId,
      );
      
      // If we already have a loaded state, update the quotation or add it
      if (state is QuotationListLoaded) {
        final currentState = state as QuotationListLoaded;
        
        // Replace the quotation if it exists, otherwise add it
        final existingIndex = currentState.quotations.indexWhere(
          (q) => q.id.toString() == quotationId
        );
        
        List<Quotation> updatedQuotations;
        
        if (existingIndex >= 0) {
          updatedQuotations = [...currentState.quotations];
          updatedQuotations[existingIndex] = quotation;
        } else {
          updatedQuotations = [...currentState.quotations, quotation];
        }
        
        emit(currentState.copyWith(
          quotations: updatedQuotations,
        ));
      } else {
        // If we don't have a loaded state yet, create one with just this quotation
        emit(QuotationListState.loaded(
          quotations: [quotation],
          session: session,
          statuses: null,
          isLoadingMore: false,
          currentPage: 1,
          totalItems: 1, 
        ));
      }
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
    }
  }

  Future<void> _changeType(
    Emitter<QuotationListState> emit,
    QuotationType type,
  ) async {
    final currentState = state;
    List<String>? currentStatuses;
    Session? currentSession;

    if (currentState is QuotationListLoaded) {
      currentStatuses = currentState.statuses;
      currentSession = currentState.session;
    }

    if(currentSession != null){
      emit(QuotationListState.loaded(
        quotations: [],
        session: currentSession, 
        selectedType: type, 
        statuses: currentStatuses,
        isLoadingMore: false,
        currentPage: 1, 
        totalItems: 0,
      ));
    }
    
    add(QuotationListEvent.loadQuotations(currentStatuses, false, type));
  }
}
