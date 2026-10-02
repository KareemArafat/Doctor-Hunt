import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class DoctorsListItem extends StatelessWidget {
  const new({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => DoctorDetailsRoute($extra: doctorModel).push(context),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ShadowCard(
          horizontalPadding: 14,
          verticalPadding: 18,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  AppImages.assetsImagesOnboarding1,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorModel.name,
                      style: context.bold14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      doctorModel.specialty,
                      style: context.regular11Secondary,
                    ),
                    SizedBox(height: 2),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                      decoration: BoxDecoration(
                        color: doctorModel.status == t.active
                            ? AppColors.iconsBackground
                            : AppColors.errorItems,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: doctorModel.status == t.active
                                ? AppColors.primary
                                : AppColors.errorItems,
                          ),
                          SizedBox(width: 4),
                          Text(
                            doctorModel.status,
                            style: doctorModel.status == t.active
                                ? context.bold11Primary
                                : context.bold11ErrorItems,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
