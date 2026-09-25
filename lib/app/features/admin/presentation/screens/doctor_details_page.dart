import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctor_image_view.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/list_item.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class DoctorDetailsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomePageAppBar(title: t.doctorDetails, isMainPage: false),
          SizedBox(height: 50),
          DoctorImageView(
            image: AppImages.assetsImagesOnboarding1,
            imageIcon: AppImages.assetsIconsCheck,
          ),
          SizedBox(height: 12),
          Text('kareem', style: context.bold24),
          Text('description', style: context.medium14),
          SizedBox(height: 50),
          ShadowCard(
            child: Column(
              children: [
                ListItem(
                  prefix: Image.asset(
                    AppImages.assetsIconsSpecialty,
                    color: AppColors.primary,
                  ),
                  title: t.specialty,
                  description: 'description',
                  trailing: SizedBox(),
                ),
                Divider(
                  color: AppColors.disableItems,
                  height: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                ListItem(
                  prefix: Image.asset(AppImages.assetsIconsStatus),
                  title: t.accountStatus,
                  description: 'description',
                  trailing: SizedBox(),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          CustomButton(
            onPressed: () {},
            size: Size(350, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit, size: 18),
                SizedBox(width: 8),
                Text(t.editDoctor, style: context.semiBold16White),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
