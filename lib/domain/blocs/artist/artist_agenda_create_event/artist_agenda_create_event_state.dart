part of 'artist_agenda_create_event_bloc.dart';

enum ArtistAgendaCreateEventStatus { initial, loading, success, failure }

@freezed
class ArtistAgendaCreateEventState with _$ArtistAgendaCreateEventState {
  const factory ArtistAgendaCreateEventState({
    CustomerDTO? selectedGuest,
    @Default('') String notes,
    @Default('') String date,
    @Default('') String time,
    String? guestError,
    String? notesError,
    @Default(ArtistAgendaCreateEventStatus.initial)
    ArtistAgendaCreateEventStatus status,
  }) = _ArtistAgendaCreateEventState;
}
