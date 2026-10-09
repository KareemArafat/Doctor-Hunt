import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/user_model_cubit/user_model_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/photo_view.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminHomeAppBar extends StatelessWidget {
  const new({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: context.bold18),
        Spacer(),
        Image.asset(AppImages.assetsIconsNotification, height: 35, width: 35),
        SizedBox(width: 2),
        BlocBuilder<UserModelCubit, UserModelState>(
          builder: (context, state) {
            final userModel = context.read<UserModelCubit>().userModel;
            return GestureDetector(
              onTap: () => EditAdminProfileRoute().push(context),
              child: PhotoView(
                name: userModel.name,
                radius: 30,
                textStyle: context.bold12White,
              ),
            );
          },
        ),
      ],
    );
  }
}
