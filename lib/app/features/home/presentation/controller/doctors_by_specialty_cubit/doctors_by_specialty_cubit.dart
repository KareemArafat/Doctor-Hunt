import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/home/data/repo/home_repo.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'doctors_by_specialty_state.dart';

class DoctorsBySpecialtyCubit extends Cubit<DoctorsBySpecialtyState> {
  DoctorsBySpecialtyCubit() : super(DoctorsBySpecialtyInitial());

  final HomeRepo _homeRepo = getIt<HomeRepo>();

  Future<void> getDoctorsBySpecialty({required String specialty}) async {
    emit(DoctorsBySpecialtyLoading());

    final result = await _homeRepo.getDoctorsBySpecialty(specialty: specialty);

    result.fold(
      (l) => emit(DoctorsBySpecialtyFailure(message: l.errorMessage)),
      (r) => emit(DoctorsBySpecialtySuccess(doctorsList: r)),
    );
  }
}
