import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'top_rated_doctors_state.dart';

class TopRatedDoctorsCubit extends Cubit<TopRatedDoctorsState> {
  TopRatedDoctorsCubit() : super(TopRatedDoctorsInitial());
}
