part of 'top_rated_doctors_cubit.dart';

sealed class TopRatedDoctorsState {}

final class TopRatedDoctorsInitial extends TopRatedDoctorsState {}

final class TopRatedDoctorsLoading extends TopRatedDoctorsState {}

final class TopRatedDoctorsSuccess extends TopRatedDoctorsState {
  final List<DoctorModel> doctorsList;
  new({required this.doctorsList});
}

final class TopRatedDoctorsFailure extends TopRatedDoctorsState {
  final String message;
  new({required this.message});
}
