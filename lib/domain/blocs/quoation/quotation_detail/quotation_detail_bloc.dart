import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';

part 'quotation_detail_event.dart';
part 'quotation_detail_state.dart';

part 'quotation_detail_bloc.freezed.dart';

class QuotationDetailBloc extends Bloc<QuotationDetailEvent, QuotationDetailState> {
  final QuotationService quotationService;
  final LocalSessionService sessionService;

  QuotationDetailBloc({required this.quotationService, required this.sessionService}) : super(const QuotationDetailState.initial()) {
    on<QuotationDetailEvent>((event, emit) async {
      await event.when(
        fetchQuotationById: (quotationId) async {
          emit(const QuotationDetailState.loading());
          try {
            final token = await sessionService.getActiveSessionToken();
            if (token == null) throw Exception('No session token');
            final quotation = await quotationService.getQuotationById(token: token, quotationId: quotationId);
            emit(QuotationDetailState.loaded(quotation));
          } catch (e) {
            emit(QuotationDetailState.error('Error al cargar la cotización: ${e.toString()}'));
          }
        },
        refresh: (quotationId) async {
          try {
            final token = await sessionService.getActiveSessionToken();
            if (token == null) throw Exception('No session token');
            final quotation = await quotationService.getQuotationById(token: token, quotationId: quotationId);
            emit(QuotationDetailState.refreshing(quotation));
            emit(QuotationDetailState.loaded(quotation));
          } catch (e) {
            emit(QuotationDetailState.error('Error al refrescar la cotización: ${e.toString()}'));
          }
        },
        markAsRead: (quotationId) async {
          try {
            final token = await sessionService.getActiveSessionToken();
            if (token == null) throw Exception('No session token');
            await quotationService.markAsRead(token: token, quotationId: quotationId);
            final quotation = await quotationService.getQuotationById(token: token, quotationId: quotationId);
            emit(QuotationDetailState.loaded(quotation));
          } catch (e) {
            emit(QuotationDetailState.error('Error al marcar como leída: ${e.toString()}'));
          }
        },
        acceptOffer: (quotationId, offerId) async {
          emit(const QuotationDetailState.offerAccepting());
          try {
            final token = await sessionService.getActiveSessionToken();
            if (token == null) throw Exception('No session token');
            await quotationService.acceptOffer(token: token, quotationId: quotationId, offerId: offerId);
            final quotation = await quotationService.getQuotationById(token: token, quotationId: quotationId);
            emit(QuotationDetailState.offerAccepted(quotation));
          } catch (e) {
            emit(QuotationDetailState.error('Error al aceptar la oferta: ${e.toString()}'));
          }
        },
        cancelQuotation: (quotationId) async {
          emit(const QuotationDetailState.loading());
          try {
            final token = await sessionService.getActiveSessionToken();
            if (token == null) throw Exception('No session token');
            await quotationService.processCustomerAction(
              token: token,
              quotationId: quotationId,
              action: CustomerQuotationAction.cancel,
            );
            final quotation = await quotationService.getQuotationById(token: token, quotationId: quotationId);
            emit(QuotationDetailState.loaded(quotation));
          } catch (e) {
            emit(QuotationDetailState.error('Error al cancelar la cotización: ${e.toString()}'));
          }
        },
      );
    });
  }
} 