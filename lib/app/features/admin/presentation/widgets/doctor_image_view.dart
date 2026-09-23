import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class DoctorImageView extends StatelessWidget {
  const new({
    super.key,
    required this.image,
    required this.imageIcon,
    this.onTap,
  });
  final String image;
  final String imageIcon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: 112,
              width: 112,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white, width: 3),
                shape: BoxShape.circle,
              ),
              child: Image.asset(image),
            ),
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
                child: Image.asset(imageIcon, height: 16, width: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
