import 'package:firebase_auth/firebase_auth.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_social_media_response.dart';
import 'package:inker_studio/features/auth/data/firebase/google_auth_service.dart';
import 'package:inker_studio/features/auth/models/login/social_media_type.dart';
import 'package:inker_studio/features/auth/models/session/session.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/utils/dev.dart';

enum GoogleLoginFlowStatus {
  success,
  partial,
  error,
  initial,
}

class GooglesSingInResult {
  final User? googleUser;
  final Session? session;
  final String? message;
  final GoogleLoginFlowStatus flowStatus;

  GooglesSingInResult({
    this.session,
    this.googleUser,
    this.message,
    this.flowStatus = GoogleLoginFlowStatus.initial,
  });
}

class GoogleSingInUseCase {
  GoogleSingInUseCase(
      GoogleAuthService googleAuthService, UserService userService)
      : _googleAuthService = googleAuthService,
        _userApiService = userService;

  final GoogleAuthService _googleAuthService;
  final UserService _userApiService;

  Future<GooglesSingInResult> execute() async {
    final googleUser = await _googleAuthService.signInWithGoogle();

    if (googleUser == null) {
      return GooglesSingInResult(
        flowStatus: GoogleLoginFlowStatus.error,
        message: 'Google user not found',
      );
    }

    GetUserBySocialMediaResponse? existingUser;

    existingUser = await _userApiService.getUserBySocialMediaAndEmail(
        SocialMediaType.google, googleUser.email!);

    dev.log('whaaaaat wea entre de nuevo', 'GoogleSingInUsecase');

    if (existingUser == null) {
      return GooglesSingInResult(
        googleUser: googleUser,
        message: 'User  ${googleUser.email} not found in inker users service',
        flowStatus: GoogleLoginFlowStatus.partial,
      );
    }

    return GooglesSingInResult(
        googleUser: googleUser, flowStatus: GoogleLoginFlowStatus.success);
  }
}
