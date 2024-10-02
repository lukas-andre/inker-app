// customer_quotation_response_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'customer_quotation_response_event.dart';
part 'customer_quotation_response_state.dart';
part 'customer_quotation_response_bloc.freezed.dart';

class CustomerQuotationResponseBloc extends Bloc<CustomerQuotationResponseEvent,
    CustomerQuotationResponseState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;

  CustomerQuotationResponseBloc({
    required QuotationService quotationService,
    required LocalSessionService sessionService,
  })  : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const CustomerQuotationResponseState.initial()) {
    on<CustomerQuotationResponseEvent>((event, emit) async {
      await event.when(
        loadQuotation: (quotationId) async {
          await _loadQuotation(emit, quotationId);
        },
        submit: (quotationId, action, additionalDetails) async {
          await _submitResponse(emit, quotationId, action, additionalDetails);
        },
      );
    });
  }

  Future<void> _loadQuotation(
      Emitter<CustomerQuotationResponseState> emit, String quotationId) async {
    emit(const CustomerQuotationResponseState.loadingQuotation());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const CustomerQuotationResponseState.failure(
            'No se ha iniciado sesión.'));
        return;
      }

      final quotation = await _quotationService.getQuotationDetails(
        token: token,
        quotationId: quotationId,
      );
      emit(CustomerQuotationResponseState.quotationLoaded(quotation));
    } catch (e) {
      emit(CustomerQuotationResponseState.failure(e.toString()));
    }
  }

  Future<void> _submitResponse(
    Emitter<CustomerQuotationResponseState> emit,
    String quotationId,
    CustomerQuotationAction action,
    String? additionalDetails,
  ) async {
    emit(const CustomerQuotationResponseState.submittingResponse());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const CustomerQuotationResponseState.failure(
            'No se ha iniciado sesión.'));
        return;
      }

      await _quotationService.processCustomerAction(
        token: token,
        quotationId: quotationId,
        action: action,
        additionalDetails: additionalDetails,
      );
      emit(const CustomerQuotationResponseState.success());
    } catch (e) {
      emit(CustomerQuotationResponseState.failure(e.toString()));
    }
  }
}
