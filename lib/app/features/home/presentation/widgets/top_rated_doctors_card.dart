import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class TopRatedDoctorsCard extends StatelessWidget {
  const new({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      horizontalPadding: 10,
      verticalPadding: 10,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_rounded, size: 14, color: AppColors.fav),
              Spacer(),
              Icon(
                Icons.star_rate_rounded,
                size: 16,
                color: AppColors.rateStar,
              ),
              SizedBox(width: 2),
              Text('${doctorModel.rating}', style: context.semiBold10),
            ],
          ),
          PhotoView(name: doctorModel.name, radius: 55),
          Text(
            doctorModel.name,
            style: context.semiBold10,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
