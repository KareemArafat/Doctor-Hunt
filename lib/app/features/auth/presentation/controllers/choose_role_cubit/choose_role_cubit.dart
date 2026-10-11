import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'choose_role_state.dart';

class ChooseRoleCubit extends Cubit<ChooseRoleState> {
  ChooseRoleCubit() : super(ChooseRoleInitial(isAdmin: null));

  Future<void> chooseRolePatient() async {
    await SharedPref.setIsAdmin(false);
    emit(ChooseRolePatient(isAdmin: false));
  }

  Future<void> chooseRoleAdmin() async {
    await SharedPref.setIsAdmin(true);
    emit(ChooseRoleAdmin(isAdmin: true));
  }
}
