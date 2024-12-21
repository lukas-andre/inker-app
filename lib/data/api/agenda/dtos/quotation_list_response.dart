import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';

part 'quotation_list_response.freezed.dart';
part 'quotation_list_response.g.dart';

@freezed
class QuotationListResponse with _$QuotationListResponse {
  const factory QuotationListResponse({
    required List<Quotation> items,
    required int total,
  }) = _QuotationListResponse;

  factory QuotationListResponse.fromJson(Map<String, dynamic> json) =>
      _$QuotationListResponseFromJson(json);
}
