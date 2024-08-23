import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';
import 'package:http_parser/http_parser.dart';

class ApiQuotationService implements QuotationService {
  final HttpClientConfig _httpConfig;

  ApiQuotationService() : _httpConfig = HttpClientConfig(basePath: 'agenda');

  @override
  Future<Map<String, dynamic>> createQuotation(
      Quotation quotation, List<XFile> referenceImages, String token) async {
    final url = _httpConfig.surl(path: 'quotation');

    var request = http.MultipartRequest('POST', url);

    request.fields['title'] = "TBD";
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
  Future<List<Quotation>> getQuotations({required String token}) async {
    throw UnimplementedError();
  }

  @override
  Future<Quotation> getQuotationDetails(
      {required String token, required String quotationId}) async {
    throw UnimplementedError();
  }

  @override
  Future<Quotation> updateQuotation(Quotation quotation) async {
    // Implementación de actualización de cotización
    throw UnimplementedError();
  }

  @override
  Future<void> deleteQuotation(String id) async {
    // Implementación de eliminación de cotización
    throw UnimplementedError();
  }
}
