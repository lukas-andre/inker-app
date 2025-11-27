import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointment_dto.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/services/appointment/appointment_service.dart';
import 'package:inker_studio/domain/models/appointment/appointment_detail_dto.dart';
import 'package:inker_studio/domain/models/appointment/customer_appointments_view.dart';

class ApiAppointmentService implements AppointmentService {
  static const String _customerPath = 'customer/appointments';
  static const String _agendaPath = 'agenda';
  late final HttpClientService _httpClient;

  ApiAppointmentService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<List<Appointment>> getCustomerAppointments({
    required String token,
    String? status,
    int? page,
    int? limit,
  }) async {
    final queryParams = <String, String>{};

    if (status != null) {
      // Convert from frontend status enum to backend status enum
      final backendStatus = _mapAppStatusToBackendStatus(status);
      queryParams['status'] = backendStatus;
    }
    
    if (page != null) queryParams['page'] = page.toString();
    if (limit != null) queryParams['limit'] = limit.toString();

    try {
      // Get raw response directly with http
      final config = await RemoteConfigService.getInstance();
      final baseUrl = config.inkerApiUrl;
      
      // Ensure baseUrl has a protocol prefix
      final baseUrlWithProtocol = baseUrl.startsWith('http://') || baseUrl.startsWith('https://') 
          ? baseUrl 
          : 'https://$baseUrl';

      final path = '$baseUrlWithProtocol/$_agendaPath';
      
      final uri = Uri.parse(path).replace(
        queryParameters: queryParams,
      );
      
      final headers = <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };
      
      print('Getting appointments from: $uri with status: $status');
      
      final response = await http.get(uri, headers: headers);
      
      if (response.statusCode == 200) {
        print('Got response: ${response.body.substring(0, min(100, response.body.length))}...');
        final rawData = json.decode(response.body);
        
        if (rawData is List) {
          print('Got a LIST of ${rawData.length} items');
          return _mapEventsToAppointments(rawData);
        } else if (rawData is Map && rawData.containsKey('items')) {
          print('Got a MAP with items key');
          final list = rawData['items'] as List<dynamic>;
          return _mapEventsToAppointments(list);
        } else {
          print('Got unexpected data type: ${rawData.runtimeType}');
          return <Appointment>[];
        }
      } else {
        print('HTTP error ${response.statusCode}: ${response.body}');
        return <Appointment>[];
      }
    } catch (e) {
      print('Error fetching appointments: $e');
      return <Appointment>[];
    }
  }
  
  // Convert from frontend status enum to backend status string
  String _mapAppStatusToBackendStatus(String appStatus) {
    switch (appStatus) {
      case 'scheduled':
        return 'scheduled';
      case 'inProgress':
        return 'in_progress';
      case 'completed':
        return 'completed';
      case 'rescheduled':
        return 'rescheduled';
      case 'waitingForPhotos':
        return 'waiting_for_photos';
      case 'waitingForReview':
        return 'waiting_for_review';
      case 'reviewed':
        return 'reviewed';
      case 'canceled':
        return 'canceled';
      case 'pending':
        return 'pending';
      default:
        return appStatus;
    }
  }

  List<Appointment> _mapEventsToAppointments(List<dynamic> events) {
    final result = <Appointment>[];

    for (final event in events) {
      try {
        print('Mapping event ID: ${event['id']}');
        
        // Create default objects
        const defaultArtist = Artist(
          id: '',
          username: 'Artist',
        );
        
        var defaultLocation = Location(
          id: '',
          name: 'Studio',
          address1: '',
          city: '',
          state: '',
          country: '',
          lat: 0.0,
          lng: 0.0,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          address2: '',
          addressType: '',
          formattedAddress: '',
          viewport: const Viewport(
            northeast: LatLng(lat: 0, lng: 0),
            southwest: LatLng(lat: 0, lng: 0),
          ),
          location: const GeoPoint(
            type: 'Point',
            coordinates: [0, 0],
          ),
          shortAddress1: '',
          artistId: '',
        );

        // Extract and safely parse dates
        DateTime startDate;
        DateTime endDate;
        try {
          startDate = DateTime.parse(event['startDate'] as String);
          endDate = DateTime.parse(event['endDate'] as String);
        } catch (e) {
          print('Error parsing dates: $e');
          startDate = DateTime.now();
          endDate = DateTime.now().add(const Duration(hours: 1));
        }
        
        // Get status 
        AppointmentStatus status;
        try {
          final statusStr = _mapBackendStatusToAppStatus(event['status'] ?? 'scheduled');
          status = AppointmentStatus.values.firstWhere(
            (s) => s.toString().split('.').last == statusStr,
            orElse: () => AppointmentStatus.scheduled
          );
        } catch (e) {
          print('Error mapping status: $e');
          status = AppointmentStatus.scheduled;
        }
        
        // Create the appointment directly
        final appointment = Appointment(
          id: event['id'] ?? '',
          eventId: event['id'] ?? '',
          customerId: event['customerId'] ?? '',
          artistId: '', // Default value
          title: event['title'] ?? 'Appointment',
          info: event['info'] ?? '',
          startDate: startDate,
          endDate: endDate,
          status: status,
          color: event['color'] ?? '#000000',
          notification: event['notification'] ?? false,
          done: event['done'] ?? false,
          artist: defaultArtist,
          location: defaultLocation,
        );
        
        result.add(appointment);
      } catch (e) {
        print('Error mapping event: $e');
        // Skip this event if mapping fails
      }
    }

    return result;
  }

  String _mapBackendStatusToAppStatus(String backendStatus) {
    switch (backendStatus) {
      case 'scheduled':
        return 'scheduled';
      case 'in_progress':
        return 'inProgress';
      case 'completed':
        return 'completed';
      case 'rescheduled':
        return 'rescheduled';
      case 'waiting_for_photos':
        return 'waitingForPhotos';
      case 'waiting_for_review':
        return 'waitingForReview';
      case 'reviewed':
        return 'reviewed';
      case 'canceled':
        return 'canceled';
      default:
        return 'scheduled';
    }
  }

  @override
  Future<AppointmentDetailDto> getAppointmentById({
    required String token,
    required String appointmentId,
    bool isCustomer = false, // New parameter to indicate if the request is from a customer
  }) async {
    try {
      // Use a different endpoint path based on the user type (artist or customer)
      final path = isCustomer 
          ? '$_agendaPath/customer/event/$appointmentId'  // This assumes the backend has this endpoint
          : '$_agendaPath/event/$appointmentId';         // Original endpoint for artists
      
      return await _httpClient.get(
        path: path,
        token: token,
        fromJson: (json) {
          try {
            return AppointmentDetailDto.fromJson(json);
          } catch (e) {
            print('Error parsing appointment detail DTO: $e');
            throw Exception('Failed to parse appointment detail DTO: $e');
          }
        },
      );
    } catch (e) {
      print('Error fetching appointment detail DTO: $e');
      // Puedes retornar un DTO vacío o lanzar la excepción según tu preferencia
      rethrow;
    }
  }

  @override
  Future<void> requestAppointmentChange({
    required String token,
    required String appointmentId,
    DateTime? newStartDate,
    DateTime? newEndDate,
    String? reason,
  }) async {
    final body = <String, dynamic>{};

    if (newStartDate != null) body['start'] = newStartDate.toIso8601String();
    if (newEndDate != null) body['end'] = newEndDate.toIso8601String();
    if (reason != null) body['info'] = reason;

    await _httpClient.put(
      path: '$_agendaPath/event/$appointmentId',
      token: token,
      body: body,
      fromJson: (json) => null,
    );
  }

  // TODO: Test this
  @override
  Future<void> cancelAppointment({
    required String token,
    required String appointmentId,
    required String reason,
  }) async {
    // For cancellation, we need the agenda ID as well
    // This is a workaround, ideally we would get this from the appointment
    final appointment =
        await getAppointmentById(token: token, appointmentId: appointmentId);

    final agendaId = appointment.artist.id; // Assuming this is available

    await _httpClient.delete(
      path: '$_agendaPath/$agendaId/event/$appointmentId',
      token: token,
      body: {'cancelationReason': reason},
    );
  }

  @override
  Future<void> markAppointmentAsRead({
    required String token,
    required String appointmentId,
  }) async {
    // This might not be directly supported in the backend
    // So we're keeping the original implementation
    await _httpClient.post(
      path: '$_customerPath/$appointmentId/mark-as-read',
      token: token,
      body: {},
      fromJson: (json) => null,
    );
  }

  @override
  Future<void> rsvpForAppointment({
    required String token,
    required String appointmentId,
    required String agendaId,
    required bool willAttend,
  }) async {
    final queryParams = <String, String>{
      'willAttend': willAttend.toString(),
    };

    await _httpClient.post(
      path: '$_agendaPath/$agendaId/event/$appointmentId/rsvp',
      token: token,
      queryParams: queryParams,
      body: {},
      fromJson: (json) => null,
    );
  }

  @override
  Future<CustomerAppointmentsView> getCustomerAppointmentsView(
      {required String token}) async {
    // The new endpoint is just /agenda for customers
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: _agendaPath,
      token: token,
      fromJson: (json) => json,
    );
    
    try {
      return CustomerAppointmentsView.fromJson(response);
    } catch (e, s) {
      print('--- DETAILED PARSE ERROR ---');
      print('Failed to parse the full CustomerAppointmentsView object.');
      print('Error: $e');

      // Attempt to parse sub-sections to isolate the error
      if (response['heroAppointment'] != null) {
        try {
          CustomerAppointmentDto.fromJson(response['heroAppointment'] as Map<String, dynamic>);
        } catch (subError, subStack) {
          print('>>> ERROR ISOLATED IN: heroAppointment');
          print('Sub-Error: $subError');
          print('Sub-Stack: $subStack');
        }
      }

      if (response['appointments'] != null) {
        final appointmentsMap = response['appointments'] as Map<String, dynamic>;
        for (final entry in appointmentsMap.entries) {
          final key = entry.key;
          final list = entry.value as List;
          for (var i = 0; i < list.length; i++) {
            try {
              CustomerAppointmentDto.fromJson(list[i] as Map<String, dynamic>);
            } catch (subError, subStack) {
              print('>>> ERROR ISOLATED IN: appointments -> $key -> item $i');
              print('Sub-Error: $subError');
              print('Sub-Stack: $subStack');
            }
          }
        }
      }

      print('Original Stack Trace: $s');
      print('--- END DETAILED PARSE ERROR ---');
      rethrow;
    }
  }
}
