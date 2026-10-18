import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SpecialtyCard extends StatelessWidget {
  const new({
    super.key,
    required this.color,
    required this.icon,
    required this.specialty,
  });
  final Gradient color;
  final String icon;
  final String specialty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => SpecialtyDoctorsRoute(specialty: specialty).push(context),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: color,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -40,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.white.withValues(alpha: 0.08),
              ),
            ),
            Positioned(
              right: -40,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.white.withValues(alpha: 0.08),
              ),
            ),
            Center(child: Image.asset(icon, height: 30, width: 30)),
          ],
        ),
      ),
    );
  }
}
