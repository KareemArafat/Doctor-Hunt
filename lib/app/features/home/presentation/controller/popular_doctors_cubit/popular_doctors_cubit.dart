import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/home/data/repo/home_repo.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'popular_doctors_state.dart';

class PopularDoctorsCubit extends Cubit<PopularDoctorsState> {
  PopularDoctorsCubit() : super(PopularDoctorsInitial());

  final HomeRepo _homeRepo = getIt<HomeRepo>();

  Future<void> getPopularDoctors() async {
    emit(PopularDoctorsLoading());

    final result = await _homeRepo.getPopularDoctors();

    result.fold(
      (l) => emit(PopularDoctorsFailure(message: l.errorMessage)),
      (r) => emit(PopularDoctorsSuccess(doctorsList: r)),
    );
  }
}
