import 'package:doctor_hunt/app/core/router/routes_names.dart';
import 'package:doctor_hunt/app/core/utils/app_images.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/main/presentation/widgets/background_circle.dart';
import 'package:doctor_hunt/app/features/main/presentation/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboarding3 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          BackgroundCircle(isRight: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(flex: 2),
                Image.asset(AppImages.onboarding3),
                Spacer(flex: 2),
                Text('Easy Appointments', style: AppStyles.style28),
                SizedBox(height: 5),
                Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  style: AppStyles.style14,
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                CustomButton(
                  onPressed: () => context.go(RoutesNames.chooseRule),
                  size: Size(295, 55),
                  child: Text('Get Started', style: AppStyles.style18),
                ),
                SkipButton(),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
