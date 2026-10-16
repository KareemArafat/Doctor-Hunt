import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/home/presentation/widgets/doctors_list_card.dart';
import 'package:flutter/material.dart';

class SeeAllDoctorsPage extends StatelessWidget {
  const new({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          CustomAppBar(title: title),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 30),
              itemCount: 20,
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index) => DoctorsListCard(),
            ),
          ),
        ],
      ),
    );
  }
}
