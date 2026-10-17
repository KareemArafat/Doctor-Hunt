import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class PopularDoctorsCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      width: 180,
      child: Column(
        children: [
          Image.asset(
            AppImages.assetsImagesOnboarding1,
            height: 180,
            width: 180,
            fit: BoxFit.cover,
          ),
          Spacer(flex: 2),
          Text(
            'Dr. Fillerup Grab',
            style: context.semiBold18,
            overflow: TextOverflow.ellipsis,
          ),
          Text('Medicine Specialist', style: context.light12Secondary),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star_rate_rounded,
                size: 18,
                color: 4 > index ? AppColors.rateStar : AppColors.secondary,
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
