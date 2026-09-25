import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const new({
    super.key,
    required this.onPressed,
    required this.size,
    required this.child,
    this.radius = 10,
    this.backgroundColor = AppColors.primary,
  });

  final Function() onPressed;
  final Size size;
  final Widget child;
  final double radius;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: size,
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        overlayColor: AppColors.black.withValues(alpha: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(radius),
        ),
      ),
      child: child,
    );
  }
}
