import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

BottomNavigationBarItem bottomBarItem({required IconData icon}) {
  return BottomNavigationBarItem(
    activeIcon: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary,
      ),
      child: Icon(icon, color: AppColors.white, size: 20),
    ),
    icon: Icon(icon, color: AppColors.secondary, size: 20),
    label: '',
  );
}
