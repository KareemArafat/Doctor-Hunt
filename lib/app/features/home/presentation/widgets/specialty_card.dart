import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SpecialtyCard extends StatelessWidget {
  const new({super.key, required this.color, required this.icon});
  final Gradient color;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Center(child: Image.asset(icon, height: 35, width: 35)),
        ],
      ),
    );
  }
}
