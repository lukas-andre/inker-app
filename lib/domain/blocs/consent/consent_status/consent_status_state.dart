import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_status_state.freezed.dart';

@freezed
class ConsentStatusState with _$ConsentStatusState {
  const factory ConsentStatusState.initial() = _Initial;
  const factory ConsentStatusState.loading() = _Loading;
  const factory ConsentStatusState.loaded({
    required String eventId,
    required bool hasSigned,
    String? signedAt,
    String? templateTitle,
  }) = _Loaded;
  const factory ConsentStatusState.error(String message) = _Error;
  const factory ConsentStatusState.acceptingTerms() = _AcceptingTerms;
  const factory ConsentStatusState.termsAccepted() = _TermsAccepted;
} 