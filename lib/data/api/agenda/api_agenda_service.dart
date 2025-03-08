import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';

class ApiAgendaService extends AgendaService {
  static const String className = 'ApiAgendaService';
  static const String _basePath = 'agenda';
  
  late final HttpClientService _httpClient;

  ApiAgendaService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<GetArtistWorksResponse> getArtistWorks({
    required int artistId,
    required int page,
    required int limit,
    required String token,
  }) async {
    return await _httpClient.get(
      path: '$_basePath/artists/$artistId/work-evidence',
      token: token,
      queryParams: {
        'page': page.toString(),
        'limit': limit.toString(),
      },
      fromJson: GetArtistWorksResponse.fromJson,
    );
  }

  @override
  Future<List<EventItem>> getEvents({
    required String token,
    required String agendaViewType,
    required String date,
  }) async {
    return await _httpClient.getList(
      path: _basePath,
      token: token,
      queryParams: {
        'agendaViewType': agendaViewType,
      },
      fromJson: EventItem.fromJson,
    );
  }

  @override
  Future<AgendaEventDetailResponse> getEvent({
    required String token,
    required int eventId,
  }) async {
    return await _httpClient.get(
      path: '$_basePath/event/$eventId',
      token: token,
      fromJson: AgendaEventDetailResponse.fromJson,
    );
  }

  @override
  Future<List<EventItem>> getArtistEvents({
    required String token,
    required int artistId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return await _httpClient.getList(
      path: 'artist/$artistId',
      token: token,
      queryParams: {
        'startDate': startDate.toIso8601String(),
        'endDate': endDate.toIso8601String(),
      },
      fromJson: EventItem.fromJson,
    );
  }
  
  @override
  Future<void> updateWorkingHours({
    required String token,
    required int agendaId,
    required String workingHoursStart,
    required String workingHoursEnd,
    required List<String> workingDays,
  }) async {
    try {
      await _httpClient.put(
        path: '$_basePath/$agendaId/working-hours',
        token: token,
        body: {
          'workingHoursStart': workingHoursStart,
          'workingHoursEnd': workingHoursEnd,
          'workingDays': workingDays,
        },
        fromJson: (json) => null,
      );
    } catch (e) {
      // Log the error but don't propagate it - we don't care about the response
      print('Warning: Error updating working hours: $e');
      // Continue execution without throwing
    }
  }
  
  @override
  Future<void> addUnavailableTime({
    required String token,
    required int agendaId,
    required DateTime startDate,
    required DateTime endDate,
    String? reason,
  }) async {
    final Map<String, dynamic> body = {
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
    };
    
    if (reason != null) {
      body['reason'] = reason;
    }
    
    await _httpClient.post(
      path: '$_basePath/$agendaId/unavailable-time',
      token: token,
      body: body,
      fromJson: (json) => null,
    );
  }
  
  @override
  Future<List<dynamic>> getUnavailableTime({
    required String token,
    required int agendaId,
  }) async {
    try {
      // Use getList for expecting List responses instead of get
      return await _httpClient.getList(
        path: '$_basePath/$agendaId/unavailable-time',
        token: token,
        fromJson: (json) => json, // Just pass through each item
      );
    } catch (e) {
      // Log error but return empty list to avoid UI crashes
      print('Warning: Error getting unavailable time: $e');
      return <dynamic>[];
    }
  }
  
  @override
  Future<void> deleteUnavailableTime({
    required String token,
    required int agendaId,
    required int unavailableTimeId,
  }) async {
    await _httpClient.delete(
      path: '$_basePath/$agendaId/unavailable-time/$unavailableTimeId',
      token: token,
      body: {},
    );
  }
  
  @override
  Future<void> updateAgendaSettings({
    required String token,
    required int agendaId,
    required bool isPublic,
    required bool isOpen,
  }) async {
    try {
      // Make sure we're using the correct property names as expected by backend
      await _httpClient.put(
        path: '$_basePath/$agendaId/settings',
        token: token,
        body: {
          'public': isPublic,
          'open': isOpen,
        },
        fromJson: (json) => null, // This handles empty responses better
      );
    } catch (e) {
      // Log the error but don't propagate it up - we don't care about the response
      print('Warning: Error updating agenda settings: $e');
      // Continue execution without throwing
    }
  }
  
  @override
  Future<Map<String, dynamic>> getAgendaSettings({
    required String token,
    required int agendaId,
  }) async {
    try {
      final response = await _httpClient.get(
        path: '$_basePath/$agendaId/settings',
        token: token,
        fromJson: (json) {
          // Check if the response is null
          if (json == null) {
            return _getDefaultSettings();
          }
          
          // Make sure we're working with a Map
          if (json is! Map<String, dynamic>) {
            return _getDefaultSettings();
          }
          
          // Apply default values for any missing fields
          return _applyDefaultSettings(json);
        },
      );
      
      // Double-check the type
      if (response is! Map<String, dynamic>) {
        return _getDefaultSettings();
      }
      
      return response;
    } catch (e) {
      // If there's an error or the endpoint doesn't exist yet,
      // return default settings rather than propagating the error
      return _getDefaultSettings();
    }
  }
  
  // Helper method to apply defaults to partial settings
  Map<String, dynamic> _applyDefaultSettings(Map<String, dynamic> settings) {
    final Map<String, dynamic> result = Map.from(settings);
    
    // Apply defaults for missing fields
    if (!result.containsKey('workingHoursStart')) {
      result['workingHoursStart'] = '09:00';
    }
    
    if (!result.containsKey('workingHoursEnd')) {
      result['workingHoursEnd'] = '18:00';
    }
    
    if (!result.containsKey('workingDays')) {
      result['workingDays'] = ['1', '2', '3', '4', '5'];
    } else if (result['workingDays'] == null || (result['workingDays'] is List && (result['workingDays'] as List).isEmpty)) {
      result['workingDays'] = ['1', '2', '3', '4', '5'];
    }
    
    if (!result.containsKey('public')) {
      result['public'] = true;
    }
    
    if (!result.containsKey('open')) {
      result['open'] = true;
    }
    
    return result;
  }
  
  // Helper method to create default settings
  Map<String, dynamic> _getDefaultSettings() {
    return {
      'workingHoursStart': '09:00',
      'workingHoursEnd': '18:00',
      'workingDays': ['1', '2', '3', '4', '5'],
      'public': true,
      'open': true,
    };
  }
  
  @override
  Future<void> rescheduleEvent({
    required String token,
    required int agendaId,
    required int eventId,
    required DateTime newStartDate,
    required DateTime newEndDate,
    String? reason,
  }) async {
    final Map<String, dynamic> body = {
      'newStartDate': newStartDate.toIso8601String(),
      'newEndDate': newEndDate.toIso8601String(),
    };
    
    if (reason != null) {
      body['reason'] = reason;
    }
    
    await _httpClient.put(
      path: '$_basePath/$agendaId/event/$eventId/reschedule',
      token: token,
      body: body,
      fromJson: (json) => null
    );
  }
  
  @override
  Future<void> updateEventNotes({
    required String token,
    required int agendaId,
    required int eventId,
    required String notes,
  }) async {
    await _httpClient.put(
      path: '$_basePath/$agendaId/event/$eventId/notes',
      token: token,
      body: {
        'notes': notes,
      },
      fromJson: (json) => null,
    );
  }
  
  @override
  Future<List<dynamic>> getArtistAvailability({
    required String token,
    required int artistId,
    DateTime? fromDate,
    DateTime? toDate,
    int? duration,
  }) async {
    final Map<String, String> queryParams = {};
    
    if (fromDate != null) {
      queryParams['fromDate'] = fromDate.toIso8601String();
    }
    
    if (toDate != null) {
      queryParams['toDate'] = toDate.toIso8601String();
    }
    
    if (duration != null) {
      queryParams['duration'] = duration.toString();
    }
    
    return await _httpClient.getList(
      path: '$_basePath/artists/$artistId/availability',
      token: token,
      queryParams: queryParams,
      fromJson: (json) => null,
    );
  }
  
  @override
  Future<List<dynamic>> getQuotationAvailableSlots({
    required String token,
    required int quotationId,
  }) async {
    return await _httpClient.getList(
      path: 'quotations/$quotationId/available-slots',
      token: token,
      fromJson: (json) => null,
    );
  }

  @override
  void dispose() {
    // Implementation if needed
  }

  @override
  Future getAgenda() {
    // Placeholder implementation
    return Future.value(null);
  }

  @override
  Stream get status => throw UnimplementedError();

  @override
  get statusValue => throw UnimplementedError();
}