import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_error_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_list_item.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/empty_doctors_list.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_search_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/admin_home_page_app_bar.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    String totalDoctors = '--';
    String activeDoctors = '--';

    return BlocConsumer<AllDoctorsCubit, AllDoctorsState>(
      listener: (context, state) {
        if (state is AllDoctorsSuccess) {
          final totalList = state.doctorsList;
          final activeList = totalList.where((e) => e.status == t.active);
          totalDoctors = '${totalList.length}';
          activeDoctors = '${activeList.length}';
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            AdminHomePageAppBar(title: t.doctors),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ShadowCard(
                    height: 75,
                    horizontalPadding: 12,
                    verticalPadding: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(t.totalDoctors, style: context.regular11Secondary),
                        SizedBox(height: 4),
                        Text(totalDoctors, style: context.bold18),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ShadowCard(
                    height: 75,
                    horizontalPadding: 12,
                    verticalPadding: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t.activeDoctors,
                          style: context.regular11Secondary,
                        ),
                        SizedBox(height: 4),
                        Text(activeDoctors, style: context.bold18),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            DoctorsSearchBar(),
            SizedBox(height: 8),
            Expanded(
              child: state is AllDoctorsSuccess
                  ? state.doctorsList.isEmpty
                        ? EmptyDoctorsList()
                        : ListView.builder(
                            itemCount: state.doctorsList.length,
                            itemBuilder: (context, index) => DoctorsListItem(
                              doctorModel: state.doctorsList[index],
                            ),
                          )
                  : state is AllDoctorsFailure
                  ? CustomErrorWidget(errorMessage: state.errorMessage)
                  : CustomLoadingWidget(size: -2, color: AppColors.primary),
            ),
          ],
        );
      },
    );
  }
}
