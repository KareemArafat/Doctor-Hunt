part of 'all_doctors_cubit.dart';

sealed class AllDoctorsState {}

final class AllDoctorsInitial extends AllDoctorsState {}

final class AllDoctorsLoading extends AllDoctorsState {}

final class AllDoctorsSuccess extends AllDoctorsState {
  final List<DoctorModel> doctorsList;
  new({required this.doctorsList});
}

final class AllDoctorsFailure extends AllDoctorsState {
  final String errorMessage;
  new({required this.errorMessage});
}
