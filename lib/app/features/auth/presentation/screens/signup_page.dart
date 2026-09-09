import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/external_sign_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Join us to start searching', style: AppStyles.style25),
          Text(
            'You can search course, apply course and find scholarship for abroad studies',
            style: AppStyles.style14.copyWith(color: AppColors.secondaryColor),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Spacer(),
          ExternalSignButton(),
              Container(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
