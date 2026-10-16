import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_search_bar.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/specialty_card.dart';
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

    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi Handwerker!', style: context.light20White),
                    Text(t.findYourDoctor, style: context.bold26White),
                  ],
                ),
                Image.asset(
                  AppImages.assetsImagesOnboarding1,
                  height: 60,
                  width: 60,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DoctorsSearchBar(),
          ),
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
        ],
      ),
    );
  }
}
