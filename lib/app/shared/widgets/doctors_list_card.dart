import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorsListCard extends StatelessWidget {
  const new({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      horizontalPadding: 12,
      verticalPadding: 12,
      child: Row(
        children: [
          PhotoView(name: doctorModel.name, radius: 80),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      doctorModel.name,
                      style: context.semiBold18,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Icon(
                      Icons.favorite_rounded,
                      size: 20,
                      color: AppColors.fav,
                    ),
                  ],
                ),
                Text(doctorModel.specialty, style: context.light14Secondary),
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: doctorModel.rating > index
                            ? AppColors.rateStar
                            : AppColors.secondary,
                      ),
                    ),
                    Spacer(),
                    Text('${doctorModel.rating}', style: context.semiBold14),
                    SizedBox(width: 6),
                    Text(
                      '(${doctorModel.reviews})',
                      style: context.medium14Secondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
