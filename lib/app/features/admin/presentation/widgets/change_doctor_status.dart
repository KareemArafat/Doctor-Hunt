import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class ChangeDoctorStatus extends StatefulWidget {
  const new({super.key, required this.statusController});
  final TextEditingController statusController;

  @override
  State<ChangeDoctorStatus> createState() => _ChangeDoctorStatusState();
}

class _ChangeDoctorStatusState extends State<ChangeDoctorStatus> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      isReadOnly: true,
      controller: widget.statusController,
      prefixIcon: Image.asset(
        AppImages.assetsIconsStatus,
        color: AppColors.primary,
      ),
      suffixIcon: Switch(
        value: widget.statusController.text == t.active,
        padding: EdgeInsets.only(right: 30),
        onChanged: (bool value) => setState(
          () => widget.statusController.text = value ? t.active : t.inactive,
        ),
        activeThumbColor: AppColors.white,
        activeTrackColor: AppColors.primary,
        inactiveThumbColor: AppColors.secondary,
        inactiveTrackColor: AppColors.white,
      ),
    );
  }
}
