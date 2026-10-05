import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String? photo;
  final bool isAdmin;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.photo,
    required this.isAdmin,
  });

  factory UserModel.fromFirebase({
    required UserCredential userCredential,
    required Map<String, dynamic> firestoreData,
  }) {
    return UserModel(
      id: userCredential.user!.uid,
      name: userCredential.user!.displayName ?? t.admin,
      email: userCredential.user!.email!,
      photo: userCredential.user!.photoURL,
      isAdmin: firestoreData['isAdmin'],
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      photo: json['photo'],
      isAdmin: json['isAdmin'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'photo': photo,
      'isAdmin': isAdmin,
    };
  }
}
