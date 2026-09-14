import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<UserCredential> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    await credential.user?.updateDisplayName(name);
    return credential;
  }

  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    return FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> signWithGoogle() async {
    final googleUser = await GoogleSignIn.instance.authenticate();
    final googleAuth = googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );
    return FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> resetPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
