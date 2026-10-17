import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/home/data/repo/home_repo.dart';
import 'package:doctor_hunt/app/features/home/data/service/firebase_home_service.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';

class HomeRepoImp extends HomeRepo {
  final FirebaseHomeService firebaseHomeService;
  new({required this.firebaseHomeService});

  @override
  Future<Either<Errors, List<DoctorModel>>> getDoctorsBySpecialty({
    required String specialty,
  }) async {
    try {
      final result = await firebaseHomeService.getDoctorsBySpecialty(
        specialty: specialty,
      );
      return right(result);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, List<DoctorModel>>> getPopularDoctors() async {
    try {
      final result = await firebaseHomeService.getPopularDoctors();
      return right(result);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, List<DoctorModel>>> getTopRatedDoctors() async {
    try {
      final result = await firebaseHomeService.getTopRatedDoctors();
      return right(result);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }
}
