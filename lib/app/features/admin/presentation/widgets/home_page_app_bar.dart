import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget {
  const new({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: Center(child: Text('A', style: context.bold14White)),
        ),
        Center(child: Text(context.t.doctors, style: context.bold18)),
        Image.asset(AppImages.assetsIconsNotification, height: 36, width: 36),
      ],
    );
  }
}
