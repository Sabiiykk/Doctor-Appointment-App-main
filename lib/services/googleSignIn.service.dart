import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:hive/hive.dart';

class GoogleSignInService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Function(String) showMessage;

  GoogleSignInService({required this.showMessage});

  Future<User?> signIn() async {
    try {
      UserCredential userCredential;

      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();
        userCredential = await _auth.signInWithPopup(googleProvider);
      } else {
        final GoogleSignInAccount? googleUser = await _getGoogleUser();
        if (googleUser == null) {
          showMessage('Sign in cancelled');
          return null;
        }

        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        userCredential = await _auth.signInWithCredential(credential);
      }

      await _storeUserData(userCredential.user);
      showMessage('Signed in as ${userCredential.user?.displayName}');
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      showMessage('Firebase Sign-In Error: ${e.message}');
      throw Exception('Firebase Sign-In Error: ${e.message}');
    } catch (e) {
      showMessage('Error during Google Sign-In: $e');
      throw Exception('Error during Google Sign-In: $e');
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      showMessage('Signed out successfully');
    } catch (e) {
      showMessage('Error during sign-out: $e');
      throw Exception('Failed to sign out');
    }
  }

  Future<GoogleSignInAccount?> _getGoogleUser() async {
    if (await _googleSignIn.isSignedIn()) {
      return _handleExistingUser();
    } else if (kIsWeb) {
      return await _googleSignIn.signIn();
    }
    return null;
  }

  Future<void> _storeUserData(User? user) async {
    if (user == null) return;

    var decodedUrl = Uri.decodeFull(user.photoURL!.replaceFirst('assets/', ''));

    final box = Hive.box('googleUserBox');
    await box.putAll({
      'userId': user.uid,
      'userEmail': user.email ?? '',
      'displayName': user.displayName ?? '',
      'photoUrl': decodedUrl,
    });
  }

  Future<GoogleSignInAccount?> _handleExistingUser() async {
    final GoogleSignInAccount? googleUser = _googleSignIn.currentUser;
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      if (googleAuth.idToken == null || googleAuth.accessToken == null) {
        return await _googleSignIn.signInSilently() ??
            await _googleSignIn.signIn();
      }
    }
    return googleUser;
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);

  @override
  String toString() => message;
}
