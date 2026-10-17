import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class TopRatedDoctorsCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      horizontalPadding: 10,
      verticalPadding: 10,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_rounded, size: 14, color: AppColors.fav),
              Spacer(),
              Icon(
                Icons.star_rate_rounded,
                size: 16,
                color: AppColors.rateStar,
              ),
              SizedBox(width: 2),
              Text('3', style: context.semiBold10),
            ],
          ),
          ClipOval(
            child: Image.asset(
              AppImages.assetsImagesOnboarding1,
              height: 55,
              width: 55,
            ),
          ),
          Text(
            'Dr. Fillerup Grab',
            style: context.semiBold10,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
