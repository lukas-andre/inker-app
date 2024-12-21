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
  void dispose() {
    // Implementation if needed
  }

  @override
  Future getAgenda() {
    throw UnimplementedError();
  }

  @override
  Stream get status => throw UnimplementedError();

  @override
  get statusValue => throw UnimplementedError();
}