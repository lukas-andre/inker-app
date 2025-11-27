import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/domain/models/agenda/agenda.dart' as agenda_model;
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

/// Service layer for managing schedule-related operations.
/// Orchestrates data fetching from multiple sources and provides
/// unified interface for schedule management.
class ScheduleService {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;

  ScheduleService({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService;

  /// Fetches comprehensive schedule data for an artist.
  /// 
  /// This method aggregates:
  /// - Events (confirmed and tentative)
  /// - Quotations (actionable and opportunities)
  /// - Availability information with density metrics
  /// - Suggested time slots
  /// - Working hours configuration
  /// - Summary with key metrics
  Future<ScheduleResponse> getArtistSchedule({
    required String artistId,
    DateTime? fromDate,
    DateTime? toDate,
    bool includeAvailability = true,
    bool includeSuggestions = true,
    int? defaultDuration,
  }) async {
    final token = await _sessionService.getActiveSessionToken();
    if (token == null) {
      throw Exception('No active session token found');
    }

    // Use sensible defaults if dates not provided
    final now = DateTime.now();
    final startDate = fromDate ?? now;
    final endDate = toDate ?? now.add(const Duration(days: 7));

    return await _agendaService.getSchedule(
      token: token,
      artistId: artistId,
      fromDate: startDate,
      toDate: endDate,
      includeAvailability: includeAvailability,
      includeSuggestions: includeSuggestions,
      defaultDuration: defaultDuration ?? 60, // Default 60 minutes
    );
  }

  /// Gets the agenda for an artist.
  /// Returns null if no agenda is found.
  Future<agenda_model.Agenda?> getArtistAgenda(String artistId) async {
    final token = await _sessionService.getActiveSessionToken();
    if (token == null) {
      throw Exception('No active session token found');
    }
    
    return await _agendaService.getAgendaByArtistId(
      token: token,
      artistId: artistId,
    );
  }
  
  /// Creates an event from a quotation.
  /// Links the event to the quotation for tracking.
  Future<void> createEventFromQuotation({
    required String artistId,
    required ScheduleQuotation quotation,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    final token = await _sessionService.getActiveSessionToken();
    if (token == null) {
      throw Exception('No active session token found');
    }

    // First get the agenda for the artist
    final agenda = await getArtistAgenda(artistId);
    if (agenda == null) {
      throw Exception('No agenda found for artist $artistId');
    }
    
    await _agendaService.createEvent(
      token: token,
      agendaId: agenda.id,
      start: startTime,
      end: endTime,
      title: 'Cita: ${quotation.customerName}',
      info: quotation.description,
      color: '#4CAF50', // Green for quotation-based events
      notification: true,
      customerId: quotation.customerId,
      // TODO: Add quotationId field when backend supports it
    );
  }

  /// Checks if a time slot conflicts with existing events.
  bool hasConflict({
    required DateTime startTime,
    required DateTime endTime,
    required List<ScheduleEvent> events,
  }) {
    for (final event in events) {
      if (!event.isBlocking) continue;
      
      // Check for overlap
      if (startTime.isBefore(event.endDate) && endTime.isAfter(event.startDate)) {
        return true;
      }
    }
    return false;
  }

  /// Filters available slots based on duration requirements.
  List<AvailabilitySlot> filterSlotsByDuration({
    required List<AvailabilitySlot> slots,
    required int durationMinutes,
  }) {
    return slots.where((slot) {
      final slotDuration = slot.endTime.difference(slot.startTime).inMinutes;
      return slotDuration >= durationMinutes;
    }).toList();
  }

  /// Gets the next available slot from the schedule.
  AvailabilitySlot? getNextAvailableSlot({
    required ScheduleResponse schedule,
    required int durationMinutes,
  }) {
    final now = DateTime.now();
    
    // First check suggested slots
    for (final slot in schedule.suggestedSlots) {
      if (slot.startTime.isAfter(now)) {
        final slotDuration = slot.endTime.difference(slot.startTime).inMinutes;
        if (slotDuration >= durationMinutes) {
          return AvailabilitySlot(
            startTime: slot.startTime,
            endTime: slot.endTime,
            density: slot.density,
          );
        }
      }
    }

    // Then check regular availability
    for (final day in schedule.availability) {
      for (final slot in day.slots) {
        if (slot.startTime.isAfter(now)) {
          final slotDuration = slot.endTime.difference(slot.startTime).inMinutes;
          if (slotDuration >= durationMinutes) {
            return slot;
          }
        }
      }
    }

    return null;
  }

  /// Groups events by date for calendar display.
  Map<DateTime, List<ScheduleEvent>> groupEventsByDate(List<ScheduleEvent> events) {
    final Map<DateTime, List<ScheduleEvent>> grouped = {};
    
    for (final event in events) {
      final date = DateTime(
        event.startDate.year,
        event.startDate.month,
        event.startDate.day,
      );
      
      grouped.putIfAbsent(date, () => []).add(event);
    }
    
    return grouped;
  }

  /// Calculates availability density for visual display.
  /// Lower density means more available (better).
  double calculateDensityForTimeRange({
    required DateTime startTime,
    required DateTime endTime,
    required List<ScheduleEvent> events,
  }) {
    int conflictingMinutes = 0;
    final totalMinutes = endTime.difference(startTime).inMinutes;
    
    for (final event in events) {
      if (!event.isBlocking) continue;
      
      // Calculate overlap
      final overlapStart = startTime.isAfter(event.startDate) ? startTime : event.startDate;
      final overlapEnd = endTime.isBefore(event.endDate) ? endTime : event.endDate;
      
      if (overlapStart.isBefore(overlapEnd)) {
        conflictingMinutes += overlapEnd.difference(overlapStart).inMinutes;
      }
    }
    
    return conflictingMinutes / totalMinutes;
  }
}