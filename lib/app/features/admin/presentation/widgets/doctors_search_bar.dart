import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class DoctorsSearchBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      height: 40,
      padding: 0,
      child: TextField(
        cursorColor: AppColors.black,
        style: context.regular12,
        decoration: InputDecoration(
          hintText: t.searchDoctors,
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
