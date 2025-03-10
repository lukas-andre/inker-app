import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/services/customer/customer_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:intl/intl.dart';

part 'artist_agenda_create_event_event.dart';
part 'artist_agenda_create_event_state.dart';
part 'artist_agenda_create_event_bloc.freezed.dart';

class ArtistAgendaCreateEventBloc
    extends Bloc<ArtistAgendaCreateEventEvent, ArtistAgendaCreateEventState> {
  final CustomerService _customerService;
  final LocalSessionService _sessionService;

  ArtistAgendaCreateEventBloc({
    required CustomerService customerService,
    required LocalSessionService sessionService,
  })  : _customerService = customerService,
        _sessionService = sessionService,
        super(const ArtistAgendaCreateEventState()) {
    on<ArtistAgendaCreateEventEvent>((event, emit) async {
      await event.when(
        formInitialized: () async => _onFormInitialized(emit),
        formInitializedWithEvent: (eventDetails) async => _onFormInitializedWithEvent(emit, eventDetails),
        guestChanged: (guest) async => _onGuestChanged(emit, guest),
        notesChanged: (notes) async => _onNotesChanged(emit, notes),
        dateChanged: (date) async => _onDateChanged(emit, date),
        timeChanged: (startTime, endTime) async => _onTimeRangeChanged(emit, startTime, endTime),
        formSubmitted: () async => _onFormSubmitted(emit),
        eventUpdated: () async => _onEventUpdated(emit),
      );
    });
  }

  Future<List<CustomerDTO>> fetchEventGuestsMatches(String term) async {
    final token = await _sessionService.getActiveSessionToken();
    if (token == null) {
      dev.log('No token', 'ArtistAgendaCreateEventBloc');
      return [];
    }
    final suggestions = await _customerService.searchByTerm(token, term);

    if (state.selectedGuest != null && suggestions.customers.isNotEmpty) {
      return suggestions.customers
          .where((element) => element.id != state.selectedGuest?.id)
          .toList();
    }

    return suggestions.customers;
  }

  void _onFormInitialized(Emitter<ArtistAgendaCreateEventState> emit) {
    emit(const ArtistAgendaCreateEventState());
  }

  void _onGuestChanged(
      Emitter<ArtistAgendaCreateEventState> emit, CustomerDTO? guest) {
    emit(state.copyWith(
      selectedGuest: guest,
      guestError: guest != null ? 'error_guest_empty' : null,
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
    // Legacy method - maintain for backward compatibility
    emit(state.copyWith(time: time));
  }
  
  void _onTimeRangeChanged(Emitter<ArtistAgendaCreateEventState> emit, String startTime, String endTime) {
    // New method for handling start and end time separately
    emit(state.copyWith(
      startTime: startTime,
      endTime: endTime,
      time: startTime, // Keep legacy field updated
    ));
  }

  void _onFormInitializedWithEvent(Emitter<ArtistAgendaCreateEventState> emit, ArtistAgendaEventDetails event) {
    // Initialize the form with data from an existing event
    final startTime = DateFormat('HH:mm').format(event.startDate);
    final endTime = DateFormat('HH:mm').format(event.endDate);
    final date = DateFormat('yyyy-MM-dd').format(event.startDate);
    
    emit(state.copyWith(
      isEditing: true,
      eventId: event.id,
      date: date,
      startTime: startTime, 
      endTime: endTime,
      time: startTime, // Legacy field
      notes: event.description,
      // Guest would need to be set separately if we have the customer data
    ));
  }
  
  void _onEventUpdated(Emitter<ArtistAgendaCreateEventState> emit) {
    // Called when an existing event is updated
    final currentState = state as _ArtistAgendaCreateEventState;
    if (currentState.guestError == null && currentState.notesError == null && currentState.timeError == null) {
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.success));
      // In a real app, this would call the API to update the event
    } else {
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.failure));
    }
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
