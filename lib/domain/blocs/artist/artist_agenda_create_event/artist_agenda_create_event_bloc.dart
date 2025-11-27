import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
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
  final AgendaService _agendaService;

  ArtistAgendaCreateEventBloc({
    required CustomerService customerService,
    required LocalSessionService sessionService,
    required AgendaService agendaService,
  })  : _customerService = customerService,
        _sessionService = sessionService,
        _agendaService = agendaService,
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
      guestError: guest == null ? 'error_guest_empty' : null,
    ));
  }

  void _onNotesChanged(
      Emitter<ArtistAgendaCreateEventState> emit, String notes) {
    // Changed validation to be much more permissive (250 chars instead of 10)
    emit(state.copyWith(
      notes: notes,
      notesError: notes.length > 250 ? 'error_notes_too_long' : null,
    ));
  }

  void _onDateChanged(Emitter<ArtistAgendaCreateEventState> emit, String date) {
    emit(state.copyWith(date: date));
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
    
    dev.log('Initializing form with date: $date, startTime: $startTime, endTime: $endTime', 'ArtistAgendaCreateEventBloc');
    
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
  
  void _onEventUpdated(Emitter<ArtistAgendaCreateEventState> emit) async {
    // Called when an existing event is updated
    final currentState = state as _ArtistAgendaCreateEventState;
    
    // Check for validation errors
    if (currentState.guestError != null || 
        currentState.notesError != null || 
        currentState.timeError != null ||
        currentState.selectedGuest == null ||
        currentState.startTime.isEmpty ||
        currentState.endTime.isEmpty ||
        currentState.date.isEmpty ||
        currentState.eventId.isEmpty) {
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.failure));
      return;
    }

    emit(state.copyWith(status: ArtistAgendaCreateEventStatus.loading));

    try {
      final session = await _sessionService.getActiveSession();
      if (session == null) throw Exception('No session');
      
      final artistId = session.user?.userTypeId;
      if (artistId == null) throw Exception('No artist ID');

      DateTime startDate = _combineDateTime(currentState.date, currentState.startTime);
      DateTime endDate = _combineDateTime(currentState.date, currentState.endTime);
      
      Map<String, dynamic> updateFields = {
        'start': _formatDateTimeForApi(startDate),
        'end': _formatDateTimeForApi(endDate),
        'info': currentState.notes,
      };
      
      if (currentState.selectedGuest != null) {
        updateFields['customerId'] = currentState.selectedGuest!.id;
        updateFields['title'] = 'Appointment with ${currentState.selectedGuest!.firstName}';
      }
      
      await _agendaService.updateEvent(
        token: session.accessToken,
        eventId: currentState.eventId,
        updatedFields: updateFields,
      );
      
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.success));
    } catch (e) {
      dev.log('Error updating event: $e', 'ArtistAgendaCreateEventBloc');
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.failure));
    }
  }

  void _onFormSubmitted(Emitter<ArtistAgendaCreateEventState> emit) async {
    final currentState = state as _ArtistAgendaCreateEventState;
    
    // Check for validation errors
    if (currentState.guestError != null || 
        currentState.notesError != null || 
        currentState.timeError != null ||
        currentState.selectedGuest == null ||
        currentState.startTime.isEmpty ||
        currentState.endTime.isEmpty ||
        currentState.date.isEmpty) {
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.failure));
      return;
    }

    emit(state.copyWith(status: ArtistAgendaCreateEventStatus.loading));

    try {

      final session = await _sessionService.getActiveSession();
      if (session == null) throw Exception('No session');
      final artistId = session.user?.userTypeId;
      if (artistId == null) throw Exception('No artist ID');

      DateTime startDate = _combineDateTime(currentState.date, currentState.startTime);
      DateTime endDate = _combineDateTime(currentState.date, currentState.endTime);
      
      // Format dates to match API expectation: YYYY-MM-DD HH:MM:SS
      final formattedStart = _formatDateTimeForApi(startDate);
      final formattedEnd = _formatDateTimeForApi(endDate);
      
      dev.log('Creating event with start: $formattedStart, end: $formattedEnd', 'ArtistAgendaCreateEventBloc');
        
      await _agendaService.createEvent(
        token: session.accessToken,
        agendaId: artistId,
        start: startDate,
        end: endDate,
        title: 'Appointment with ${currentState.selectedGuest!.firstName}',
        info: currentState.notes,
        color: '#0000FF', // Default color
        notification: true, // Default to enabled
        customerId: currentState.selectedGuest!.id,
      );
      
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.success));
    } catch (e) {
      dev.log('Error creating event: $e', 'ArtistAgendaCreateEventBloc');
      emit(state.copyWith(status: ArtistAgendaCreateEventStatus.failure));
    }
  }
  
  // Helper method to combine date and time strings into a DateTime object
  DateTime _combineDateTime(String dateStr, String timeStr) {
    final date = DateTime.parse(dateStr);
    final timeParts = timeStr.split(':');
    return DateTime(
      date.year, 
      date.month, 
      date.day,
      int.parse(timeParts[0]), 
      int.parse(timeParts[1])
    );
  }
  
  // Format DateTime to match API expectation: YYYY-MM-DD HH:MM:SS
  String _formatDateTimeForApi(DateTime dateTime) {
    final year = dateTime.year.toString().padLeft(4, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final day = dateTime.day.toString().padLeft(2, '0');
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    
    return '$year-$month-$day $hour:$minute:00';
  }
}
