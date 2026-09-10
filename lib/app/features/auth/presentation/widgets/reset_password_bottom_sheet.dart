import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const new({
    super.key,
    required this.newPasswordController,
    required this.confirmPasswordController,
    required this.onPressed,
  });
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: AppColors.secondary,
            radius: BorderRadius.circular(6),
            thickness: 5,
            height: 8,
            indent: 100,
            endIndent: 100,
          ),
          SizedBox(height: 55),
          Text(context.t.resetPasswordTittle, style: context.medium24),
          SizedBox(height: 12),
          Text(
            context.t.resetPasswordDescription,
            style: context.regular14Secondary,
          ),
          SizedBox(height: 36),
          CustomTextField(
            controller: newPasswordController,
            hintText: context.t.newPassword,
            isPassword: true,
          ),
          SizedBox(height: 18),
          CustomTextField(
            controller: confirmPasswordController,
            hintText: context.t.reEnterPassword,
            isPassword: true,
          ),
          SizedBox(height: 30),
          Center(
            child: CustomButton(
              onPressed: onPressed,
              size: Size(295, 55),
              child: Text(context.t.kContinue, style: context.medium18White),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
