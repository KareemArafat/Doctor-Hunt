import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'create_doctor_state.dart';

class CreateDoctorCubit extends Cubit<CreateDoctorState> {
  CreateDoctorCubit() : super(CreateDoctorInitial());

  final AdminRepo adminRepo = getIt<AdminRepo>();

  Future<void> createDoctor({required DoctorModel doctorModel}) async {
    final result = await adminRepo.createDoctor(doctorModel: doctorModel);

    result.fold(
      (l) => emit(CreateDoctorFailure(errorMessage: l.errorMessage)),
      (r) => emit(CreateDoctorSuccess()),
    );
  }
}
