import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoogleAuthButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<LoginCubit>().loginWithGoogle(),
      borderRadius: BorderRadius.circular(12),
      splashColor: AppColors.black.withValues(alpha: 0.1),
      highlightColor: AppColors.black.withValues(alpha: 0.05),
      child: Ink(
        height: 55,
        width: 160,
        padding: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(AppImages.assetsIconsGoogle, height: 18, width: 18),
            const SizedBox(width: 5),
            Text(t.google, style: context.light16Secondary),
          ],
        ),
      ),
    );
  }
}
