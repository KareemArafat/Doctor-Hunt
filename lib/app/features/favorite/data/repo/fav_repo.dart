import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';

abstract class FavRepo {
  Future<Either<Errors, void>> addFav({required String doctorId});

  Future<Either<Errors, void>> removeFav({required String doctorId});

  Future<Either<Errors, bool>> checkFav({required String doctorId});

  Stream<Either<Errors, List<DoctorModel>>> getAllFav();
}
