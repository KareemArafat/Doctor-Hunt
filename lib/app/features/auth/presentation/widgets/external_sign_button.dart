import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class ExternalSignButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 22,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(AppImages.assetsIconsGoogle, height: 18, width: 18),
            SizedBox(width: 12),
            Text(context.t.google, style: context.light16Secondary),
          ],
        ),
      ),
    );
  }
}
