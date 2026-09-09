import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/main/presentation/widgets/background_circle.dart';
import 'package:doctor_hunt/app/features/main/presentation/widgets/skip_button.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          BackgroundCircle(isRight: true),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(flex: 2),
                Image.asset(AppImages.assetsImagesOnboarding2),
                Spacer(flex: 2),
                Text('Choose Best Doctors', style: AppStyles.style28),
                SizedBox(height: 5),
                Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  style: AppStyles.style14,
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                CustomButton(
                  onPressed: () => Onboarding3Route().push(context),
                  size: Size(295, 55),
                  child: Text('Next', style: AppStyles.style18),
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
