import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'doctors_by_specialty_state.dart';

class DoctorsBySpecialtyCubit extends Cubit<DoctorsBySpecialtyState> {
  DoctorsBySpecialtyCubit() : super(DoctorsBySpecialtyInitial());
}
