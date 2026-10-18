import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_error_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/features/home/presentation/controller/popular_doctors_cubit/popular_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/home/presentation/controller/top_rated_doctors_cubit/top_rated_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/home_upper_section.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/popular_doctors_card.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/see_all_button.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/specialty_card.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/top_rated_doctors_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final specialtiesCards = [
      SpecialtyCard(
        color: AppColors.dentistryCard,
        icon: AppImages.assetsIconsDentistry,
        specialty: 'Dentistry',
      ),
      SpecialtyCard(
        color: AppColors.cardiologyCard,
        icon: AppImages.assetsIconsCardiology,
        specialty: 'Cardiology',
      ),
      SpecialtyCard(
        color: AppColors.dermatologyCard,
        icon: AppImages.assetsIconsDermatology,
        specialty: 'Dermatology',
      ),
      SpecialtyCard(
        color: AppColors.ophthalmologyCard,
        icon: AppImages.assetsIconsOphthalmology,
        specialty: 'Ophthalmology',
      ),
      SpecialtyCard(
        color: AppColors.pediatricsCard,
        icon: AppImages.assetsIconsPediatrics,
        specialty: 'Pediatrics',
      ),
      SpecialtyCard(
        color: AppColors.orthopedicsCard,
        icon: AppImages.assetsIconsOrthopedics,
        specialty: 'Orthopedics',
      ),
      SpecialtyCard(
        color: AppColors.neurologyCard,
        icon: AppImages.assetsIconsNeurology,
        specialty: 'Neurology',
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
                SeeAllButton(
                  onTap: () => SeeAllPopularDoctorsRoute(
                    $extra: context.read<PopularDoctorsCubit>(),
                  ).push(context),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 260,
            child: BlocBuilder<PopularDoctorsCubit, PopularDoctorsState>(
              builder: (context, state) {
                if (state is PopularDoctorsSuccess) {
                  final doctorsList = state.doctorsList;
                  return doctorsList.isNotEmpty
                      ? ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          itemCount: doctorsList.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemBuilder: (context, index) => PopularDoctorsCard(
                            doctorModel: doctorsList[index],
                          ),
                        )
                      : Center(
                          child: Text(
                            t.noPopularDoctors,
                            style: context.medium16,
                            textAlign: TextAlign.center,
                          ),
                        );
                } else if (state is PopularDoctorsFailure) {
                  return Center(
                    child: CustomErrorWidget(message: state.message),
                  );
                }
                return Center(
                  child: CustomLoadingWidget(size: 0, color: AppColors.primary),
                );
              },
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.topRatedDoctors, style: context.semiBold18),
                SeeAllButton(
                  onTap: () => SeeAllTopRatedDoctorsRoute(
                    $extra: context.read<TopRatedDoctorsCubit>(),
                  ).push(context),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 130,
            child: BlocBuilder<TopRatedDoctorsCubit, TopRatedDoctorsState>(
              builder: (context, state) {
                if (state is TopRatedDoctorsSuccess) {
                  final doctorsList = state.doctorsList;
                  return doctorsList.isNotEmpty
                      ? ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          itemCount: doctorsList.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemBuilder: (context, index) => TopRatedDoctorsCard(
                            doctorModel: doctorsList[index],
                          ),
                        )
                      : Center(
                          child: Text(
                            t.noTopRatedDoctors,
                            style: context.medium16,
                            textAlign: TextAlign.center,
                          ),
                        );
                } else if (state is TopRatedDoctorsFailure) {
                  return Center(
                    child: CustomErrorWidget(message: state.message),
                  );
                }
                return Center(
                  child: CustomLoadingWidget(size: 0, color: AppColors.primary),
                );
              },
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
