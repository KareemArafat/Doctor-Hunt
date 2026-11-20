import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/settings/data/repo/settings_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(ChangePasswordInitial());

  final SettingsRepo _settingsRepo = getIt<SettingsRepo>();

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    emit(ChangePasswordLoading());
    final result = await _settingsRepo.changePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
    if (isClosed) return;
    result.fold(
      (l) => emit(ChangePasswordFailure(message: l.errorMessage)),
      (r) => emit(ChangePasswordSuccess()),
    );
  }
}
