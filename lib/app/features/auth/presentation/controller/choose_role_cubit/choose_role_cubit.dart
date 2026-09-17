import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'choose_role_state.dart';

class ChooseRoleCubit extends Cubit<ChooseRoleState> {
  ChooseRoleCubit() : super(ChooseRoleInitial());

  Future<void> chooseRolePatient() async {
    await SharedPref.setIsAdmin(false);
    emit(ChooseRolePatient());
  }

  Future<void> chooseRoleAdmin() async {
    await SharedPref.setIsAdmin(true);
    emit(ChooseRoleAdmin());
  }
}
