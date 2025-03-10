import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';

abstract class AgendaService {
  Stream<dynamic> get status;
  dynamic get statusValue;
  Future<dynamic> getAgenda();
  Future<GetArtistWorksResponse> getArtistWorks(
      {required int artistId,
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
    required int eventId,
  });

  Future<List<EventItem>> getArtistEvents({
    required String token,
    required int artistId,
    required DateTime startDate,
    required DateTime endDate,
  });
  
  // New methods for agenda settings
  Future<void> updateWorkingHours({
    required String token,
    required int agendaId,
    required String workingHoursStart,
    required String workingHoursEnd,
    required List<String> workingDays,
  });
  
  Future<void> addUnavailableTime({
    required String token,
    required int agendaId,
    required DateTime startDate,
    required DateTime endDate,
    String? reason,
  });
  
  Future<List<dynamic>> getUnavailableTime({
    required String token,
    required int agendaId,
  });
  
  Future<void> deleteUnavailableTime({
    required String token,
    required int agendaId,
    required int unavailableTimeId,
  });
  
  Future<void> updateAgendaSettings({
    required String token,
    required int agendaId,
    required bool isPublic,
    required bool isOpen,
  });
  
  Future<Map<String, dynamic>> getAgendaSettings({
    required String token,
    required int agendaId,
  });
  
  Future<void> rescheduleEvent({
    required String token,
    required int agendaId,
    required int eventId,
    required DateTime newStartDate,
    required DateTime newEndDate,
    String? reason,
  });
  
  Future<void> updateEventNotes({
    required String token,
    required int agendaId,
    required int eventId,
    required String notes,
  });
  
  Future<List<dynamic>> getArtistAvailability({
    required String token,
    required int artistId,
    DateTime? fromDate,
    DateTime? toDate,
    int? duration,
  });
  
  Future<List<dynamic>> getQuotationAvailableSlots({
    required String token,
    required int quotationId,
  });
  
  Future<List<dynamic>> getArtistAvailableTimeSlots({
    required String token,
    required int artistId,
    required DateTime date,
    required int durationMinutes,
  });
}
