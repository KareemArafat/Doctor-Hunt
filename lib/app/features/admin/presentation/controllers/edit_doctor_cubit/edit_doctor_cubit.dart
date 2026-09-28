import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'edit_doctor_state.dart';

class EditDoctorCubit extends Cubit<EditDoctorState> {
  EditDoctorCubit() : super(EditDoctorInitial());

  final AdminRepo adminRepo = getIt<AdminRepo>();

  Future<void> editDoctor({required DoctorModel doctorModel}) async {
    emit(EditDoctorLoading());
    final result = await adminRepo.editDoctor(doctorModel: doctorModel);
    result.fold(
      (l) => emit(EditDoctorFailure(errorMessage: l.errorMessage)),
      (r) => emit(EditDoctorSuccess()),
    );
  }

  Future<void> deleteDoctor({required String id}) async {
    emit(DeleteDoctorLoading());
    final result = await adminRepo.deleteDoctor(id: id);
    result.fold(
      (l) => emit(DeleteDoctorFailure(errorMessage: l.errorMessage)),
      (r) => emit(DeleteDoctorSuccess()),
    );
  }
}
