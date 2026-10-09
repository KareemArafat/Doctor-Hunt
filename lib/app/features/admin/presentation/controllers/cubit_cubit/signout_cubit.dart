import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'signout_state.dart';

class SignoutCubit extends Cubit<SignoutState> {
  SignoutCubit() : super(SignoutInitial());

  final AuthRepo _authRepo = getIt<AuthRepo>();

  Future<void> signout() async {
    emit(SignoutLoading());
    final result = await _authRepo.signOut();
    result.fold((l) => emit(SignoutFailure(message: l.errorMessage)), (r) {
      SharedPref.signOutClear();
      emit(SignoutSuccess());
    });
  }
}
