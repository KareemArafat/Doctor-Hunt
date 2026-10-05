import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'edit_admin_profile_state.dart';

class EditAdminProfileCubit extends Cubit<EditAdminProfileState> {
  EditAdminProfileCubit() : super(EditAdminProfileInitial());

  final AdminRepo _adminRepo = getIt<AdminRepo>();

  Future<void> editAdminProfile({required UserModel userModel}) async {
    emit(EditAdminProfileLoading());
    final result = await _adminRepo.editAdminProfile(userModel: userModel);
    result.fold(
      (l) => emit(EditAdminProfileFailure(message: l.errorMessage)),
      (r) => emit(EditAdminProfileSuccess()),
    );
  }
}
