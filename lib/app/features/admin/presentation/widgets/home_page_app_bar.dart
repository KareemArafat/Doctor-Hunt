import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageAppBar extends StatelessWidget {
  const new({super.key, required this.title, this.isMainPage = true});
  final String title;
  final bool isMainPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 36,
          width: 36,
          child: isMainPage
              ? Center(
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text('A', style: context.bold14White)),
                  ),
                )
              : GestureDetector(
                  onTap: () => context.pop(),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.secondary,
                    size: 24,
                  ),
                ),
        ),
        Text(title, style: context.bold18),
        SizedBox(
          height: 36,
          width: 36,
          child: isMainPage
              ? SizedBox(
                  child: Image.asset(
                    AppImages.assetsIconsNotification,
                    height: 36,
                    width: 36,
                  ),
                )
              : null,
        ),
      ],
    );
  }
}
