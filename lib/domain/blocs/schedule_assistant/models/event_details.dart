import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_details.freezed.dart';

@freezed
class EventDetails with _$EventDetails {
  const factory EventDetails({
    required String id,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String location,
    String? notes,
  }) = _EventDetails;
}
