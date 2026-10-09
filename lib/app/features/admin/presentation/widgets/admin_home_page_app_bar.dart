import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/user_model_cubit/user_model_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/photo_view.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AdminHomePageAppBar extends StatelessWidget {
  const new({super.key, required this.title, this.isMainPage = true});
  final String title;
  final bool isMainPage;

  @override
  Widget build(BuildContext context) {
   // final userModel = context.read<UserModelCubit>().userModel;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 36,
          width: 36,
          child: isMainPage
              ? PhotoView(
                  name: "userModel.name",
                  radius: 30,
                  textStyle: context.bold14White,
                )
              : GestureDetector(
                  onTap: () => context.pop(),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.secondary,
                    size: 24,
                  ),
                ),
        ),
        Text(title, style: context.bold18),
        SizedBox(
          height: 36,
          width: 36,
          child: isMainPage
              ? SizedBox(
                  child: Image.asset(
                    AppImages.assetsIconsNotification,
                    height: 36,
                    width: 36,
                  ),
                )
              : null,
        ),
      ],
    );
  }
}
