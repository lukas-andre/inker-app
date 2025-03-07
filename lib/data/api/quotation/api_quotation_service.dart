import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
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
    var request = await _prepareMultipartRequest(
      method: 'POST',
      token: token,
      fields: {
        'title': 'TBD',
        'description': quotation.description,
        'customerId': quotation.customerId.toString(),
        'artistId': quotation.artistId.toString(),
      },
    );

    for (var i = 0; i < referenceImages.length; i++) {
      var file = referenceImages[i];
      request.files.add(await http.MultipartFile.fromPath(
        'files[]',
        file.path,
        contentType: MediaType('image', 'jpeg'),
        filename: 'image_$i.jpg',
      ));
    }

    return await _httpClient.multipartRequest(
      path: _basePath,
      method: 'POST',
      token: token,
      fields: request.fields,
      files: request.files,
      fromJson: (json) => json,
    );
  }

  @override
  Future<QuotationListResponse> getQuotations({
    required String token,
    List<String>? statuses,
    int page = 1,
    int limit = 10,
  }) async {
    final queryParams = {
      if (statuses != null && statuses.isNotEmpty) 'status': statuses.join(','),
      'page': page.toString(),
      'limit': limit.toString(),
    };

    return await _httpClient.get(
      path: _basePath,
      token: token,
      queryParams: queryParams,
      fromJson: (json) => QuotationListResponse.fromJson(json),
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
        files.add(await http.MultipartFile.fromPath(
          'proposedDesigns[]',
          file.path,
          contentType: MediaType('image', 'jpeg'),
          filename: 'image_$i.jpg',
        ));
      }
    }

    return await _httpClient.multipartRequest(
      path: '$_basePath/$quotationId/artist-actions',
      method: 'POST',
      token: token,
      fields: fields,
      files: files,
      fromJson: (json) => null,
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
            .toSnakeCase()
            .replaceAll('quotation_customer_reject_reason.', ''),
      if (appealReason != null)
        'appealReason': appealReason
            .toString()
            .toSnakeCase()
            .replaceAll('quotation_customer_appeal_reason.', ''),
      if (cancelReason != null)
        'cancelReason': cancelReason
            .toString()
            .toSnakeCase()
            .replaceAll('quotation_customer_cancel_reason.', ''),
      if (additionalDetails != null) 'additionalDetails': additionalDetails,
    };

    await _httpClient.post(
      path: '$_basePath/$quotationId/customer-actions',
      token: token,
      body: body,
      fromJson: (json) => null,
    );
  }

  Future<http.MultipartRequest> _prepareMultipartRequest({
    required String method,
    required String token,
    required Map<String, String> fields,
  }) async {
    final uri = Uri.https(await _httpClient.getBaseUrl(), _basePath);
    final request = http.MultipartRequest(method, uri);
    request.fields.addAll(fields);
    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.acceptHeader: 'application/json',
    });
    return request;
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
}
