import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const new({
    super.key,
    required this.onPressed,
    required this.child,
    this.clickableColor = AppColors.primary,
    this.size = const Size(0, 0),
    this.borderRadius = 100,
  });
  final Function() onPressed;
  final Widget child;
  final Color clickableColor;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        foregroundColor: clickableColor,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        minimumSize: size,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
