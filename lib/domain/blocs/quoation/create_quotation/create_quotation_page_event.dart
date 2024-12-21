part of 'create_quotation_page_bloc.dart';

@freezed
class CreateQuotationPageEvent with _$CreateQuotationPageEvent {
  const factory CreateQuotationPageEvent.started() = _Started;
  const factory CreateQuotationPageEvent.createQuotation(
      Quotation quotation, List<XFile> referenceImages) = _CreateQuotation;
  const factory CreateQuotationPageEvent.addReferenceImages(
      List<XFile> newImages) = _AddReferenceImages;
  const factory CreateQuotationPageEvent.removeReferenceImage(XFile image) =
      _RemoveReferenceImage;
}
