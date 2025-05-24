import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/domain/models/event/event_detail_response.dart';

abstract class AgendaService {
  Stream<dynamic> get status;
  dynamic get statusValue;
  Future<dynamic> getAgenda();
  Future<GetArtistWorksResponse> getArtistWorks(
      {required String artistId,
      required int page,
      required int limit,
      required String token});
  void dispose();

  Future<List<EventItem>> getEvents({
    required String token,
    required String agendaViewType,
    required String date,
  });

  Future<AgendaEventDetailResponse> getEvent({
    required String token,
    required String eventId,
  });

  Future<List<EventItem>> getArtistEvents({
    required String token,
    required String artistId,
    required DateTime startDate,
    required DateTime endDate,
  });
  
  // New methods for agenda settings
  Future<void> updateWorkingHours({
    required String token,
    required String agendaId,
    required String workingHoursStart,
    required String workingHoursEnd,
    required List<String> workingDays,
  });
  
  Future<void> addUnavailableTime({
    required String token,
    required String agendaId,
    required DateTime startDate,
    required DateTime endDate,
    String? reason,
  });
  
  Future<List<dynamic>> getUnavailableTime({
    required String token,
    required String agendaId,
  });
  
  Future<void> deleteUnavailableTime({
    required String token,
    required String agendaId,
    required String unavailableTimeId,
  });
  
  Future<void> updateAgendaSettings({
    required String token,
    required String agendaId,
    required bool isPublic,
    required bool isOpen,
  });
  
  Future<Map<String, dynamic>> getAgendaSettings({
    required String token,
    required String agendaId,
  });
  
  Future<void> rescheduleEvent({
    required String token,
    required String agendaId,
    required String eventId,
    required DateTime newStartDate,
    required DateTime newEndDate,
    String? reason,
  });
  
  Future<void> updateEventNotes({
    required String token,
    required String agendaId,
    required String eventId,
    required String notes,
  });
  
  Future<List<dynamic>> getArtistAvailability({
    required String token,
    required String artistId,
    DateTime? fromDate,
    DateTime? toDate,
    int? duration,
  });
  
  Future<List<dynamic>> getQuotationAvailableSlots({
    required String token,
    required String quotationId,
  });
  
  Future<List<dynamic>> getArtistAvailableTimeSlots({
    required String token,
    required String artistId,
    required DateTime date,
    required int durationMinutes,
  });
  
  Future<void> createEvent({
    required String token,
    required String agendaId,
    required DateTime start,
    required DateTime end,
    required String title,
    required String info,
    required String color,
    required bool notification,
    required String customerId,
  });
  
  Future<void> updateEvent({
    required String token,
    required String eventId,
    required Map<String, dynamic> updatedFields,
  });

  Future<EventDetailResponse> getEventDetails(String eventId, String token);
  Future<EventDetailResponse> getCustomerEventDetails(String eventId, String token);
}
