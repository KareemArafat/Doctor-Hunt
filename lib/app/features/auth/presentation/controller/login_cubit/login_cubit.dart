import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  final AuthRepo authRepo = getIt<AuthRepo>();

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());

    final result = await authRepo.login(email: email, password: password);

    result.fold((l) => emit(LoginFailure(errorMessage: l.errorMessage)), (r) {
      SharedPref.setName(r.user?.displayName ?? '');
      emit(LoginSuccess());
    });
  }

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

    final result = await authRepo.signup(
      name: name,
      email: email,
      password: password,
    );

    result.fold(
      (l) => emit(LoginFailure(errorMessage: l.errorMessage)),
      (r) => emit(LoginSuccess()),
    );
  }
}
