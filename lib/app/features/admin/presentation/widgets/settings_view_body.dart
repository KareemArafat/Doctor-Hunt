import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/list_item.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageAppBar(title: t.settings),
        SizedBox(height: 20),
        ShadowCard(
          height: 88,
          padding: 16,
          child: Row(
            children: [
              Image.asset(
                AppImages.assetsImagesOnboarding2,
                height: 55,
                width: 55,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(t.administrator, style: context.bold16),
                  SizedBox(height: 2),
                  Text(t.adminAccount, style: context.regular12Secondary),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
        ShadowCard(
          padding: 0,
          child: Column(
            children: [
              ListItem(
                prefix: Icon(
                  Icons.manage_accounts,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.adminProfile,
                description: t.adminProfileDescription,
              ),
              Divider(
                color: AppColors.disableItems,
                height: 1,
                indent: 16,
                endIndent: 16,
              ),
              ListItem(
                prefix: Icon(
                  Icons.lock_reset,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.changePassword,
                description: t.changePasswordDescription,
              ),
              Divider(
                color: AppColors.disableItems,
                height: 1,
                indent: 16,
                endIndent: 16,
              ),
              ListItem(
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
                    color: AppColors.iconsBackground,
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
          backgroundColor: AppColors.errorItemsBackground.withValues(
            alpha: 0.3,
          ),
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
