import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class PopularDoctorsCard extends StatelessWidget {
  const new({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      width: 180,
      child: Column(
        children: [
          PhotoView(name: doctorModel.name, radius: 180, isAvatar: false),
          Spacer(flex: 2),
          Text(
            doctorModel.name,
            style: context.semiBold18,
            overflow: TextOverflow.ellipsis,
          ),
          Text(doctorModel.specialty, style: context.light12Secondary),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star_rate_rounded,
                size: 18,
                color: doctorModel.rating > index
                    ? AppColors.rateStar
                    : AppColors.secondary,
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
