import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Either<Errors, UserCredential>> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Errors, UserCredential>> login({
    required String email,
    required String password,
  });

  Future<Either<Errors, UserCredential>> signWithGoogle();

  Future<Either<Errors, void>> resetPassword({required String email});
}
