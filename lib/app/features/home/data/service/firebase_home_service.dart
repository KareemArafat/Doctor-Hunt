import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';

class FirebaseHomeService {
  final doctorsCollection = FirebaseFirestore.instance.collection('doctors');

  Future<List<DoctorModel>> getDoctorsBySpecialty({
    required String specialty,
  }) async {
    final result = await doctorsCollection
        .where('specialty', isEqualTo: specialty)
        .get();
    return result.docs
        .map((e) => DoctorModel.fromFirebase(e.data(), e.id))
        .toList();
  }

  Future<List<DoctorModel>> getPopularDoctors() async {
    final result = await doctorsCollection
        .where('isPopular', isEqualTo: true)
        .limit(10)
        .get();
    return result.docs
        .map((e) => DoctorModel.fromFirebase(e.data(), e.id))
        .toList();
  }

  Future<List<DoctorModel>> getTopRatedDoctors() async {
    final result = await doctorsCollection
        .orderBy('rating', descending: true)
        .limit(10)
        .get();
    return result.docs
        .map((e) => DoctorModel.fromFirebase(e.data(), e.id))
        .toList();
  }
}
