import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class EmptyDoctorsList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.assetsIconsAddDoctors, height: 80, width: 80),
          SizedBox(height: 20),
          Text(context.t.noDoctorsFound, style: context.bold16),
          SizedBox(height: 8),
          Text(
            context.t.noDoctorsFoundDescription,
            style: context.regular12Secondary,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
