import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: AppColors.secondaryColor),
      onPressed: () {},
      child: Text('Skip', style: AppStyles.style14),
    );
  }
}
