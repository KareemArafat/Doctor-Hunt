part of 'doctors_by_specialty_cubit.dart';

sealed class DoctorsBySpecialtyState {}

final class DoctorsBySpecialtyInitial extends DoctorsBySpecialtyState {}

final class DoctorsBySpecialtyLoading extends DoctorsBySpecialtyState {}

final class DoctorsBySpecialtySuccess extends DoctorsBySpecialtyState {
  final List<DoctorModel> doctorsList;
  new({required this.doctorsList});
}

final class DoctorsBySpecialtyFailure extends DoctorsBySpecialtyState {
  final String message;
  new({required this.message});
}
