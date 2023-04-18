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
}
