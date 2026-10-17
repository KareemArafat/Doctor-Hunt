import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'popular_doctors_state.dart';

class PopularDoctorsCubit extends Cubit<PopularDoctorsState> {
  PopularDoctorsCubit() : super(PopularDoctorsInitial());
}
