import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctor_image_view.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class EditAdminProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<EditAdminProfilePage> createState() => _EditAdminProfilePageState();
}

class _EditAdminProfilePageState extends State<EditAdminProfilePage> {
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: 'Admin');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomePageAppBar(title: t.editProfile, isMainPage: false),
          SizedBox(height: 50),
          DoctorImageView(
            image: AppImages.assetsImagesOnboarding1,
            imageIcon: AppImages.assetsIconsCamera,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(t.tapPhotoToChange, style: context.medium12Primary),
          ),
          SizedBox(height: 30),
          Text(t.fullName, style: context.medium12),
          SizedBox(height: 8),
          CustomTextField(
            controller: nameController,
            prefixIcon: Image.asset(
              AppImages.assetsIconsProfile,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 20),
          Text(t.emailAddress, style: context.medium12),
          SizedBox(height: 8),
          CustomTextField(
            isReadOnly: true,
            text: 'example@gmail.com',
            prefixIcon: Icon(Icons.email, color: AppColors.primary),
          ),
          Spacer(),
          CustomButton(
            onPressed: () {},
            size: Size(350, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check, size: 20),
                SizedBox(width: 8),
                Text(t.saveChanges, style: context.semiBold14White),
              ],
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
