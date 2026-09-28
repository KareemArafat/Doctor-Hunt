part of 'edit_doctor_cubit.dart';

sealed class EditDoctorState {}

final class EditDoctorInitial extends EditDoctorState {}

final class EditDoctorLoading extends EditDoctorState {}

final class EditDoctorSuccess extends EditDoctorState {}

final class EditDoctorFailure extends EditDoctorState {
  final String errorMessage;
  new({required this.errorMessage});
}

final class DeleteDoctorLoading extends EditDoctorState {}

final class DeleteDoctorSuccess extends EditDoctorState {}

final class DeleteDoctorFailure extends EditDoctorState {
  final String errorMessage;
  new({required this.errorMessage});
}
