import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:doctor_hunt/app/features/settings/data/repo/settings_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'edit_admin_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileInitial());

  final SettingsRepo _settingsRepo = getIt<SettingsRepo>();

  Future<void> editProfile({required UserModel userModel}) async {
    emit(EditProfileLoading());
    final result = await _settingsRepo.editProfile(userModel: userModel);
    result.fold(
      (l) => emit(EditProfileFailure(message: l.errorMessage)),
      (r) => emit(EditProfileSuccess(userModel: userModel)),
    );
  }
}
