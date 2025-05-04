import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/data/api/quotation/dtos/participating_quotations_response.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';

abstract class QuotationService {
  Future<Map<String, dynamic>> createQuotation(
      Quotation quotation, List<XFile> referenceImages, String token);

  Future<QuotationListResponse> getQuotations({
    required String token,
    List<String>? statuses,
    int page = 1,
    int limit = 10,
    QuotationType? type,
  });

  Future<Quotation> getQuotationDetails(
      {required String token, required String quotationId});

  Future<Quotation> getQuotationById({
    required String token,
    required String quotationId,
  });

  Future<QuotationListResponse> getOpenQuotations({
    required String token,
    double? maxDistance,
    int page = 1,
    int limit = 10,
  });

  Future<ListParticipatingQuotationsResDto> getParticipatingQuotations({
    required String token,
    int page = 1,
    int limit = 10,
  });

  Future<void> processArtistAction({
    required String token,
    required String quotationId,
    required ArtistQuotationAction action,
    Money? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    QuotationArtistRejectReason? rejectionReason,
    List<XFile>? proposedDesigns,
  });

  Future<void> processCustomerAction({
    required String token,
    required String quotationId,
    required CustomerQuotationAction action,
    QuotationCustomerRejectReason? rejectionReason,
    QuotationCustomerAppealReason? appealReason,
    QuotationCustomerCancelReason? cancelReason,
    String? additionalDetails,
  });

  Future<void> markAsRead({required String token, required String quotationId});

  // --- Offer Management for OPEN Quotations ---

  Future<void> submitOffer({
    required String token,
    required String quotationId,
    Money? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    List<XFile>? proposedDesigns,
  });

  Future<dynamic> listOffers({
    // Replace 'dynamic' with specific DTO if available
    required String token,
    required String quotationId,
  });

  Future<void> acceptOffer({
    required String token,
    required String quotationId,
    required String offerId,
  });

  Future<dynamic> sendOfferMessage({
    // Replace 'dynamic' with specific DTO if available
    required String token,
    required String quotationId,
    required String offerId,
    required String messageText,
    XFile? image,
  });

  Future<QuotationOfferListItemDto> getQuotationOffer({
    required String token,
    required String offerId,
  });

  Future<void> updateOffer({
    required String token,
    required String quotationId,
    required String offerId,
    Money? estimatedCost,
    int? estimatedDuration,
  });
}
