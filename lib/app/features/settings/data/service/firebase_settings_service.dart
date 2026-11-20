import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseSettingsService {
  Future<void> editProfile({required UserModel userModel}) async {
    await FirebaseAuth.instance.currentUser!.updateProfile(
      displayName: userModel.name,
      photoURL: userModel.photo,
    );
  }
}
