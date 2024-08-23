part of 'create_quotation_page_bloc.dart';

@freezed
class CreateQuotationPageState with _$CreateQuotationPageState {
  const factory CreateQuotationPageState.initial({
    @Default([]) List<XFile> referenceImages,
  }) = _Initial;

  const factory CreateQuotationPageState.loading({
    @Default([]) List<XFile> referenceImages,
  }) = _Loading;

  const factory CreateQuotationPageState.imageAdded({
    required List<XFile> referenceImages,
    required String message,
  }) = _ImageAdded;

  const factory CreateQuotationPageState.quotationCreated({
    required int id,
    required String message,
    required bool created,
    @Default([]) List<XFile> referenceImages,
  }) = _QuotationCreated;

  const factory CreateQuotationPageState.error(
    String message, {
    @Default([]) List<XFile> referenceImages,
  }) = _Error;
}
