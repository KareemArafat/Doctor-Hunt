import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: AppColors.secondary),
      onPressed: () => ChooseRuleRoute().go(context),
      child: Text(context.t.skip, style: context.regular14Secondary),
    );
  }
}
