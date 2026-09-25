import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo.dart';
import 'package:doctor_hunt/app/features/admin/data/services/firebase_admin_service.dart';

class AdminRepoImp extends AdminRepo {
  final FirebaseAdminService firebaseAdminService;
  new({required this.firebaseAdminService});

  @override
  Future<Either<Errors, List<DoctorModel>>> getAllDoctors() async {
    try {
      final result = await firebaseAdminService.getAllDoctors();
      return right(result);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, void>> createDoctor({
    required DoctorModel doctorModel,
  }) async {
    try {
      await firebaseAdminService.createDoctor(doctorModel: doctorModel);
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, void>> editDoctor({
    required DoctorModel doctorModel,
  }) async {
    try {
      await firebaseAdminService.editDoctor(doctorModel: doctorModel);
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, void>> deleteDoctor({required String id}) async {
    try {
      await firebaseAdminService.deleteDoctor(id: id);
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }
}
