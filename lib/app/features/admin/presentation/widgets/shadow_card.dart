import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ShadowCard extends StatelessWidget {
  const new({
    super.key,
    required this.child,
    this.horizontalPadding,
    this.verticalPadding,
    this.height,
  });
  final Widget child;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0,
        vertical: verticalPadding ?? 0,
      ),
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
      child: child,
    );
  }
}
