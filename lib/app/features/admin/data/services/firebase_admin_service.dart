import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';

class FirebaseAdminService {
  Future<List<DoctorModel>> getAllDoctors() async {
    final result = await FirebaseFirestore.instance.collection('doctors').get();
    final doctors = result.docs.map((doc) {
      return DoctorModel.fromFireBase(doc.data(), doc.id);
    }).toList();
    return doctors;
  }

  Future<void> createDoctor({required DoctorModel doctorModel}) async {
    await FirebaseFirestore.instance
        .collection('doctors')
        .add(doctorModel.toFireBase());
  }

  Future<void> editDoctor({required DoctorModel doctorModel}) async {
    await FirebaseFirestore.instance
        .collection('doctors')
        .doc(doctorModel.id)
        .update(doctorModel.toFireBase());
  }

  Future<void> deleteDoctor({required String id}) async {
    await FirebaseFirestore.instance.collection('doctors').doc(id).delete();
  }
}
