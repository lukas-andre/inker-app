import 'package:firebase_auth/firebase_auth.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_socia_media_response.dart';
import 'package:inker_studio/data/firebase/google_auth_service.dart';
import 'package:inker_studio/domain/models/login/social_media_type.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/utils/dev.dart';

class SignUpWithGoogleFailure implements Exception {}

class GooglesSingInResult {
  final User? googleUser;
  final Session? session;

  GooglesSingInResult({this.googleUser, this.session});
}

class GoogleSingInUsecase {
  GoogleSingInUsecase(GoogleAuthService googleAuthService,
      LocalSessionService localSessionService, UserService userService)
      : _googleAuthService = googleAuthService,
        _localSessionService = localSessionService,
        _userService = userService;

  final GoogleAuthService _googleAuthService;
  final LocalSessionService _localSessionService;
  final UserService _userService;

  Future<GooglesSingInResult?> execute() async {
    Session? session;
    final googleUser = await _googleAuthService.signInWithGoogle();

    if (googleUser == null) {
      throw SignUpWithGoogleFailure();
    }

    GetUserBySocialMediaResponse? existingUser;
    try {
      existingUser = await _userService.getUserBySocialMediaAndEmail(
          SocialMediaType.google, googleUser.email!);
    } catch (error, stackTrace) {
      dev.logError(error, stackTrace);
      rethrow;
    }

    if (existingUser != null) {
      session = await _localSessionService.newGoogleSession(googleUser);
      return GooglesSingInResult(session: session);
    }

    return GooglesSingInResult(googleUser: googleUser);
  }
}
