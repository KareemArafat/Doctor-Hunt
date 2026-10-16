import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/home_upper_section.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/popular_doctors_card.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/see_all_button.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/specialty_card.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/top_rated_doctors_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final specialtiesCards = [
      SpecialtyCard(
        color: AppColors.dentistryCard,
        icon: AppImages.assetsIconsDentistry,
      ),
      SpecialtyCard(
        color: AppColors.cardiologyCard,
        icon: AppImages.assetsIconsCardiology,
      ),
      SpecialtyCard(
        color: AppColors.dermatologyCard,
        icon: AppImages.assetsIconsDermatology,
      ),
      SpecialtyCard(
        color: AppColors.ophthalmologyCard,
        icon: AppImages.assetsIconsOphthalmology,
      ),
      SpecialtyCard(
        color: AppColors.pediatricsCard,
        icon: AppImages.assetsIconsPediatrics,
      ),
      SpecialtyCard(
        color: AppColors.orthopedicsCard,
        icon: AppImages.assetsIconsOrthopedics,
      ),
      SpecialtyCard(
        color: AppColors.neurologyCard,
        icon: AppImages.assetsIconsNeurology,
      ),
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          HomeUpperSection(),
          SizedBox(height: 30),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: specialtiesCards.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) => specialtiesCards[index],
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.popularDoctors, style: context.semiBold18),
                SeeAllButton(title: t.popularDoctors),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 260,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 6,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) => PopularDoctorsCard(),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.topRatedDoctors, style: context.semiBold18),
                SeeAllButton(title: t.topRatedDoctors),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 6,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) => TopRatedDoctorsCard(),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
