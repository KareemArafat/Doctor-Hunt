import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const new({
    super.key,
    required this.onPressed,
    required this.size,
    required this.child,
  });

  final Function() onPressed;
  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: size,
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
      child: child,
    );
  }
}
