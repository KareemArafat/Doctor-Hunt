import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';

abstract class SettingsRepo {
  Future<Either<Errors, void>> editProfile({required UserModel userModel});
}
