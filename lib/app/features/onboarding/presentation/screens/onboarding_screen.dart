import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/onboarding/presentation/widgets/background_circle.dart';
import 'package:doctor_hunt/app/features/onboarding/presentation/widgets/skip_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
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
      body: Stack(
        children: [
          BackgroundCircle(isRight: isRight),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 90),
                Image.asset(image),
                SizedBox(height: 90),
                Text(title, style: context.medium28),
                SizedBox(height: 5),
                Text(
                  context.t.onboardingDescription,
                  style: context.regular14Secondary,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                CustomButton(
                  onPressed: onPressed,
                  size: Size(295, 55),
                  child: Text(
                    isEnd ? context.t.getStarted : context.t.next,
                    style: context.medium18White,
                  ),
                ),
                if (!isEnd) SkipButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
