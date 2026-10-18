part of 'popular_doctors_cubit.dart';

sealed class PopularDoctorsState {}

final class PopularDoctorsInitial extends PopularDoctorsState {}

final class PopularDoctorsLoading extends PopularDoctorsState {}

final class PopularDoctorsSuccess extends PopularDoctorsState {
  final List<DoctorModel> doctorsList;
  new({required this.doctorsList});
}

final class PopularDoctorsFailure extends PopularDoctorsState {
  final String message;
  new({required this.message});
}
