import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/change_doctor_status.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/specialty_drop_menu.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class EditDoctorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<EditDoctorPage> createState() => _EditDoctorPageState();
}

class _EditDoctorPageState extends State<EditDoctorPage> {
  late TextEditingController nameController;
  late TextEditingController stateController;
  late ValueNotifier<String> valueListenable;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: 'Kareem Arafat');
    stateController = TextEditingController(text: 'Active');
    valueListenable = ValueNotifier('Dermatology');
  }

  @override
  void dispose() {
    nameController.dispose();
    stateController.dispose();
    valueListenable.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomePageAppBar(title: t.editDoctor, isMainPage: false),
          SizedBox(height: 50),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: 112,
                    width: 112,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.white, width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(AppImages.assetsImagesOnboarding1),
                  ),
                  Positioned(
                    right: -2,
                    bottom: -6,
                    child: Image.asset(AppImages.assetsIconsChangePhoto),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(t.tapPhotoToChange, style: context.medium12Primary),
          ),
          SizedBox(height: 30),
          Text(t.doctorName, style: context.medium12),
          SizedBox(height: 8),
          CustomTextField(
            controller: nameController,
            prefixIcon: Image.asset(
              AppImages.assetsIconsProfile,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 20),
          Text(t.medicalSpecialty, style: context.medium12),
          SizedBox(height: 8),
          SpecialtyDropMenu(
            valueListenable: valueListenable,
            prefixIcon: Image.asset(
              AppImages.assetsIconsSpecialty,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 20),
          Text(t.doctorStatus, style: context.medium12),
          SizedBox(height: 8),
          ChangeDoctorStatus(statusController: stateController),
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
          Center(
            child: CustomTextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.delete, size: 18, color: AppColors.errorItems),
                  SizedBox(width: 8),
                  Text(t.deleteDoctor, style: context.semiBold12ErrorItems),
                ],
              ),
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
