import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  const new({super.key, required this.size, this.color = AppColors.white});
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color,
      padding: EdgeInsets.zero,
      strokeWidth: 3,
      strokeAlign: size,
    );
  }
}
