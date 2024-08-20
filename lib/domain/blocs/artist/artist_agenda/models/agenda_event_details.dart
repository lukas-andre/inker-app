import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_event_details.freezed.dart';

@freezed
class ArtistAgendaEventDetails with _$ArtistAgendaEventDetails {
  const factory ArtistAgendaEventDetails({
    required String id,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String location,
    String? notes,
  }) = _ArtistAgendaEventDetails;
}
