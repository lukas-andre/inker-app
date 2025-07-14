import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/quotation/dtos/participating_quotations_response.dart'
    as participating;
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';

extension QuotationArtistRejectReasonExtension on QuotationArtistRejectReason {
  String toSnakeCase() {
    return toString()
        .split('.')
        .last
        .replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => '_${match.group(0)!.toLowerCase()}',
        )
        .replaceFirst(RegExp(r'^_'), '');
  }
}

extension StringExtension on String {
  String toSnakeCase() {
    return replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => '_${match.group(0)!.toLowerCase()}',
    ).replaceFirst(RegExp(r'^_'), '');
  }
}

class ApiQuotationService implements QuotationService {
  static const String _basePath = 'quotations';
  late final HttpClientService _httpClient;

  ApiQuotationService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<Map<String, dynamic>> createQuotation(
      Quotation quotation, List<XFile> referenceImages, String token) async {
    // Prepare fields based on quotation type
    final Map<String, String> fields = {
      'type': quotation.type
          .toString()
          .split('.')
          .last, // Add type (DIRECT or OPEN)
      'description': quotation.description,
      'customerId': quotation.customerId,
      if (quotation.stencilId != null) 'stencilId': quotation.stencilId!,

      // Fields specific to DIRECT quotations
      if (quotation.type == QuotationType.DIRECT && quotation.artistId != null)
        'artistId': quotation.artistId!,

      // Fields specific to OPEN quotations
      if (quotation.type == QuotationType.OPEN) ...{
        if (quotation.tattooDesignCacheId != null)
          'tattooDesignCacheId': quotation.tattooDesignCacheId!,
        if (quotation.tattooDesignImageUrl != null)
          'tattooDesignImageUrl': quotation.tattooDesignImageUrl!,
        if (quotation.customerLat != null)
          'customerLat': quotation.customerLat!.toString(),
        if (quotation.customerLon != null)
          'customerLon': quotation.customerLon!.toString(),
        if (quotation.customerTravelRadiusKm != null)
          'customerTravelRadiusKm':
              quotation.customerTravelRadiusKm!.toString(),
        if (quotation.referenceBudget != null) ...{
          'referenceBudget[amount]':
              quotation.referenceBudget!.amount.toString(),
          'referenceBudget[currency]': quotation.referenceBudget!.currency,
          'referenceBudget[scale]': quotation.referenceBudget!.scale.toString(),
        },
        if (quotation.desiredBodyLocation != null)
          'desiredBodyLocation': quotation.desiredBodyLocation!,
      },
    };

    final List<http.MultipartFile> files = [];
    for (var i = 0; i < referenceImages.length; i++) {
      var file = referenceImages[i];
      final bytes = await file.readAsBytes();
      files.add(http.MultipartFile.fromBytes(
        'files[]',
        bytes,
        contentType:
            MediaType('image', 'jpeg'), // Assuming jpeg, adjust if needed
        filename: file.name, // Use original filename
      ));
    }

    return await _httpClient.multipartRequest(
      path: _basePath,
      method: 'POST',
      token: token,
      fields: fields,
      files: files,
      fromJson: (json) =>
          json, // Ensure correct return type
    );
  }

  @override
  Future<QuotationListResponse> getQuotations({
    required String token,
    List<String>? statuses,
    int page = 1,
    int limit = 10,
    QuotationType? type,
  }) async {
    final queryParams = {
      if (statuses != null && statuses.isNotEmpty) 'status': statuses.join(','),
      if (type != null) 'type': type.toString().split('.').last,
      'page': page.toString(),
      'limit': limit.toString(),
    };

    return await _httpClient.get(
      path: _basePath,
      token: token,
      queryParams: queryParams,
      fromJson: (json) =>
          QuotationListResponse.fromJson(json),
    );
  }

  @override
  Future<QuotationListResponse> getOpenQuotations({
    required String token,
    double? maxDistance,
    int page = 1,
    int limit = 10,
  }) async {
    final queryParams = {
      if (maxDistance != null) 'maxDistance': maxDistance.toString(),
      'page': page.toString(),
      'limit': limit.toString(),
    };

    return await _httpClient.get(
      path: '$_basePath/open',
      token: token,
      queryParams: queryParams,
      fromJson: (json) =>
          QuotationListResponse.fromJson(json),
    );
  }

  @override
  Future<participating.ListParticipatingQuotationsResDto>
      getParticipatingQuotations({
    required String token,
    int page = 1,
    int limit = 10,
  }) async {
    final queryParams = {
      'page': page.toString(),
      'limit': limit.toString(),
    };

    return await _httpClient.get(
      path: '$_basePath/participating',
      token: token,
      queryParams: queryParams,
      fromJson: (json) =>
          participating.ListParticipatingQuotationsResDto.fromJson(
              json),
    );
  }

  @override
  Future<Quotation> getQuotationDetails({
    required String token,
    required String quotationId,
  }) async {
    return await _httpClient.get(
      path: '$_basePath/$quotationId',
      token: token,
      fromJson: (json) => Quotation.fromJson(json),
    );
  }

  @override
  Future<Quotation> getQuotationById({
    required String token,
    required String quotationId,
  }) async {
    // This implementation is the same as getQuotationDetails
    // but we keep them separate in case the API changes in the future
    return await _httpClient.get(
      path: '$_basePath/$quotationId',
      token: token,
      fromJson: (json) => Quotation.fromJson(json),
    );
  }

  @override
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
  }) async {
    final List<http.MultipartFile> files = [];

    // Map the frontend enum to backend enum values
    String actionValue;
    switch (action) {
      case ArtistQuotationAction.quote:
        actionValue = 'quote';
        break;
      case ArtistQuotationAction.reject:
        actionValue = 'reject';
        break;
      case ArtistQuotationAction.acceptAppeal:
        actionValue = 'accept_appeal';
        break;
      case ArtistQuotationAction.rejectAppeal:
        actionValue = 'reject_appeal';
        break;
    }

    final Map<String, String> fields = {
      'action': actionValue,
      // TODO: Handle empty estimated cost
      if (estimatedCost != null && !estimatedCost.isEmpty) ...{
        'estimatedCost[amount]': estimatedCost.amount.toString(),
        'estimatedCost[currency]': estimatedCost.currency,
        'estimatedCost[scale]': estimatedCost.scale.toString(),
      },
      if (appointmentDate != null)
        'appointmentDate': appointmentDate.toIso8601String(),
      if (appointmentDuration != null && appointmentDuration != 0)
        'appointmentDuration': appointmentDuration.toString(),
      if (additionalDetails != null) 'additionalDetails': additionalDetails,
      if (rejectionReason != null)
        'rejectionReason': rejectionReason.toSnakeCase(),
    };

    if (proposedDesigns != null && proposedDesigns.isNotEmpty) {
      for (var i = 0; i < proposedDesigns.length; i++) {
        var file = proposedDesigns[i];
        final bytes = await file.readAsBytes();
        files.add(http.MultipartFile.fromBytes(
          'proposedDesigns', // Changed from 'proposedDesigns[]'
          bytes,
          contentType: MediaType('image', 'jpeg'), // Assuming jpeg
          filename: file.name, // Use original filename
        ));
      }
    }

    await _httpClient.multipartRequest(
      path: '$_basePath/$quotationId/artist-actions',
      method: 'POST',
      token: token,
      fields: fields,
      files: files,
      fromJson: (json) {}, // No specific return needed
    );
  }

  @override
  Future<void> processCustomerAction({
    required String token,
    required String quotationId,
    required CustomerQuotationAction action,
    QuotationCustomerRejectReason? rejectionReason,
    QuotationCustomerAppealReason? appealReason,
    QuotationCustomerCancelReason? cancelReason,
    String? additionalDetails,
  }) async {
    final body = {
      'action': action.toString().split('.').last.toSnakeCase(),
      if (rejectionReason != null)
        'rejectionReason': rejectionReason
            .toString()
            .split('.')
            .last // Use enum value directly
            .toSnakeCase(),
      if (appealReason != null)
        'appealReason': appealReason
            .toString()
            .split('.')
            .last // Use enum value directly
            .toSnakeCase(),
      if (cancelReason != null)
        'cancelReason': cancelReason
            .toString()
            .split('.')
            .last // Use enum value directly
            .toSnakeCase(),
      if (additionalDetails != null) 'additionalDetails': additionalDetails,
    };

    await _httpClient.post(
      path: '$_basePath/$quotationId/customer-actions',
      token: token,
      body: body,
      fromJson: (json) => null,
    );
  }

  @override
  Future<void> markAsRead({
    required String token,
    required String quotationId,
  }) async {
    await _httpClient.post(
      path: '$_basePath/$quotationId/mark-as-read',
      token: token,
      body: {},
      fromJson: (json) => null,
    );
  }

  // --- Offer Management for OPEN Quotations ---

  @override
  Future<void> submitOffer({
    required String token,
    required String quotationId,
    Money? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    List<XFile>? proposedDesigns,
  }) async {
    final Map<String, String> fields = {
      if (estimatedCost != null && !estimatedCost.isEmpty) ...{
        'estimatedCost[amount]': estimatedCost.amount.toString(),
        'estimatedCost[currency]': estimatedCost.currency,
        'estimatedCost[scale]': estimatedCost.scale.toString(),
      },
      if (appointmentDate != null)
        'appointmentDate': appointmentDate.toIso8601String(),
      if (appointmentDuration != null && appointmentDuration != 0)
        'appointmentDuration': appointmentDuration.toString(),
      if (additionalDetails != null && additionalDetails.isNotEmpty)
        'additionalDetails': additionalDetails,
    };

    final List<http.MultipartFile> files = [];
    if (proposedDesigns != null && proposedDesigns.isNotEmpty) {
      for (var i = 0; i < proposedDesigns.length; i++) {
        var file = proposedDesigns[i];
        final bytes = await file.readAsBytes();
        files.add(http.MultipartFile.fromBytes(
          'proposedDesigns', // Assuming backend expects this field name
          bytes,
          contentType:
              MediaType('image', 'jpeg'), // Adjust content type if needed
          filename: file.name,
        ));
      }
    }

    // Assuming the endpoint returns a DefaultResponseDto structure
    // { status: 'CREATED', data: 'Offer <id> submitted.' }
    // We don't need to parse the response body for this specific method.
    await _httpClient.multipartRequest(
      path: '$_basePath/$quotationId/offers',
      method: 'POST',
      token: token,
      fields: fields,
      files: files,
      fromJson: (json) {}, // No parsing needed for submitOffer
    );
  }

  @override
  Future<dynamic> listOffers({
    // TODO: Replace 'dynamic' with a specific ListQuotationOffersResDto class
    required String token,
    required String quotationId,
  }) async {
    // TODO: Implement parsing when ListQuotationOffersResDto is defined
    return await _httpClient.get(
      path: '$_basePath/$quotationId/offers',
      token: token,
      fromJson: (json) => json, // Placeholder parsing
    );
  }

  @override
  Future<void> acceptOffer({
    required String token,
    required String quotationId,
    required String offerId,
  }) async {
    // Assuming the endpoint returns a DefaultResponseDto like { status: 'OK', data: '...' }
    // No response body parsing needed here.
    await _httpClient.post(
      path: '$_basePath/$quotationId/offers/$offerId/accept',
      token: token,
      body: {}, // No body required for accept action
      fromJson: (json) => null,
    );
  }

  @override
  Future<dynamic> sendOfferMessage({
    required String token,
    required String quotationId,
    required String offerId,
    required String messageText,
    XFile? image,
  }) async {
    final Map<String, String> fields = {
      'message': messageText, // The backend expects 'message' field, not 'text'
    };

    final List<http.MultipartFile> files = [];
    if (image != null) {
      final bytes = await image.readAsBytes();
      files.add(http.MultipartFile.fromBytes(
        'image', // Field name specified in API docs
        bytes,
        contentType:
            MediaType('image', 'jpeg'), // Adjust based on actual image type
        filename: image.name,
      ));
    }

    return await _httpClient.multipartRequest(
      path: '$_basePath/$quotationId/offers/$offerId/messages',
      method: 'POST',
      token: token,
      fields: fields,
      files: files,
      fromJson: (json) =>
          OfferMessageDto.fromJson(json),
    );
  }

  @override
  Future<QuotationOfferListItemDto> getQuotationOffer({
    required String token,
    required String offerId,
  }) async {
    return await _httpClient.get(
      path: '$_basePath/offers/$offerId',
      token: token,
      fromJson: (json) =>
          QuotationOfferListItemDto.fromJson(json),
    );
  }

  @override
  Future<void> updateOffer({
    required String token,
    required String quotationId,
    required String offerId,
    Money? estimatedCost,
    int? estimatedDuration,
  }) async {
    final body = <String, dynamic>{
      if (estimatedCost != null && !estimatedCost.isEmpty)
        'estimatedCost': estimatedCost.toJson(),
      if (estimatedDuration != null && estimatedDuration > 0)
        'estimatedDuration': estimatedDuration,
    };

    await _httpClient.patch(
      path: '$_basePath/$quotationId/offers/$offerId',
      token: token,
      body: body,
      fromJson: (json) => null,
    );
  }

  @override
  Future<void> updateOpenQuotation({
    required String token,
    required String quotationId,
    String? description,
    Money? minBudget,
    Money? maxBudget,
    Money? referenceBudget,
    String? generatedImageId,
  }) async {
    final body = <String, dynamic>{
      if (description != null) 'description': description,
      if (minBudget != null) 'minBudget': minBudget.toJson(),
      if (maxBudget != null) 'maxBudget': maxBudget.toJson(),
      if (referenceBudget != null) 'referenceBudget': referenceBudget.toJson(),
      if (generatedImageId != null) 'generatedImageId': generatedImageId,
    };
    await _httpClient.patch(
      path: '$_basePath/$quotationId',
      token: token,
      body: body,
      fromJson: (json) => null,
    );
  }
}
