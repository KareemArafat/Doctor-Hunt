part of 'edit_admin_profile_cubit.dart';

sealed class EditProfileState {}

final class EditProfileInitial extends EditProfileState {}

final class EditProfileLoading extends EditProfileState {}

final class EditProfileSuccess extends EditProfileState {
  EditProfileSuccess({required this.userModel});

  final UserModel userModel;
}

final class EditProfileFailure extends EditProfileState {
  final String message;
  new({required this.message});
}
