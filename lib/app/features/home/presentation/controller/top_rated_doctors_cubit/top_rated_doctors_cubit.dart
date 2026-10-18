import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/home/data/repo/home_repo.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'top_rated_doctors_state.dart';

class TopRatedDoctorsCubit extends Cubit<TopRatedDoctorsState> {
  TopRatedDoctorsCubit() : super(TopRatedDoctorsInitial());

  final HomeRepo _homeRepo = getIt<HomeRepo>();

  Future<void> getTopRatedDoctors() async {
    emit(TopRatedDoctorsLoading());

    final result = await _homeRepo.getTopRatedDoctors();

    result.fold(
      (l) => emit(TopRatedDoctorsFailure(message: l.errorMessage)),
      (r) => emit(TopRatedDoctorsSuccess(doctorsList: r)),
    );
  }
}
