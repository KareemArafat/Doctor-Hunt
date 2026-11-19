import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: t.privacyPolicy),
          SizedBox(height: 20),
          Text(t.privacyPolicyTitle, style: context.bold18),
          Spacer(),
          Text(t.privacyPolicyDescription, style: context.regular14Secondary),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 5),
                child: Icon(Icons.circle, size: 10, color: AppColors.primary),
              ),
              Flexible(
                child: Text(
                  t.privacyPolicyPoint1,
                  style: context.regular14Secondary,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 5),
                child: Icon(Icons.circle, size: 10, color: AppColors.primary),
              ),
              Flexible(
                child: Text(
                  t.privacyPolicyPoint2,
                  style: context.regular14Secondary,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 5),
                child: Icon(Icons.circle, size: 10, color: AppColors.primary),
              ),
              Flexible(
                child: Text(
                  t.privacyPolicyPoint3,
                  style: context.regular14Secondary,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 5),
                child: Icon(Icons.circle, size: 10, color: AppColors.primary),
              ),
              Flexible(
                child: Text(
                  t.privacyPolicyPoint4,
                  style: context.regular14Secondary,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(t.privacyPolicyFooter, style: context.regular14Secondary),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
