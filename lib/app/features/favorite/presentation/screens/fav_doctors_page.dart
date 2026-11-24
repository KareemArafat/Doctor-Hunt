import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_error_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/empty_doctors_list.dart';
import 'package:doctor_hunt/app/features/favorite/presentation/controllers/fav_cubit/fav_cubit.dart';
import 'package:doctor_hunt/app/features/favorite/presentation/widgets/fav_doctors_card.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavDoctorsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(t.favoriteDoctors, style: context.bold18),
        ),
        SizedBox(height: 20),
        Expanded(
          child: BlocBuilder<FavCubit, FavState>(
            builder: (context, state) {
              if (state is FavSuccess) {
                if (state.doctorsList.isEmpty) return EmptyDoctorsList();
                return GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  itemCount: state.doctorsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 200,
                  ),
                  itemBuilder: (context, index) =>
                      FavDoctorsCard(doctorModel: state.doctorsList[index]),
                );
              }
              if (state is FavFailure) {
                return Center(child: CustomErrorWidget(message: state.message));
              }
              return Center(
                child: CustomLoadingWidget(size: 0, color: AppColors.primary),
              );
            },
          ),
        ),
      ],
    );
  }
}
