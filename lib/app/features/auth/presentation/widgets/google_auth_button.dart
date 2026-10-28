import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class GoogleAuthButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      height: 55,
      width: 160,
      radius: 12,
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.assetsIconsGoogle, height: 18, width: 18),
          const SizedBox(width: 5),
          Text(t.google, style: context.light16Secondary),
        ],
      ),
    );
  }
}
