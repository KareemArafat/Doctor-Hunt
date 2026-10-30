import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Errors, void>> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Errors, UserModel>> login({
    required String email,
    required String password,
  });

  Future<Either<Errors, UserModel>> signWithGoogle();

  Future<Either<Errors, void>> resetPassword({required String email});

  Future<Either<Errors, void>> signOut();
}
