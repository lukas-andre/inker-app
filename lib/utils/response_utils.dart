import 'dart:convert';

import 'package:inker_studio/domain/errors/remote/json_parse_exception.dart';
import 'package:inker_studio/utils/dev.dart';

class ResponseUtils {
  static Map<dynamic, dynamic> getMessage(String body) {
    try {
      final map = json.decode(body);
      return map['message'];
    } catch (e) {
      throw JsonParseException();
    }
  }

  static bool resourceNotFound(dynamic body) {
    try {
      final json = jsonDecode(body);
      return json['message'] == null ? true : false;
    } catch (error, stackTrace) {
      dev.log('error o k $error', 'at ResponseUtils.resourceNotFound');
      dev.logError(error, stackTrace);
      return true;
    }
  }
}
