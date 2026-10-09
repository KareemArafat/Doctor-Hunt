import 'dart:convert';

import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPref {
  static Future<void> setIsAdmin(bool isAdmin) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAdmin', isAdmin);
  }

  static Future<bool> getIsAdmin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAdmin') ?? false;
  }

  static Future<void> setUserModel(UserModel user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', jsonEncode(user.toJson()));
  }

  static Future<UserModel> getUserModel() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> userMap = jsonDecode(
      prefs.getString('user') ?? '',
    );
    return UserModel.fromJson(userMap);
  }

  static Future<void> signOutClear() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('user');
    await prefs.remove('isAdmin');
  }
}
