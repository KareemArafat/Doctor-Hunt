import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';

abstract class HomeRepo {
  Future<Either<Errors, List<DoctorModel>>> getDoctorsBySpecialty({
    required String specialty,
  });

  Future<Either<Errors, List<DoctorModel>>> getPopularDoctors();

  Future<Either<Errors, List<DoctorModel>>> getTopRatedDoctors();
}
