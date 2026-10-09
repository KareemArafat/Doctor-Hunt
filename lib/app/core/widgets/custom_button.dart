import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const new({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = const Size(350, 50),
    this.radius = 10,
    this.backgroundColor = AppColors.primary,
    this.withShadow = true,
  });

  final Function() onPressed;
  final Widget child;
  final Size size;
  final double radius;
  final Color backgroundColor;
  final bool withShadow;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          if (withShadow)
            BoxShadow(
              color: backgroundColor.withValues(alpha: 0.3),
              offset: const Offset(0, 4),
              blurRadius: 6,
              spreadRadius: -4,
            ),
          if (withShadow)
            BoxShadow(
              color: backgroundColor.withValues(alpha: 0.3),
              offset: const Offset(0, 10),
              blurRadius: 15,
              spreadRadius: -3,
            ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: size,
          foregroundColor: AppColors.white,
          backgroundColor: backgroundColor,
          shadowColor: AppColors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: child,
      ),
    );
  }
}
