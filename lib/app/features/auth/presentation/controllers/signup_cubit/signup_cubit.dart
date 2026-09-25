import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  final AuthRepo authRepo = getIt<AuthRepo>();

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignupLoading());

    final result = await authRepo.signup(
      name: name,
      email: email,
      password: password,
    );

    result.fold(
      (l) => emit(SignupFailure(errorMessage: l.errorMessage)),
      (r) => emit(SignupSuccess()),
    );
  }
}
