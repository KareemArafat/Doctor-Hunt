import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_doctor_state.dart';

class EditDoctorCubit extends Cubit<EditDoctorState> {
  EditDoctorCubit() : super(EditDoctorInitial());
}
