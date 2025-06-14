import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:inker_studio/domain/models/user/user.dart' as domain;
import 'package:inker_studio/utils/dev.dart';

class GoogleAuthServiceException implements Exception {
  final String message;

  GoogleAuthServiceException(this.message);
}

class GoogleErrorOccurredWhileAccessingCredentialsTryAgain
    extends GoogleAuthServiceException {
  GoogleErrorOccurredWhileAccessingCredentialsTryAgain()
      : super('Error occurred while accessing credentials. Try again.');
}

class ErrorOccurredUsingGoogleSignInTryAgain
    extends GoogleAuthServiceException {
  ErrorOccurredUsingGoogleSignInTryAgain()
      : super('Error ocurred using google sign in, try again');
}

class GoogleTheAccountAlreadyExistsWithDifferentCredential
    extends GoogleAuthServiceException {
  GoogleTheAccountAlreadyExistsWithDifferentCredential()
      : super('The account already exists with different credential');
}

class GoogleErrorSigningOutTryAgain extends GoogleAuthServiceException {
  GoogleErrorSigningOutTryAgain() : super('Error signing out, try again');
}

class GoogleAuthService {
  final String className = 'GoogleAuthService';

  GoogleAuthService({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User.empty] if the user is not authenticated.
  Stream<domain.User> get firebaseUser {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      dev.log('firebaseUser $firebaseUser', className);
      final user =
          firebaseUser == null ? domain.User.empty : firebaseUser.toUser;
      return user;
    });
  }

  Future<firebase_auth.User?> signInWithGoogle() async {
    // Google Sign In is not supported on web in this app
    if (kIsWeb) {
      dev.log('Google Sign In not supported on web', className);
      return null;
    }

    FirebaseAuth auth = FirebaseAuth.instance;
    firebase_auth.User? user;

    GoogleSignInAccount? googleSignInAccount;
    try {
      googleSignInAccount = await _googleSignIn.signIn();
    } catch (error, stackTrace) {
      dev.logError(error, stackTrace);
    }

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          throw GoogleTheAccountAlreadyExistsWithDifferentCredential();
        } else if (e.code == 'invalid-credential') {
          throw GoogleErrorOccurredWhileAccessingCredentialsTryAgain();
        }
      } catch (e) {
        throw ErrorOccurredUsingGoogleSignInTryAgain();
      }
    }

    return user;
  }

  Future<void> signOut() async {
    try {
      if (!kIsWeb) {
        await _googleSignIn.signOut();
      }
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      throw GoogleErrorSigningOutTryAgain();
    }
  }
}

extension on firebase_auth.User {
  domain.User get toUser {
    dev.log('metadata $metadata', 'GoogleAuthSer');
    return domain.User(
        id: hashCode.toString(),
        uid: uid,
        email: email,
        fullname: displayName,
        profileThumbnail: photoURL,
        username: displayName);
  }
}
