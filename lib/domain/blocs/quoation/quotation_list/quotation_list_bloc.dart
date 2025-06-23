import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/features/auth_shared/models/session/session.dart' show Session;
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/event_bus/app_event_bus.dart';
import 'package:inker_studio/domain/blocs/mixins/event_bus_mixin.dart';

part 'quotation_list_event.dart';
part 'quotation_list_state.dart';
part 'quotation_list_bloc.freezed.dart';

class QuotationListBloc extends Bloc<QuotationListEvent, QuotationListState>
    with EventBusMixin<QuotationListEvent, QuotationListState> {
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
        loadQuotations: (List<String>? statuses, bool isNextPage, QuotationType? type) async =>
            _loadQuotations(emit, statuses, isNextPage, type ?? QuotationType.DIRECT),
        cancelQuotation: (String quotationId) async =>
            _cancelQuotation(emit, quotationId),
        refreshCurrentTab: () async => _refreshCurrentTab(emit),
        markAsRead: (String quotationId) async =>
            _markAsRead(emit, quotationId),
        getQuotationById: (String quotationId) async =>
            _getQuotationById(emit, quotationId),
        updateOpenQuotation: (
          String quotationId,
          String? description,
          Money? minBudget,
          Money? maxBudget,
          Money? referenceBudget,
          String? generatedImageId,
        ) async => await _updateOpenQuotation(
          emit,
          quotationId: quotationId,
          description: description,
          minBudget: minBudget,
          maxBudget: maxBudget,
          referenceBudget: referenceBudget,
          generatedImageId: generatedImageId,
        ),
        acceptOffer: (String quotationId, String offerId) async =>
          await _acceptOffer(emit, quotationId, offerId),
      );
    });
    
    // Listen for quotation created events
    listenToEvent<QuotationCreatedEvent>((event) async {
      // Refresh the list when a new quotation is created
      add(const QuotationListEvent.refreshCurrentTab());
    });
    
    // Listen for quotation updated events
    listenToEvent<QuotationUpdatedEvent>((event) async {
      // Refresh the list when a quotation is updated
      add(const QuotationListEvent.refreshCurrentTab());
    });
    
    // Listen for refresh requested events
    listenToEvent<RefreshRequestedEvent>((event) async {
      if (event.dataType == RefreshDataTypes.quotations) {
        add(const QuotationListEvent.refreshCurrentTab());
      }
    });
  }

  Future<void> _refreshCurrentTab(Emitter<QuotationListState> emit) async {
    final currentState = state;
    if (currentState is QuotationListLoaded) {
      await _loadQuotations(emit, currentState.statuses, false, QuotationType.DIRECT);
    }
  }

  Future<void> _started(Emitter<QuotationListState> emit) async {
    emit(const QuotationListState.loading());
    final session = await _sessionService.getActiveSession();
    if (session == null) {
      emit(const QuotationListState.error('No se ha iniciado sesión.'));
      return;
    }
  }

  Future<void> _loadQuotations(
    Emitter<QuotationListState> emit,
    List<String>? statuses,
    bool isNextPage,
    QuotationType type,
  ) async {
    const QuotationType effectiveType = QuotationType.DIRECT;

    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }

      int nextPage = 1;
      List<Quotation> accumulatedQuotations = [];

      if (state is QuotationListLoaded) {
        final currentState = state as QuotationListLoaded;
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
        emit(const QuotationListState.loading());
      }

      QuotationListResponse response;
      
      response = await _quotationService.getQuotations(
        token: session.accessToken,
        statuses: statuses,
        page: nextPage,
        type: effectiveType,
      );

      accumulatedQuotations.addAll(response.items);

      emit(QuotationListState.loaded(
        quotations: accumulatedQuotations,
        session: session,
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
        );

        final updatedQuotations = currentState.quotations
            .where((quotation) => quotation.id.toString() != quotationId)
            .toList();

        // Fire event to notify other parts of the app
        fireEvent(QuotationUpdatedEvent(
          quotationId: quotationId,
          status: 'canceled',
          customerId: session.user?.id,
        ));

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
      
      final quotation = await _quotationService.getQuotationById(
        token: session.accessToken,
        quotationId: quotationId,
      );
      
      if (state is QuotationListLoaded) {
        final currentState = state as QuotationListLoaded;
        
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

  Future<void> _updateOpenQuotation(
    Emitter<QuotationListState> emit, {
    required String quotationId,
    String? description,
    Money? minBudget,
    Money? maxBudget,
    Money? referenceBudget,
    String? generatedImageId,
  }) async {
    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }
      await _quotationService.updateOpenQuotation(
        token: session.accessToken,
        quotationId: quotationId,
        description: description,
        minBudget: minBudget,
        maxBudget: maxBudget,
        referenceBudget: referenceBudget,
        generatedImageId: generatedImageId,
      );
      await _getQuotationById(emit, quotationId);
    } catch (e) {
      emit(QuotationListState.error(e.toString()));
    }
  }

  Future<void> _acceptOffer(
    Emitter<QuotationListState> emit,
    String quotationId,
    String offerId,
  ) async {
    try {
      print('[BLoC] Intentando aceptar oferta: quotationId=$quotationId, offerId=$offerId');
      final session = await _sessionService.getActiveSession();
      if (session == null) {
        emit(const QuotationListState.error('No se ha iniciado sesión.'));
        return;
      }
      emit(const QuotationListState.loading());
      await _quotationService.acceptOffer(
        token: session.accessToken,
        quotationId: quotationId,
        offerId: offerId,
      );
      print('[BLoC] Oferta aceptada exitosamente');
      add(QuotationListEvent.getQuotationById(quotationId));
    } catch (e) {
      print('[BLoC] Error al aceptar oferta: $e');
      emit(QuotationListState.error('Error al aceptar la oferta: \n${e.toString()}'));
    }
  }
}
