import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:http_parser/http_parser.dart';

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

extension T<R> on String {
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

class ApiQuotationService implements QuotationService {
  final HttpClientConfig _httpConfig;

  ApiQuotationService()
      : _httpConfig = HttpClientConfig(basePath: 'quotations');

  @override
  Future<Map<String, dynamic>> createQuotation(
      Quotation quotation, List<XFile> referenceImages, String token) async {
    final url = _httpConfig.surl();

    var request = http.MultipartRequest('POST', url);

    request.fields['title'] = 'TBD';
    request.fields['description'] = quotation.description;
    request.fields['customerId'] = quotation.customerId.toString();
    request.fields['artistId'] = quotation.artistId.toString();

    for (var i = 0; i < referenceImages.length; i++) {
      var file = referenceImages[i];
      var stream = http.ByteStream(file.openRead());
      var length = await file.length();
      var multipartFile = http.MultipartFile(
        'files[]',
        stream,
        length,
        filename: 'image_$i.jpg',
        contentType: MediaType('image', 'jpeg'),
      );
      request.files.add(multipartFile);
    }

    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Bearer $token',
    });

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == HttpStatus.created) {
        Map<String, dynamic> responseData = json.decode(response.body);
        return {
          'id': responseData['id'],
          'message': responseData['message'],
          'created': responseData['created'],
        };
      } else {
        throw Exception('Failed to create quotation: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
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

    final url = _httpConfig.surl(queryParams: queryParams);

    try {
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        final jsonData = json.decode(response.body);
        return QuotationListResponse.fromJson(jsonData);
      } else {
        throw Exception('Failed to load quotations: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<Quotation> getQuotationDetails({
    required String token,
    required String quotationId,
  }) async {
    final url = _httpConfig.surl(path: quotationId);

    try {
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        final jsonData = json.decode(response.body);
        return Quotation.fromJson(jsonData);
      } else {
        throw Exception('Failed to load quotation details: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
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
    final url = _httpConfig.surl(path: '$quotationId/artist-actions');

    var request = http.MultipartRequest('POST', url);

    request.fields['action'] = action.toString().split('.').last.toSnakeCase();
    if (estimatedCost != null) {
      request.fields['estimatedCost[amount]'] = estimatedCost.amount.toString();
      request.fields['estimatedCost[currency]'] = estimatedCost.currency;
      request.fields['estimatedCost[scale]'] = estimatedCost.scale.toString();
    }
    if (appointmentDate != null) {
      request.fields['appointmentDate'] = appointmentDate.toIso8601String();
    }
    if (appointmentDuration != null) {
      request.fields['appointmentDuration'] = appointmentDuration.toString();
    }
    if (additionalDetails != null) {
      request.fields['additionalDetails'] = additionalDetails;
    }
    if (rejectionReason != null) {
      request.fields['rejectionReason'] = rejectionReason.toSnakeCase();
    }

    if (proposedDesigns != null) {
      for (var i = 0; i < proposedDesigns.length; i++) {
        var file = proposedDesigns[i];
        var stream = http.ByteStream(file.openRead());
        var length = await file.length();
        var multipartFile = http.MultipartFile(
          'proposedDesigns',
          stream,
          length,
          filename: 'design_$i.jpg',
          contentType: MediaType('image', 'jpeg'),
        );
        request.files.add(multipartFile);
      }
    }

    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Bearer $token',
    });

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != HttpStatus.noContent) {
        throw Exception('Failed to process artist action: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
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
    final url = _httpConfig.surl(path: '$quotationId/customer-actions');

    final body = {
      'action': action.toString().split('.').last,
      if (rejectionReason != null)
        'rejectionReason': rejectionReason.toString().toSnakeCase(),
      if (appealReason != null)
        'appealReason': appealReason.toString().toSnakeCase(),
      if (cancelReason != null)
        'cancelReason': cancelReason.toString().toSnakeCase(),
      if (additionalDetails != null) 'additionalDetails': additionalDetails,
    };

    try {
      final response = await http.post(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: json.encode(body),
      );

      if (response.statusCode != HttpStatus.noContent) {
        throw Exception('Failed to process customer action: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
