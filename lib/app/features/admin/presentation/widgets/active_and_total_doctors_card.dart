import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveAndTotalDoctorsCard extends StatelessWidget {
  const new({super.key, required this.title, required this.number});
  final String title;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.cardBorder),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 2),
              color: AppColors.black.withValues(alpha: 0.05),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: context.regular11Secondary),
            SizedBox(height: 4),
            Text('$number', style: context.bold18),
          ],
        ),
      ),
    );
  }
}
