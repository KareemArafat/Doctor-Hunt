import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(t.seeAll, style: context.light12Secondary),
        SizedBox(width: 2),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 12,
          color: AppColors.secondary,
        ),
      ],
    );
  }
}
