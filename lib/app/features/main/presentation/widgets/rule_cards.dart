import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:flutter/material.dart';

class RuleCards extends StatefulWidget {
  const new({super.key});

  @override
  State<RuleCards> createState() => _RuleCardsState();
}

class _RuleCardsState extends State<RuleCards> {
  bool isPatient = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () => isPatient ? null : setState(() => isPatient = true),
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isPatient
                      ? AppColors.activeCard
                      : AppColors.disableCard,
                  border: Border.all(
                    color: isPatient
                        ? AppColors.activeItems
                        : AppColors.disableItems,
                    width: 2,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: isPatient
                            ? AppColors.disableCard
                            : AppColors.disableItems,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        AppImages.assetsIconsPatient,
                        height: 25,
                        width: 20,
                        color: isPatient
                            ? AppColors.activeItems
                            : AppColors.secondaryColor,
                      ),
                    ),
                    SizedBox(width: 16),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Patient', style: AppStyles.style20),
                          Text(
                            'Find doctors, book appointments,and manage your medical records.',
                            style: AppStyles.style14.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isPatient)
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check_circle,
                    size: 25,
                    color: AppColors.activeItems,
                  ),
                ),
              ),
          ],
        ),

        SizedBox(height: 16),
        Stack(
          children: [
            GestureDetector(
              onTap: () =>
                  !isPatient ? null : setState(() => isPatient = false),
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: !isPatient
                      ? AppColors.activeCard
                      : AppColors.disableCard,
                  border: Border.all(
                    color: !isPatient
                        ? AppColors.activeItems
                        : AppColors.disableItems,
                    width: 2,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: !isPatient
                            ? AppColors.disableCard
                            : AppColors.disableItems,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        AppImages.assetsIconsAdmin,
                        height: 25,
                        width: 20,
                        color: !isPatient
                            ? AppColors.activeItems
                            : AppColors.secondaryColor,
                      ),
                    ),
                    SizedBox(width: 16),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Admin', style: AppStyles.style20),
                          Text(
                            'Manage doctors, appointments,users, and the platform.',
                            style: AppStyles.style14.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!isPatient)
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check_circle,
                    size: 25,
                    color: AppColors.activeItems,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
