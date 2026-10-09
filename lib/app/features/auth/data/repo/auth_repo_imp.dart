import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:doctor_hunt/app/features/auth/data/service/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp extends AuthRepo {
  new({required this.firebaseAuthService});
  final FirebaseAuthService firebaseAuthService;

  @override
  Future<Either<Errors, void>> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuthService.signup(
        name: name,
        email: email,
        password: password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(Errors(errorMessage: e.code));
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await firebaseAuthService.login(
        email: email,
        password: password,
      );

      if (!result.isAdmin) return left(Errors(errorMessage: 'Error type'));
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(Errors(errorMessage: e.code));
    }
  }

  @override
  Future<Either<Errors, UserCredential>> signWithGoogle() async {
    try {
      final result = await firebaseAuthService.signWithGoogle();
      return right(result);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, void>> resetPassword({required String email}) async {
    try {
      await firebaseAuthService.resetPassword(email: email);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(Errors(errorMessage: e.code));
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, void>> signOut() async {
    try {
      await firebaseAuthService.signOut();
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }
}
