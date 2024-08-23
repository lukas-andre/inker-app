import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';

abstract class QuotationService {
  Future<Map<String, dynamic>> createQuotation(
      Quotation quotation, List<XFile> referenceImages, String token);
  Future<List<Quotation>> getQuotations({required String token});
  Future<Quotation> getQuotationDetails(
      {required String token, required String quotationId});
  Future<Quotation> updateQuotation(Quotation quotation);
  Future<void> deleteQuotation(String id);
}
