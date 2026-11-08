import 'package:doctor_hunt/generated/strings.g.dart';

abstract class Validators {
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) return t.thisFieldIsRequired;
    if (value.trim().length < 3) {
      return t.invalidName;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return t.thisFieldIsRequired;
    if (value.length < 8) {
      return t.invalidPassword;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) return t.thisFieldIsRequired;
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value.trim())) {
      return t.invalidEmail;
    }
    return null;
  }
}
