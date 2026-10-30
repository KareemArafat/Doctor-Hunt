import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const new({
    super.key,
    required this.image,
    required this.title,
    this.isRight = false,
    this.isEnd = false,
    required this.onPressed,
  });
  final String image;
  final String title;
  final bool isRight;
  final bool isEnd;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withPadding: false,
      body: Stack(
        children: [
          Positioned(
            top: -20,
            left: !isRight ? -105 : null,
            right: isRight ? -175 : null,
            child: CircleAvatar(
              backgroundColor: AppColors.primary,
              radius: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 2),
                  Image.asset(image, width: 335, height: 335),
                  Spacer(flex: 2),
                  Text(title, style: context.medium28),
                  SizedBox(height: 5),
                  Text(
                    t.onboardingDescription,
                    style: context.regular14Secondary,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  CustomButton(
                    onPressed: onPressed,
                    size: Size(295, 55),
                    child: Text(
                      isEnd ? t.getStarted : t.next,
                      style: context.medium18White,
                    ),
                  ),
                  SizedBox(height: 10),
                  if (!isEnd)
                    CustomTextButton(
                      onPressed: () => ChooseRuleRoute().go(context),
                      child: Text(t.skip, style: context.regular14Secondary),
                    ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
