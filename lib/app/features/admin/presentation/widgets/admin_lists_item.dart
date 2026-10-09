import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class AdminListsItem extends StatelessWidget {
  const new({
    super.key,
    required this.prefix,
    required this.title,
    required this.description,
    this.trailing,
    this.onTap,
  });
  final Widget prefix;
  final String title;
  final String description;
  final Widget? trailing;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.itemsBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: prefix,
            ),
            SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: context.semiBold14),
                  Text(description, style: context.regular12Secondary),
                ],
              ),
            ),
            SizedBox(width: 6),
            trailing ??
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.secondary,
                  size: 16,
                ),
          ],
        ),
      ),
    );
  }
}
