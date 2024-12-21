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
    on<ArtistQuotationResponseEvent>((event, emit) async {
      await event.when(
        loadQuotation: (String quotationId) async {
          await _loadQuotation(emit, quotationId);
        },
        submit: (quotationId,
            action,
            estimatedCost,
            appointmentDate,
            appointmentDuration,
            additionalDetails,
            rejectionReason,
            proposedDesigns) async {
          await _submitResponse(
              emit,
              quotationId,
              action,
              estimatedCost,
              appointmentDate,
              appointmentDuration,
              additionalDetails,
              rejectionReason,
              proposedDesigns);
        },
      );
    });
  }

  Future<void> _loadQuotation(
      Emitter<ArtistQuotationResponseState> emit, String quotationId) async {
    emit(const ArtistQuotationResponseState.loadingQuotation());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistQuotationResponseState.failure(
            'No se ha iniciado sesión.'));
        return;
      }

      final quotation = await _quotationService.getQuotationDetails(
        token: token,
        quotationId: quotationId,
      );
      emit(ArtistQuotationResponseState.quotationLoaded(quotation));
    } catch (e) {
      emit(ArtistQuotationResponseState.failure(e.toString()));
    }
  }

  Future<void> _submitResponse(
    Emitter<ArtistQuotationResponseState> emit,
    String quotationId,
    ArtistQuotationAction action,
    double? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    QuotationArtistRejectReason? rejectionReason,
    List<XFile>? proposedDesigns,
  ) async {
    emit(const ArtistQuotationResponseState.submittingResponse());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistQuotationResponseState.failure(
            'No se ha iniciado sesión.'));
        return;
      }

      await _quotationService.processArtistAction(
        token: token,
        quotationId: quotationId,
        action: action,
        estimatedCost: Money(amount: estimatedCost?.toInt() ?? 0, currency: 'CLP', scale: 0),
        appointmentDate: appointmentDate,
        appointmentDuration: appointmentDuration,
        additionalDetails: additionalDetails,
        rejectionReason: rejectionReason,
        proposedDesigns: proposedDesigns,
      );
      emit(const ArtistQuotationResponseState.success());
    } catch (e) {
      emit(ArtistQuotationResponseState.failure(e.toString()));
    }
  }
}
