import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ShadowCard extends StatelessWidget {
  const new({
    super.key,
    required this.child,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
    this.height,
    this.width,
    this.radius = 16,
    this.onTap,
  });
  final Widget child;
  final double horizontalPadding;
  final double verticalPadding;
  final double? height;
  final double? width;
  final double radius;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius),
      splashColor: AppColors.primary.withValues(alpha: 0.1),
      highlightColor: AppColors.primary.withValues(alpha: 0.05),
      child: Ink(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: AppColors.cardBorder),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 2),
              color: AppColors.black.withValues(alpha: 0.05),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
