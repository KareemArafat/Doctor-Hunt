import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_error_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/home/presentation/controller/top_rated_doctors_cubit/top_rated_doctors_cubit.dart';
import 'package:doctor_hunt/app/shared/widgets/doctors_list_card.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllTopRatedDoctorsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          CustomAppBar(title: t.topRatedDoctors),
          Expanded(
            child: BlocBuilder<TopRatedDoctorsCubit, TopRatedDoctorsState>(
              builder: (context, state) {
                if (state is TopRatedDoctorsSuccess) {
                  final doctorsList = state.doctorsList;
                  return doctorsList.isNotEmpty
                      ? ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          itemCount: doctorsList.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) =>
                              DoctorsListCard(doctorModel: doctorsList[index]),
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
        ],
      ),
    );
  }
}
