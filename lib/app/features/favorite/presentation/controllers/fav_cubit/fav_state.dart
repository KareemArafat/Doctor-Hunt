
part of 'fav_cubit.dart';

sealed class FavState {
  final List<DoctorModel> doctorsList;
  final Set<String> loadingDoctors;

  const FavState({
    this.doctorsList = const [],
    this.loadingDoctors = const {},
  });
}

final class FavInitial extends FavState {}

final class FavLoading extends FavState {
  const FavLoading({
    super.doctorsList,
    super.loadingDoctors,
  });
}

final class FavSuccess extends FavState {
  const FavSuccess({
    required super.doctorsList,
    super.loadingDoctors,
  });
}

final class FavFailure extends FavState {
  final String message;

  const FavFailure({
    required this.message,
    super.doctorsList,
    super.loadingDoctors,
  });
}
