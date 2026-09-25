import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';

abstract class AdminRepo {
  Future<Either<Errors, List<DoctorModel>>> getAllDoctors();

  Future<Either<Errors, void>> createDoctor({required DoctorModel doctorModel});

  Future<Either<Errors, void>> editDoctor({required DoctorModel doctorModel});

  Future<Either<Errors, void>> deleteDoctor({required String id});
}
