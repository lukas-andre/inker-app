import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/models/event_details.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/schedule/schedule_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'schedule_assistant_event.dart';
part 'schedule_assistant_state.dart';
part 'schedule_assistant_bloc.freezed.dart';

class ScheduleAssistantBloc
    extends Bloc<ScheduleAssistantEvent, ScheduleAssistantState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;
  late final ScheduleService _scheduleService;
  
  String? _currentArtistId;

  ScheduleAssistantBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ScheduleAssistantState.initial()) {
    _scheduleService = ScheduleService(
      agendaService: _agendaService,
      sessionService: _sessionService,
    );
    on<ScheduleAssistantEvent>((event, emit) async {
      await event.when(
        started: (artistId) async => _fetchScheduleData(emit, artistId),
        dateRangeChanged: (start, end) async =>
            _updateDateRange(emit, start, end),
        timeSlotSelected: (start, end) async =>
            _selectTimeSlot(emit, start, end),
        eventCreated: (event) {},
        scheduleDataRequested: (artistId, fromDate, toDate) async =>
            _fetchScheduleData(emit, artistId, fromDate: fromDate, toDate: toDate),
        quotationSelected: (quotationId) async =>
            _selectQuotation(emit, quotationId),
        timeSlotSuggestionSelected: (slot) async =>
            _selectSuggestedSlot(emit, slot),
        availabilityDensityToggled: (show) async =>
            _toggleAvailabilityDensity(emit, show),
        quotationActionTriggered: (quotationId, action) async =>
            _handleQuotationAction(emit, quotationId, action),
        createEventFromQuotation: (quotationId, startTime, endTime) async =>
            _createEventFromQuotation(emit, quotationId, startTime, endTime),
        durationChanged: (duration) async =>
            _handleDurationChange(emit, duration),
      );
    });
  }

  Future<void> _fetchScheduleData(
      Emitter<ScheduleAssistantState> emit, String artistId,
      {DateTime? fromDate, DateTime? toDate}) async {
    emit(const ScheduleAssistantState.loading());
    _currentArtistId = artistId;
    
    try {
      final now = DateTime.now();
      final startDate = fromDate ?? now;
      final endDate = toDate ?? now.add(const Duration(days: 7));
      
      final schedule = await _scheduleService.getArtistSchedule(
        artistId: artistId,
        fromDate: startDate,
        toDate: endDate,
        includeAvailability: true,
        includeSuggestions: true,
      );

      // Group availability by date
      final availabilityByDate = <String, List<AvailabilitySlot>>{};
      for (final day in schedule.availability) {
        availabilityByDate[day.date] = day.slots;
      }

      emit(ScheduleAssistantState.loaded(
        events: schedule.events,
        quotations: schedule.quotations,
        availability: availabilityByDate,
        suggestedSlots: schedule.suggestedSlots,
        workingHours: schedule.workingHours,
        summary: schedule.summary,
        rangeStart: startDate,
        rangeEnd: endDate,
      ));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ScheduleAssistantState.error(e.toString()));
    }
  }

  Future<void> _updateDateRange(Emitter<ScheduleAssistantState> emit,
      DateTime start, DateTime end) async {
    if (_currentArtistId != null) {
      await _fetchScheduleData(emit, _currentArtistId!, 
          fromDate: start, toDate: end);
    }
  }

  Future<void> _selectTimeSlot(Emitter<ScheduleAssistantState> emit,
      DateTime start, DateTime end) async {
    state.whenOrNull(
      loaded: (events, quotations, availability, suggestedSlots, workingHours,
          summary, rangeStart, rangeEnd, selectedQuotation, _, showDensity, isCreating, selectedDuration) {
        emit(ScheduleAssistantState.loaded(
          events: events,
          quotations: quotations,
          availability: availability,
          suggestedSlots: suggestedSlots,
          workingHours: workingHours,
          summary: summary,
          rangeStart: rangeStart,
          rangeEnd: rangeEnd,
          selectedQuotation: selectedQuotation,
          selectedTimeSlot: start,
          showAvailabilityDensity: showDensity,
          isCreatingEvent: isCreating,
          selectedDuration: selectedDuration,
        ));
      },
    );
  }
  
  Future<void> _selectQuotation(Emitter<ScheduleAssistantState> emit,
      String quotationId) async {
    state.whenOrNull(
      loaded: (events, quotations, availability, suggestedSlots, workingHours,
          summary, rangeStart, rangeEnd, _, selectedTime, showDensity, isCreating, selectedDuration) {
        final quotation = quotations.firstWhere(
          (q) => q.id == quotationId,
          orElse: () => throw Exception('Quotation not found'),
        );
        
        emit(ScheduleAssistantState.loaded(
          events: events,
          quotations: quotations,
          availability: availability,
          suggestedSlots: suggestedSlots,
          workingHours: workingHours,
          summary: summary,
          rangeStart: rangeStart,
          rangeEnd: rangeEnd,
          selectedQuotation: quotation,
          selectedTimeSlot: selectedTime,
          showAvailabilityDensity: showDensity,
          isCreatingEvent: isCreating,
          selectedDuration: selectedDuration,
        ));
      },
    );
  }
  
  Future<void> _selectSuggestedSlot(Emitter<ScheduleAssistantState> emit,
      SuggestedSlot slot) async {
    await _selectTimeSlot(emit, slot.startTime, slot.endTime);
  }
  
  Future<void> _toggleAvailabilityDensity(Emitter<ScheduleAssistantState> emit,
      bool show) async {
    state.whenOrNull(
      loaded: (events, quotations, availability, suggestedSlots, workingHours,
          summary, rangeStart, rangeEnd, selectedQuotation, selectedTime, _, isCreating, selectedDuration) {
        emit(ScheduleAssistantState.loaded(
          events: events,
          quotations: quotations,
          availability: availability,
          suggestedSlots: suggestedSlots,
          workingHours: workingHours,
          summary: summary,
          rangeStart: rangeStart,
          rangeEnd: rangeEnd,
          selectedQuotation: selectedQuotation,
          selectedTimeSlot: selectedTime,
          showAvailabilityDensity: show,
          isCreatingEvent: isCreating,
          selectedDuration: selectedDuration,
        ));
      },
    );
  }
  
  Future<void> _handleQuotationAction(Emitter<ScheduleAssistantState> emit,
      String quotationId, QuotationAction action) async {
    // TODO: Implement quotation actions (accept, reject, etc.)
    // This will require adding methods to QuotationService
  }
  
  Future<void> _createEventFromQuotation(
      Emitter<ScheduleAssistantState> emit,
      String quotationId,
      DateTime startTime,
      DateTime endTime) async {
    state.whenOrNull(
      loaded: (events, quotations, availability, suggestedSlots, workingHours,
          summary, rangeStart, rangeEnd, selectedQuotation, selectedTime, showDensity, _, selectedDuration) {
        emit(ScheduleAssistantState.loaded(
          events: events,
          quotations: quotations,
          availability: availability,
          suggestedSlots: suggestedSlots,
          workingHours: workingHours,
          summary: summary,
          rangeStart: rangeStart,
          rangeEnd: rangeEnd,
          selectedQuotation: selectedQuotation,
          selectedTimeSlot: selectedTime,
          showAvailabilityDensity: showDensity,
          isCreatingEvent: true,
          selectedDuration: selectedDuration,
        ));
      },
    );
    
    try {
      if (_currentArtistId == null) {
        throw Exception('No artist ID available');
      }
      
      state.whenOrNull(
        loaded: (events, quotations, availability, suggestedSlots, workingHours,
            summary, rangeStart, rangeEnd, selectedQuotation, selectedTime, showDensity, _, selectedDuration) {
          final quotation = quotations.firstWhere(
            (q) => q.id == quotationId,
            orElse: () => throw Exception('Quotation not found'),
          );
          
          _scheduleService.createEventFromQuotation(
            artistId: _currentArtistId!,
            quotation: quotation,
            startTime: startTime,
            endTime: endTime,
          ).then((_) {
            // Refresh schedule data after creating event
            if (_currentArtistId != null) {
              add(ScheduleAssistantEvent.scheduleDataRequested(
                artistId: _currentArtistId!,
                fromDate: rangeStart,
                toDate: rangeEnd,
              ));
            }
          }).catchError((error, stackTrace) {
            dev.logError(error, stackTrace);
            emit(ScheduleAssistantState.error(error.toString()));
          });
        },
      );
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      emit(ScheduleAssistantState.error(e.toString()));
    }
  }
  
  Future<void> _handleDurationChange(Emitter<ScheduleAssistantState> emit,
      int duration) async {
    state.whenOrNull(
      loaded: (events, quotations, availability, suggestedSlots, workingHours,
          summary, rangeStart, rangeEnd, selectedQuotation, selectedTime, showDensity, isCreating, _) {
        emit(ScheduleAssistantState.loaded(
          events: events,
          quotations: quotations,
          availability: availability,
          suggestedSlots: suggestedSlots,
          workingHours: workingHours,
          summary: summary,
          rangeStart: rangeStart,
          rangeEnd: rangeEnd,
          selectedQuotation: selectedQuotation,
          selectedTimeSlot: selectedTime,
          showAvailabilityDensity: showDensity,
          isCreatingEvent: isCreating,
          selectedDuration: duration,
        ));
        
        // Re-fetch schedule data with new duration for updated suggestions
        if (_currentArtistId != null) {
          _scheduleService.getArtistSchedule(
            artistId: _currentArtistId!,
            fromDate: rangeStart,
            toDate: rangeEnd,
            includeAvailability: true,
            includeSuggestions: true,
            defaultDuration: duration,
          ).then((schedule) {
            // Update only the suggested slots
            emit(ScheduleAssistantState.loaded(
              events: events,
              quotations: quotations,
              availability: availability,
              suggestedSlots: schedule.suggestedSlots,
              workingHours: workingHours,
              summary: summary,
              rangeStart: rangeStart,
              rangeEnd: rangeEnd,
              selectedQuotation: selectedQuotation,
              selectedTimeSlot: selectedTime,
              showAvailabilityDensity: showDensity,
              isCreatingEvent: isCreating,
              selectedDuration: duration,
            ));
          }).catchError((error, stackTrace) {
            dev.logError(error, stackTrace);
          });
        }
      },
    );
  }
}
