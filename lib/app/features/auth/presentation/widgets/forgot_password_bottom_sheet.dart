import 'package:doctor_hunt/app/core/extensions/custom_snack_bar.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/validators.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controllers/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordBottomSheet extends StatefulWidget {
  const new({super.key});

  @override
  State<ForgotPasswordBottomSheet> createState() =>
      _ForgotPasswordBottomSheetState();
}

class _ForgotPasswordBottomSheetState extends State<ForgotPasswordBottomSheet> {
  final controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: AppColors.secondary,
                radius: BorderRadius.circular(6),
                thickness: 5,
                height: 8,
                indent: 100,
                endIndent: 100,
              ),
              SizedBox(height: 55),
              Text(t.forgotPassword, style: context.medium24),
              SizedBox(height: 12),
              Text(
                t.forgotPasswordDescription,
                style: context.regular14Secondary,
              ),
              SizedBox(height: 36),
              CustomTextField(
                controller: controller,
                hintText: t.email,
                validator: (value) => Validators.validateEmail(value),
              ),
              SizedBox(height: 30),
              BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
                listener: (context, state) {
                  if (state is ForgotPasswordSuccess) {
                    context.showCustomSnackBar(
                      message: t.resetLinkSentSuccessfully,
                      status: SnackBarStatus.success,
                    );
                    Navigator.pop(context);
                  } else if (state is ForgotPasswordFailure) {
                    context.pop();
                    context.showCustomSnackBar(message: state.message);
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<ForgotPasswordCubit>().forgetPassword(
                          email: controller.text,
                        );
                      }
                    },
                    size: Size(295, 55),
                    child: state is ForgotPasswordLoading
                        ? const CustomLoadingWidget(size: -2)
                        : Text(t.sendResetLink, style: context.medium18White),
                  );
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
