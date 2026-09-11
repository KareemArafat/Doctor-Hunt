import 'package:doctor_hunt/app/features/admin/presentation/widgets/active_and_total_doctors_card.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_search_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/empty_doctors_list.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Column(
        children: [
          HomePageAppBar(title: context.t.doctors),
          SizedBox(height: 20),
          Row(
            children: [
              ActiveAndTotalDoctorsCard(
                title: context.t.activeDoctors,
                number: 1000,
              ),
              SizedBox(width: 12),
              ActiveAndTotalDoctorsCard(
                title: context.t.totalDoctors,
                number: 2000,
              ),
            ],
          ),
          SizedBox(height: 8),
          DoctorsSearchBar(),
          EmptyDoctorsList(),
        ],
      ),
    );
  }
}
