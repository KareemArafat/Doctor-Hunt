import 'package:flutter/material.dart';

abstract class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;
  static const transparent = Colors.transparent;

  static const primary = Color(0XFF0EBE7F);
  static const secondary = Color(0XFF677294);

  static const mainBackground = Color(0XFFF5F5F5);
  static const greenShadow = Color(0XFF0EBE7E);
  static const blueShadow = Color(0XFF61CEFF);

  static const itemsBackground = Color(0XFFECFAF5);
  static const disableItemsBackground = Color(0XFFE6ECEA);

  static const errorItems = Color(0XFFD12121);
  static const errorItemsBackground = Color(0XFFFFECEC);

  static const cardBorder = Color(0XFFF1F5F9);

  static const cardiologyCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0XFFea5459), Color(0XFFf7ba2c)],
  );
  static const dermatologyCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0xFF392d69), Color(0xFFb57bee)],
  );

  static const pediatricsCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0xFFab2aed), Color(0xFFf2c2ee)],
  );

  static const orthopedicsCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0xFF1f7ea1), Color(0xFF6ff7e8)],
  );

  static const neurologyCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0xFFb429f9), Color(0xFF26c5f3)],
  );

  static const dentistryCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0xFF30c5d2), Color(0xFFaefb2a)],
  );

  static const ophthalmologyCard = LinearGradient(
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    colors: [Color(0xFF0061ff), Color(0xFF60efff)],
  );
}
