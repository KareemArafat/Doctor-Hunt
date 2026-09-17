import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  const new({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: AppColors.white,
      padding: EdgeInsets.zero,
      strokeWidth: 4,
      strokeAlign: size,
    );
  }
}
