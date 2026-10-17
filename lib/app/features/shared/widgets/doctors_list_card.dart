import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorsListCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      horizontalPadding: 12,
      verticalPadding: 12,
      child: Row(
        children: [
          Image.asset(AppImages.assetsImagesOnboarding1, height: 80, width: 80),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr. Fillerup Grab',
                      style: context.semiBold18,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Icon(
                      Icons.favorite_rounded,
                      size: 20,
                      color: AppColors.fav,
                    ),
                  ],
                ),
                Text('Medicine Specialist', style: context.light14Secondary),
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: 4 > index
                            ? AppColors.rateStar
                            : AppColors.secondary,
                      ),
                    ),
                    Spacer(),
                    Text('2.5', style: context.semiBold14),
                    SizedBox(width: 6),
                    Text('(1900)', style: context.medium14Secondary),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
