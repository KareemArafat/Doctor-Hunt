import 'dart:async';

import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/favorite/data/repo/fav_repo.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit() : super(FavInitial());

  final FavRepo _favRepo = getIt<FavRepo>();
  StreamSubscription? _streamData;

  @override
  Future<void> close() async {
    await _streamData?.cancel();
    return super.close();
  }

  bool isFavorite(String doctorId) =>
      state.doctorsList.any((doctor) => doctor.id == doctorId);

  Future<void> toggleFavorite({required String doctorId}) async {
    if (state.loadingDoctors.contains(doctorId)) return;
    final loading = Set<String>.from(state.loadingDoctors)..add(doctorId);
    emit(FavSuccess(doctorsList: state.doctorsList, loadingDoctors: loading));

    final result = isFavorite(doctorId)
        ? await _favRepo.removeFav(doctorId: doctorId)
        : await _favRepo.addFav(doctorId: doctorId);
    if (isClosed) return;
    final updatedLoading = Set<String>.from(state.loadingDoctors)
      ..remove(doctorId);
    result.fold(
      (l) => emit(
        FavFailure(
          message: l.errorMessage,
          doctorsList: state.doctorsList,
          loadingDoctors: updatedLoading,
        ),
      ),
      (r) => emit(
        FavSuccess(
          doctorsList: state.doctorsList,
          loadingDoctors: updatedLoading,
        ),
      ),
    );
  }

  void getAllFav() {
    if (_streamData != null) return;
    emit(FavLoading());
    _streamData = _favRepo.getAllFav().listen((result) {
      if (isClosed) return;
      result.fold(
        (l) => emit(
          FavFailure(
            message: l.errorMessage,
            doctorsList: state.doctorsList,
            loadingDoctors: state.loadingDoctors,
          ),
        ),
        (r) => emit(
          FavSuccess(doctorsList: r, loadingDoctors: state.loadingDoctors),
        ),
      );
    });
  }
}
