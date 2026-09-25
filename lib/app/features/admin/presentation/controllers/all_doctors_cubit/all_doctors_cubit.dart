import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'all_doctors_state.dart';

class AllDoctorsCubit extends Cubit<AllDoctorsState> {
  AllDoctorsCubit() : super(AllDoctorsInitial());

  final AdminRepo adminRepo = getIt<AdminRepo>();

  Future<void> getAllDoctors() async {
    emit(AllDoctorsLoading());
    final result = await adminRepo.getAllDoctors();
    result.fold(
      (l) => emit(AllDoctorsFailure(errorMessage: l.errorMessage)),
      (r) => emit(AllDoctorsSuccess(doctorsList: r)),
    );
  }
}
