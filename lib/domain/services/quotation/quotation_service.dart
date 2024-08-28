import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/agenda/dtos/quotation_list_response.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';

abstract class QuotationService {
  Future<Map<String, dynamic>> createQuotation(
      Quotation quotation, List<XFile> referenceImages, String token);

  Future<QuotationListResponse> getQuotations({
    required String token,
    List<String>? statuses,
    int page = 1,
    int limit = 10,
  });
  Future<Quotation> getQuotationDetails(
      {required String token, required String quotationId});
  Future<Quotation> updateQuotation(Quotation quotation);
  Future<void> deleteQuotation(String id);
}
