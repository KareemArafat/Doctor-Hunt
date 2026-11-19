import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_list_tile.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/logout_confirm.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(t.settings, style: context.bold18),
        ),
        SizedBox(height: 20),
        ShadowCard(
          horizontalPadding: 16,
          verticalPadding: 16,
          child: Row(
            children: [
              PhotoView(name: 'userModel.name', radius: 50),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('userModel.name', style: context.bold16),
                  SizedBox(height: 2),
                  Text('userModel.email', style: context.regular12Secondary),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
        ShadowCard(
          child: Column(
            children: [
              CustomListTile(
                prefix: Icon(
                  Icons.manage_accounts,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.editProfile,
                onTap: () => EditAdminProfileRoute().push(context),
              ),
              Divider(
                color: AppColors.disableItemsBackground,
                height: 1,
                indent: 16,
                endIndent: 16,
              ),
              CustomListTile(
                prefix: Icon(
                  Icons.privacy_tip_outlined,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.privacyPolicy,
                onTap: () => PrivacyPolicyRoute().push(context),
              ),
              Divider(
                color: AppColors.disableItemsBackground,
                height: 1,
                indent: 16,
                endIndent: 16,
              ),
              CustomListTile(
                prefix: Icon(
                  Icons.info_outlined,
                  size: 20,
                  color: AppColors.primary,
                ),
                title: t.buildVersion,
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
        SizedBox(height: 30),
        CustomButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => LogoutConfirm(),
          ),
          backgroundColor: AppColors.errorItemsBackground,
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
