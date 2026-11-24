import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/features/favorite/data/repo/fav_repo.dart';
import 'package:doctor_hunt/app/features/favorite/data/services/firebase_fav_service.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';

class FavRepoImp extends FavRepo {
  FavRepoImp({required this.firebaseFavService});

  final FirebaseFavService firebaseFavService;

  @override
  Future<Either<Errors, void>> addFav({required String doctorId}) async {
    try {
      await firebaseFavService.addFav(doctorId: doctorId);
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, void>> removeFav({required String doctorId}) async {
    try {
      await firebaseFavService.removeFav(doctorId: doctorId);
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Errors, bool>> checkFav({required String doctorId}) async {
    try {
      final result = await firebaseFavService.checkFav(doctorId: doctorId);
      return right(result);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }

  @override
  Stream<Either<Errors, List<DoctorModel>>> getAllFav() {
    return firebaseFavService.getAllFav().transform(
      StreamTransformer<
        List<DoctorModel>,
        Either<Errors, List<DoctorModel>>
      >.fromHandlers(
        handleData: (data, sink) {
          sink.add(right(data));
        },
        handleError: (error, stackTrace, sink) {
          sink.add(left(Errors(errorMessage: error.toString())));
        },
      ),
    );
  }
}
