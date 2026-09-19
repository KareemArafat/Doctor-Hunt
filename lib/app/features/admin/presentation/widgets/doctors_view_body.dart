import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_search_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/empty_doctors_list.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class DoctorsViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageAppBar(title: t.doctors),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: ShadowCard(
                height: 75,
                padding: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.activeDoctors, style: context.regular11Secondary),
                    SizedBox(height: 4),
                    Text('1000', style: context.bold18),
                  ],
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ShadowCard(
                height: 75,
                padding: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.totalDoctors, style: context.regular11Secondary),
                    SizedBox(height: 4),
                    Text('2000', style: context.bold18),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        DoctorsSearchBar(),
        EmptyDoctorsList(),
      ],
    );
  }
}
