import 'package:doctor_hunt/app/core/extensions/custom_snack_bar.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/validators.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/settings/presentation/controllers/change_password_cubit/change_password_cubit.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordBottomSheet extends StatefulWidget {
  const new({super.key});

  @override
  State<ChangePasswordBottomSheet> createState() =>
      _ChangePasswordBottomSheetState();
}

class _ChangePasswordBottomSheetState extends State<ChangePasswordBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(t.changePassword, style: context.medium24),
              SizedBox(height: 24),
              Text(t.currentPassword, style: context.medium12),
              SizedBox(height: 4),
              CustomTextField(
                controller: currentPasswordController,
                isPassword: true,
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.primary),
                validator: (value) => Validators.validatePassword(value),
              ),
              SizedBox(height: 18),
              Text(t.newPassword, style: context.medium12),
              SizedBox(height: 4),
              CustomTextField(
                controller: newPasswordController,
                isPassword: true,
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.primary),
                validator: (value) => Validators.validatePassword(value),
              ),
              SizedBox(height: 18),
              Text(t.confirmPassword, style: context.medium12),
              SizedBox(height: 4),
              CustomTextField(
                controller: confirmPasswordController,
                isPassword: true,
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.primary),
                validator: (value) {
                  if (value != newPasswordController.text) {
                    return t.passwordsDoNotMatch;
                  }
                  return Validators.validatePassword(value);
                },
              ),
              SizedBox(height: 30),
              BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
                listener: (context, state) {
                  if (state is ChangePasswordSuccess) {
                    Navigator.of(context).pop(true);
                    context.showCustomSnackBar(
                      message: t.passwordChangedSuccessfully,
                      status: SnackBarStatus.success,
                    );
                  } else if (state is ChangePasswordFailure) {
                    context.showCustomSnackBar(message: state.message);
                  }
                },
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: CustomTextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          size: Size(0, 50),
                          borderRadius: 8,
                          child: Text(t.cancel, style: context.medium16Primary),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          onPressed: () {
                            if (state is ChangePasswordLoading) return;
                            if (formKey.currentState!.validate()) {
                              context
                                  .read<ChangePasswordCubit>()
                                  .changePassword(
                                    currentPassword:
                                        currentPasswordController.text,
                                    newPassword: newPasswordController.text,
                                  );
                            }
                          },
                          size: Size(0, 50),
                          child: state is ChangePasswordLoading
                              ? CustomLoadingWidget(size: -2)
                              : Text(
                                  t.updatePassword,
                                  style: context.semiBold14White,
                                ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
