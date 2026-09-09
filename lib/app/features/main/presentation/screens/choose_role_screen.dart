import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/main/presentation/widgets/rule_cards.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:flutter/material.dart';

class ChooseRoleScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 32),
              Image.asset(AppImages.assetsIconsLogo, height: 70),
              SizedBox(height: 10),
              Text('Doctor Hunt', style: AppStyles.style25),
              SizedBox(height: 60),
              Text('Choose your role', style: AppStyles.style28),
              SizedBox(height: 8),
              Text(
                'The selected role determines the experience and available features.',
                textAlign: TextAlign.center,
                style: AppStyles.style14.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(height: 32),
              RuleCards(),
              Spacer(),
              CustomButton(
                onPressed: () {},
                size: Size(350, 55),
                child: Text('Continue', style: AppStyles.style16),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
