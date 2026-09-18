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

  static Future<void> setName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
  }

  static Future<String> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name') ?? '';
  }
}
