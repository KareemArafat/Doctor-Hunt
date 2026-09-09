import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundCircle extends StatelessWidget {
  const new({super.key, required this.isRight});
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      left: isRight ? 175 : -104,
      child: Container(
        height: 342,
        width: 342,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
