import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_evidence.freezed.dart';
part 'work_evidence.g.dart';


@freezed
class WorkEvidence with _$WorkEvidence {
  const factory WorkEvidence({
    required int count,
    required List<WorkEvidenceMetadata> metadata,
  }) = _WorkEvidence;

  factory WorkEvidence.fromJson(Map<String, dynamic> json) => _$WorkEvidenceFromJson(json);
}

@freezed
class WorkEvidenceMetadata with _$WorkEvidenceMetadata {
  const factory WorkEvidenceMetadata({
    required String url,
    required int size,
    required String type,
    required String encoding,
    required int position,
    required String fieldname,
    required String originalname,
  }) = _WorkEvidenceMetadata;

  factory WorkEvidenceMetadata.fromJson(Map<String, dynamic> json) => _$WorkEvidenceMetadataFromJson(json);
}
