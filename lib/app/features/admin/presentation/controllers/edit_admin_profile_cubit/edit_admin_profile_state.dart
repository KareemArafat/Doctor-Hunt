part of 'edit_admin_profile_cubit.dart';

sealed class EditAdminProfileState {}

final class EditAdminProfileInitial extends EditAdminProfileState {}

final class EditAdminProfileLoading extends EditAdminProfileState {}

final class EditAdminProfileSuccess extends EditAdminProfileState {}

final class EditAdminProfileFailure extends EditAdminProfileState {
  final String message;
  new({required this.message});
}
