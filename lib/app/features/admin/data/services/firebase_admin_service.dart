import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAdminService {
  Future<List<DoctorModel>> getAllDoctors() async {
    final result = await FirebaseFirestore.instance.collection('doctors').get();
    final doctors = result.docs.map((doc) {
      return DoctorModel.fromFirebase(doc.data(), doc.id);
    }).toList();
    return doctors;
  }

  Future<void> createDoctor({required DoctorModel doctorModel}) async {
    await FirebaseFirestore.instance
        .collection('doctors')
        .add(doctorModel.toFirebase());
  }

  Future<void> editDoctor({required DoctorModel doctorModel}) async {
    await FirebaseFirestore.instance
        .collection('doctors')
        .doc(doctorModel.id)
        .update(doctorModel.toFirebase());
  }

  Future<void> deleteDoctor({required String id}) async {
    await FirebaseFirestore.instance.collection('doctors').doc(id).delete();
  }

  Future<void> editAdminProfile({required UserModel userModel}) async {
    await FirebaseAuth.instance.currentUser!.updateProfile(
      displayName: userModel.name,
      photoURL: userModel.photo,
    );
  }
}
