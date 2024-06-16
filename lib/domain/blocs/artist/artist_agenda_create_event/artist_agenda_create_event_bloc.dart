import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_agenda_create_event_event.dart';
part 'artist_agenda_create_event_state.dart';
part 'artist_agenda_create_event_bloc.freezed.dart';

class ArtistAgendaCreateEventBloc
    extends Bloc<ArtistAgendaCreateEventEvent, ArtistAgendaCreateEventState> {
  ArtistAgendaCreateEventBloc() : super(const ArtistAgendaCreateEventState()) {
    on<ArtistAgendaCreateEventEvent>((event, emit) async {
      await event.when(
        formInitialized: () async => _onFormInitialized(emit),
        guestChanged: (guest) async => _onGuestChanged(emit, guest),
        notesChanged: (notes) async => _onNotesChanged(emit, notes),
        dateChanged: (date) async => _onDateChanged(emit, date),
        timeChanged: (time) async => _onTimeChanged(emit, time),
        formSubmitted: () async => _onFormSubmitted(emit),
      );
    });
  }

  void _onFormInitialized(Emitter<ArtistAgendaCreateEventState> emit) {
    emit(const ArtistAgendaCreateEventState());
  }

  void _onGuestChanged(
      Emitter<ArtistAgendaCreateEventState> emit, String guest) {
    emit(state.copyWith(
      guest: guest,
      guestError: guest.isEmpty ? 'error_guest_empty' : null,
    ));
  }

  void _onNotesChanged(
      Emitter<ArtistAgendaCreateEventState> emit, String notes) {
    emit(state.copyWith(
      notes: notes,
      notesError: notes.length > 10 ? 'error_notes_too_long' : null,
    ));
  }

  void _onDateChanged(Emitter<ArtistAgendaCreateEventState> emit, String date) {
    emit(state.copyWith(date: date));
  }

  void _onTimeChanged(Emitter<ArtistAgendaCreateEventState> emit, String time) {
    emit(state.copyWith(time: time));
  }

  void _onFormSubmitted(Emitter<ArtistAgendaCreateEventState> emit) {
    final currentState = state as _ArtistAgendaCreateEventState;
    if (currentState.guestError == null && currentState.notesError == null) {
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.success));
    } else {
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.failure));
    }
  }
}
