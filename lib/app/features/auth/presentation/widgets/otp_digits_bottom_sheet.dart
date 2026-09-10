import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpDigitsBottomSheet extends StatelessWidget {
  const new({super.key, required this.onPressed});
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
          Text(context.t.enterDigitsTittle, style: context.medium24),
          SizedBox(height: 12),
          Text(
            context.t.enterDigitsDescription,
            style: context.regular14Secondary,
          ),
          SizedBox(height: 36),
          Center(
            child: Pinput(
              onSubmitted: (value) {},
              separatorBuilder: (index) => const SizedBox(width: 16),
              defaultPinTheme: PinTheme(
                width: 55,
                height: 55,
                textStyle: context.bold26Primary,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: AppColors.disableItems),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
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
