import 'package:doctor_hunt/app/core/extensions/custom_snack_bar.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/settings/presentation/controllers/edit_admin_profile_cubit/edit_admin_profile_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/user_model_cubit/user_model_cubit.dart';
import 'package:doctor_hunt/app/features/settings/presentation/widgets/change_password_bottom_sheet.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/features/auth/data/models/user_model.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  late UserModel userModel;
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    userModel = context.read<UserModelCubit>().userModel;
    nameController = TextEditingController(text: userModel.name);
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: t.editProfile),
            SizedBox(height: 50),
            PhotoView(
              name: userModel.name,
              icon: AppImages.assetsIconsCamera,
              radius: 112,
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
              prefixIcon: Icon(Icons.person, color: AppColors.primary),
            ),
            SizedBox(height: 20),
            Text(t.emailAddress, style: context.medium12),
            SizedBox(height: 8),
            CustomTextField(
              isReadOnly: true,
              text: userModel.email,
              prefixIcon: Icon(Icons.email, color: AppColors.primary),
            ),
            SizedBox(height: 20),
            Text(t.password, style: context.medium12),
            SizedBox(height: 8),
            CustomTextField(
              isReadOnly: true,
              text: '∗∗∗∗∗∗∗∗∗',
              prefixIcon: Icon(Icons.password, color: AppColors.primary),
              suffixIcon: CustomTextButton(
                onPressed: () async => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const ChangePasswordBottomSheet(),
                ),
                child: Text(t.change, style: context.regular12Primary),
              ),
            ),
            SizedBox(height: 50),
            BlocConsumer<EditProfileCubit, EditProfileState>(
              listener: (context, state) {
                if (state is EditProfileSuccess) {
                  context.read<UserModelCubit>().getUserModel();
                  context.showCustomSnackBar(
                    message: t.profileEditedSuccessfully,
                    status: SnackBarStatus.success,
                  );
                } else if (state is EditProfileFailure) {
                  context.showCustomSnackBar(message: state.message);
                }
              },
              builder: (context, state) {
                return CustomButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      final updatedUser = userModel.copyWith(
                        name: nameController.text.trim(),
                      );
                      context.read<EditProfileCubit>().editProfile(
                        userModel: updatedUser,
                      );
                    }
                  },
                  size: Size(350, 50),
                  child: state is EditProfileLoading
                      ? CustomLoadingWidget(size: -2)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check, size: 20),
                            SizedBox(width: 8),
                            Text(t.saveChanges, style: context.semiBold14White),
                          ],
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
