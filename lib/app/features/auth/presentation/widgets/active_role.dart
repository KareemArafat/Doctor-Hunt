import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveRole extends StatelessWidget {
  const new({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.activeCard,
            border: Border.all(color: AppColors.activeItems, width: 2),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                decoration: BoxDecoration(
                  color: AppColors.disableCard,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  image,
                  height: 25,
                  width: 20,
                  color: AppColors.activeItems,
                ),
              ),
              SizedBox(width: 16),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.semiBold20),
                    Text(description, style: context.regular14Secondary),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Icon(
            Icons.check_circle,
            size: 25,
            color: AppColors.activeItems,
          ),
        ),
      ],
    );
  }
}
