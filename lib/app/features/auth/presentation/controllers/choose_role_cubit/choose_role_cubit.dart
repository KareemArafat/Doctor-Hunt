import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'choose_role_state.dart';

class ChooseRoleCubit extends Cubit<ChooseRoleState> {
  ChooseRoleCubit() : super(ChooseRoleState(isAdmin: null));

  Future<void> setRole({required bool isAdmin}) async {
    if (isAdmin) {
      await SharedPref.setIsAdmin(isAdmin);
      emit(ChooseRoleState(isAdmin: isAdmin));
    } else {
      await SharedPref.setIsAdmin(isAdmin);
      emit(ChooseRoleState(isAdmin: isAdmin));
    }
  }

  void validateRole() => emit(ChooseRoleState(showError: true));
}
