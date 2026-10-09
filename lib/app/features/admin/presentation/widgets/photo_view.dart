import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class PhotoView extends StatelessWidget {
  const new({
    super.key,
    required this.name,
    required this.radius,
    this.photo,
    this.icon,
    this.onTap,
    this.textStyle,
  });
  final String name;
  final String? photo;
  final String? icon;
  final Function()? onTap;
  final double radius;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    String getFirstLitter() {
      final words = name.toUpperCase().trim().split(RegExp(r'\s+'));
      return words.length >= 2 ? '${words[0][0]}${words[1][0]}' : words[0][0];
    }

    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: radius,
              width: radius,
              decoration: BoxDecoration(
                color: AppColors.primary,
                border: icon != null
                    ? Border.all(color: AppColors.white, width: 3)
                    : null,
                shape: BoxShape.circle,
              ),
              child: photo != null
                  ? Image.asset(photo!)
                  : Center(
                      child: Text(
                        getFirstLitter(),
                        style: textStyle ?? context.bold20White,
                      ),
                    ),
            ),
            if (icon != null)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    border: Border.all(color: AppColors.white, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(icon!, height: 16, width: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
