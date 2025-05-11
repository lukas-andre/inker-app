import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'artist_quotation_response_event.dart';
part 'artist_quotation_response_state.dart';
part 'artist_quotation_response_bloc.freezed.dart';

class ArtistQuotationResponseBloc
    extends Bloc<ArtistQuotationResponseEvent, ArtistQuotationResponseState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;

  ArtistQuotationResponseBloc({
    required QuotationService quotationService,
    required LocalSessionService sessionService,
  })  : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const ArtistQuotationResponseState.initial()) {
    on<_LoadQuotation>(_onLoadQuotation);
    on<_Submit>(_onSubmit);
    on<_SubmitOffer>(_onSubmitOffer);
  }

  Future<void> _onLoadQuotation(
    _LoadQuotation event,
    Emitter<ArtistQuotationResponseState> emit,
  ) async {
    emit(const ArtistQuotationResponseState.loadingQuotation());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistQuotationResponseState.failure('Authentication Error'));
        return;
      }
      final quotation = await _quotationService.getQuotationById(
        token: token,
        quotationId: event.quotationId,
      );
      emit(ArtistQuotationResponseState.quotationLoaded(quotation));
    } catch (e) {
      emit(ArtistQuotationResponseState.failure(
          'Failed to load quotation details: ${e.toString()}'));
    }
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<ArtistQuotationResponseState> emit,
  ) async {
    emit(const ArtistQuotationResponseState.submittingResponse());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistQuotationResponseState.failure('Authentication Error'));
        return;
      }

      Money? cost;
      if (event.estimatedCost != null) {
        final amountInCents = (event.estimatedCost!).round(); // TODO: Get currency
        cost = Money(
            amount: amountInCents,
            currency: 'CLP', // TODO: Get currency
            scale: 0);
      }

      await _quotationService.processArtistAction(
        token: token,
        quotationId: event.quotationId,
        action: event.action,
        estimatedCost: cost,
        appointmentDate: event.appointmentDate,
        appointmentDuration: event.appointmentDuration,
        additionalDetails: event.additionalDetails,
        rejectionReason: event.rejectionReason,
        proposedDesigns: event.proposedDesigns,
      );
      emit(const ArtistQuotationResponseState.success());
      add(ArtistQuotationResponseEvent.loadQuotation(event.quotationId));
    } catch (e) {
      emit(ArtistQuotationResponseState.failure(
          'Failed to submit response: ${e.toString()}'));
    }
  }

  Future<void> _onSubmitOffer(
    _SubmitOffer event,
    Emitter<ArtistQuotationResponseState> emit,
  ) async {
    emit(const ArtistQuotationResponseState.submittingResponse());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistQuotationResponseState.failure('Authentication Error'));
        return;
      }

      Money? cost;
      if (event.estimatedCost != null) {
        final amountInCents = (event.estimatedCost!).round(); // TODO: Get currency
        cost = Money(
            amount: amountInCents,
            currency: 'CLP', // TODO: Get currency
            scale: 0);
      }

      await _quotationService.submitOffer(
        token: token,
        quotationId: event.quotationId,
        estimatedCost: cost,
        appointmentDate: event.appointmentDate,
        appointmentDuration: event.appointmentDuration,
        additionalDetails: event.additionalDetails,
        proposedDesigns: event.proposedDesigns,
      );
      emit(const ArtistQuotationResponseState.success());
    } catch (e) {
      emit(ArtistQuotationResponseState.failure(
          'Failed to submit offer: ${e.toString()}'));
    }
  }
}
