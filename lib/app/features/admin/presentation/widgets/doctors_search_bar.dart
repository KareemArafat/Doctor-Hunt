import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class DoctorsSearchBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
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
      child: TextField(
        cursorColor: AppColors.black,
        style: context.regular12,
        decoration: InputDecoration(
          hintText: context.t.searchDoctors,
          hintStyle: context.regular12Secondary,
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          prefixIcon: Image.asset(
            AppImages.assetsIconsSearch,
            height: 16,
            width: 16,
            color: AppColors.secondary,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
