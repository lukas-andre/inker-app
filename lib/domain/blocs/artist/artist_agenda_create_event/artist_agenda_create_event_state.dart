part of 'artist_agenda_create_event_bloc.dart';

enum ArtistAgendaCreateEventStatus { initial, loading, success, failure }

@freezed
class ArtistAgendaCreateEventState with _$ArtistAgendaCreateEventState {
  const factory ArtistAgendaCreateEventState({
    CustomerDTO? selectedGuest,
    @Default('') String notes,
    @Default('') String date,
    @Default('') String time, // Legacy field, kept for backward compatibility
    @Default('') String startTime,
    @Default('') String endTime,
    String? guestError,
    String? notesError,
    String? timeError,
    @Default(false) bool isEditing,
    @Default('') String eventId,
    @Default(ArtistAgendaCreateEventStatus.initial)
    ArtistAgendaCreateEventStatus status,
  }) = _ArtistAgendaCreateEventState;
}