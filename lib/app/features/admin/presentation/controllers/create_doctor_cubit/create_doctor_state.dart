part of 'create_doctor_cubit.dart';

sealed class CreateDoctorState {}

final class CreateDoctorInitial extends CreateDoctorState {}

final class CreateDoctorLoading extends CreateDoctorState {}

final class CreateDoctorSuccess extends CreateDoctorState {}

final class CreateDoctorFailure extends CreateDoctorState {
  final String errorMessage;
  new({required this.errorMessage});
}
