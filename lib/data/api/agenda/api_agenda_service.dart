import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';

class ApiAgendaService extends AgendaService {
  static const String className = 'ApiUserService';

  final HttpClientConfig _httpConfig;

  ApiAgendaService()
      : _httpConfig = HttpClientConfig(basePath: 'agenda'),
        super();

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future getAgenda() {
    // TODO: implement getAgenda
    throw UnimplementedError();
  }

  @override
  Future<GetArtistWorksResponse> getArtistWorks(
      {required int artistId,
      required int page,
      required int limit,
      required String token}) async {
    final url = _httpConfig.surl(
      basePath: 'agenda',
      path: 'artists/$artistId/work-evidence',
      queryParams: {
        'page': page.toString(),
        'limit': limit.toString(),
      },
    );

    try {
      final response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response)) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Error while reacting to review');
      }

      try {
        return getArtistWorksResponseFromJson(response.body);
      } catch (e) {
        throw JsonParseException();
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  // TODO: implement status
  Stream get status => throw UnimplementedError();

  @override
  // TODO: implement statusValue
  get statusValue => throw UnimplementedError();

  @override
  Future<List<EventItem>> getEvents({
    required String token,
    required String agendaViewType,
    required String date,
  }) async {
    final url = _httpConfig.surl(
      basePath: 'agenda',
      queryParams: {
        'agendaViewType': agendaViewType,
      },
    );

    try {
      final response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response)) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Error while fetching events');
      }

      try {
        return getAgendaEventsResponseFromJson(response.body);
      } catch (e) {
        throw JsonParseException();
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<AgendaEventDetailResponse> getEvent(
      {required String token, required int eventId}) async {
    final url = _httpConfig.surl(
      basePath: 'agenda',
      path: 'event/$eventId',
    );

    try {
      final response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response)) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Error while fetching event');
      }

      try {
        return agendaEventDetailResponseFromJson(response.body);
      } catch (e) {
        throw JsonParseException();
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
