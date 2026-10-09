import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/user_model_cubit/user_model_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/admin_home_app_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/admin_lists_item.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/photo_view.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdminHomeAppBar(title: t.settings),
        SizedBox(height: 20),
        BlocBuilder<UserModelCubit, UserModelState>(
          builder: (context, state) {
            UserModel userModel = context.read<UserModelCubit>().userModel;
            return ShadowCard(
              horizontalPadding: 16,
              verticalPadding: 16,
              child: Row(
                children: [
                  PhotoView(name: userModel.name, radius: 50),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(userModel.name, style: context.bold16),
                      SizedBox(height: 2),
                      Text(userModel.email, style: context.regular12Secondary),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 24),
        ShadowCard(
          child: Column(
            children: [
              AdminListsItem(
                prefix: Icon(
                  Icons.manage_accounts,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.adminProfile,
                description: t.adminProfileDescription,
                onTap: () => EditAdminProfileRoute().push(context),
              ),
              Divider(
                color: AppColors.disableItemsBackground,
                height: 1,
                indent: 16,
                endIndent: 16,
              ),
              AdminListsItem(
                prefix: Icon(
                  Icons.lock_reset,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.changePassword,
                description: t.changePasswordDescription,
              ),
              Divider(
                color: AppColors.disableItemsBackground,
                height: 1,
                indent: 16,
                endIndent: 16,
              ),
              AdminListsItem(
                prefix: Icon(
                  Icons.info_outlined,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.appInformation,
                description: t.buildVersion,
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.itemsBackground,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text('V10.1.1', style: context.semiBold12Secondary),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        CustomButton(
          onPressed: () {},
          backgroundColor: AppColors.errorItemsBackground,
          size: Size(double.infinity, 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout, color: AppColors.errorItems, size: 16),
              SizedBox(width: 4),
              Text(t.Logout, style: context.semiBold14ErrorItems),
            ],
          ),
        ),
      ],
    );
  }
}
