import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class DoctorStatus extends StatelessWidget {
  const new({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.itemsBackground
            : AppColors.errorItemsBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.circle,
            size: 8,
            color: isActive ? AppColors.primary : AppColors.errorItems,
          ),
          SizedBox(width: 4),
          Text(
            isActive ? t.active : t.inactive,
            style: isActive ? context.bold11Primary : context.bold11ErrorItems,
          ),
        ],
      ),
    );
  }
}
