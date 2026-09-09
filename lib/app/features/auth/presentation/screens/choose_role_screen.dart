import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/rule_cards.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
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
              Text(context.t.appName, style: context.bold24),
              SizedBox(height: 60),
              Text(context.t.chooseRoleTittle, style: context.regular28),
              SizedBox(height: 8),
              Text(
                context.t.chooseRoleDescription,
                style: context.regular14Secondary,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              RuleCards(),
              Spacer(),
              CustomButton(
                onPressed: () {},
                size: Size(350, 55),
                child: Text(context.t.kContinue, style: context.semiBold16White),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
