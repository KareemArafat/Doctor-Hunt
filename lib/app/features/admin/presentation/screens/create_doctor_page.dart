import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/specialty_drop_menu.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class CreateDoctorPage extends StatelessWidget {
  new({super.key});
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<String> valueListenable = ValueNotifier('select');

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageAppBar(title: t.createDoctor, isMainPage: false),
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                AppImages.assetsIconsAddPhoto,
                height: 96,
                width: 96,
              ),
            ),
            SizedBox(height: 10),
            Center(child: Text(t.addPhoto, style: context.medium12Primary)),
            SizedBox(height: 30),
            Text(t.doctorName, style: context.medium12),
            SizedBox(height: 8),
            CustomTextField(
              controller: TextEditingController(),
              hintText: t.doctorNameExample,
            ),
            SizedBox(height: 20),
            Text(t.medicalSpecialty, style: context.medium12),
            SizedBox(height: 8),
            SpecialtyDropMenu(valueListenable: valueListenable),
            SizedBox(height: 44),
            CustomButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              size: Size(350, 50),
              child: Text(t.createDoctor, style: context.semiBold16White),
            ),
          ],
        ),
      ),
    );
  }
}
