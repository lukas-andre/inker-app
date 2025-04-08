import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/services/appointment/appointment_service.dart';

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
  Future<Appointment> getAppointmentById({
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
            print('Event detail response: $json');


            final defaultLocation = {
              'id': 1,
              'name': 'Studio',
              'address1': '',
              'city': '',
              'state': '',
              'country': '',
              'lat': 0.0,
              'lng': 0.0
            };

            final Map<String, dynamic> event = json.containsKey('event')
                ? json['event']
                : (json is Map ? json : {});

            final location = json.containsKey('location')
                ? json['location']
                : defaultLocation;

            // Extract artist information from agenda
            int artistId = 1;
            if (event['agenda'] != null) {
              artistId = event['agenda']['artistId'] ?? 1;
            }
            
            // Create artist object with appropriate data
            Map<String, dynamic> artistData = event['artist'] ?? {};
            
            // If artist is not present in the response, create a minimal artist object
            if (artistData.isEmpty) {
              artistData = {
                'id': artistId,
                'username': 'Artist $artistId',
                'contact': { // Ensure contact is included
                  'email': null,
                  'phone': null,
                }
              };
            }
            
            // Ensure contact exists in artist data
            if (!artistData.containsKey('contact') || artistData['contact'] == null) {
              artistData['contact'] = {
                'email': null,
                'phone': null,
              };
            }
            
            final Map<String, dynamic> appointmentJson = {
              'id': event['id'] ?? appointmentId,
              'eventId': event['id'] ?? appointmentId,
              'customerId': event['customerId'] ?? 0,
              'artistId': artistId,
              'title': event['title'] ?? 'Appointment',
              'info': event['info'] ?? '',
              'startDate':
                  event['startDate'] ?? DateTime.now().toIso8601String(),
              'endDate': event['endDate'] ??
                  DateTime.now().add(const Duration(hours: 1)).toIso8601String(),
              'status':
                  _mapBackendStatusToAppStatus(event['status'] ?? 'scheduled'),
              'color': event['color'] ?? '#000000',
              'notification': event['notification'] ?? false,
              'done': event['done'] ?? false,
              'quotationId': event['quotationId'],
              'cancelationReason': event['cancelationReason'],
              'workEvidence': event['workEvidence'],
              'createdAt':
                  event['createdAt'] ?? DateTime.now().toIso8601String(),
              'updatedAt':
                  event['updatedAt'] ?? DateTime.now().toIso8601String(),
              'deletedAt': event['deletedAt'],
              'artist': artistData,
              'location': location,
              'readByCustomer': isCustomer ? true : (event['readByCustomer'] ?? false),
            };

            return Appointment.fromJson(appointmentJson);
          } catch (e) {
            print('Error parsing appointment: $e');
            throw Exception('Failed to parse appointment: $e');
          }
        },
      );
    } catch (e) {
      print('Error fetching appointment: $e');
      // Create a placeholder appointment for error case
      return Appointment(
        id: appointmentId,
        eventId: appointmentId,
        customerId: '',
        artistId: '',
        title: 'Error: Could not load appointment',
        info: 'There was an error loading this appointment',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(hours: 1)),
        status: AppointmentStatus.scheduled,
        color: '#FF0000',
        notification: false,
        done: false,
        artist: const Artist(id: '', username: 'Unknown Artist'),
        location: Location(
          id: '',
          name: 'Unknown Location',
          address1: '',
          city: '',
          state: '',
          country: '',
          lat: 0,
          lng: 0,
          createdAt: DateTime.now(),
          artistId: '',
          updatedAt: DateTime.now(),
          shortAddress1: '',
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
        ),
      );
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

    final agendaId = appointment.artistId; // Assuming this is available

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
}
