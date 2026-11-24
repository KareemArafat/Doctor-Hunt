import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFavService {
  CollectionReference favCollection() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('favorites');
  }

  Future<void> addFav({required String doctorId}) async {
    await favCollection().doc(doctorId).set({'doctorId': doctorId});
  }

  Future<void> removeFav({required String doctorId}) async {
    await favCollection().doc(doctorId).delete();
  }

  Future<bool> checkFav({required String doctorId}) async {
    final doc = await favCollection().doc(doctorId).get();
    return doc.exists;
  }

  Stream<List<DoctorModel>> getAllFav() {
    return favCollection().snapshots().asyncMap((snapshot) async {
      final doctorIds = snapshot.docs.map((doc) => doc.id).toList();

      if (doctorIds.isEmpty) return [];

      final doctorsSnapshot = await FirebaseFirestore.instance
          .collection('doctors')
          .where(FieldPath.documentId, whereIn: doctorIds)
          .get();

      return doctorsSnapshot.docs
          .map((doc) => DoctorModel.fromFirebase(data: doc.data(), id: doc.id))
          .toList();
    });
  }
}
