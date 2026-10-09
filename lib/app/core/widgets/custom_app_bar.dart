import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const new({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          size: Size(40, 40),
          backgroundColor: AppColors.white,
          withShadow: false,
          onPressed: () => context.pop(),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
            size: 20,
          ),
        ),
        SizedBox(width: 20),
        Text(title, style: context.bold18),
      ],
    );
  }
}
