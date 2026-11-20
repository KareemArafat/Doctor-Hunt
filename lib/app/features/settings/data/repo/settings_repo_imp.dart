import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/app/core/utils/errors.dart';
import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:doctor_hunt/app/features/settings/data/repo/settings_repo.dart';
import 'package:doctor_hunt/app/features/settings/data/service/firebase_settings_service.dart';

class SettingsRepoImp extends SettingsRepo {
  final FirebaseSettingsService settingsFirebaseService;
  new({required this.settingsFirebaseService});

  @override
  Future<Either<Errors, void>> editProfile({
    required UserModel userModel,
  }) async {
    try {
      await settingsFirebaseService.editProfile(userModel: userModel);
      await SharedPref.setUserModel(userModel);
      return right(null);
    } catch (e) {
      return left(Errors(errorMessage: e.toString()));
    }
  }
}
