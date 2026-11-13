import 'package:doctor_hunt/app/core/utils/get_it.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  final AuthRepo authRepo = getIt<AuthRepo>();

  Future<void> forgetPassword({required String email}) async {
    emit(ForgotPasswordLoading());
    final result = await authRepo.forgotPassword(email: email);
    result.fold(
      (l) => emit(ForgotPasswordFailure(message: l.errorMessage)),
      (r) => emit(ForgotPasswordSuccess()),
    );
  }
}
