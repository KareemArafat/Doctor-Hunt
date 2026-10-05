import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'user_model_state.dart';

class UserModelCubit extends Cubit<UserModelState> {
  UserModelCubit() : super(UserModelInitial());

  late UserModel userModel;

  Future<void> getUserModel() async {
    userModel = await SharedPref.getUserModel();
  }

  Future<void> updateUserModel() async {}
}
